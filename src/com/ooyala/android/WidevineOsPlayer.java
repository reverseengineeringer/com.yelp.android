package com.ooyala.android;

import android.annotation.TargetApi;
import android.content.Context;
import android.drm.DrmErrorEvent;
import android.drm.DrmEvent;
import android.drm.DrmInfoEvent;
import android.drm.DrmInfoRequest;
import android.drm.DrmManagerClient;
import android.drm.DrmManagerClient.OnErrorListener;
import android.drm.DrmManagerClient.OnEventListener;
import android.drm.DrmManagerClient.OnInfoListener;
import android.net.Uri;
import android.net.Uri.Builder;
import android.os.Handler;
import android.os.Looper;
import android.provider.Settings.Secure;
import android.util.Log;
import android.widget.FrameLayout;
import java.net.URL;
import java.util.HashSet;
import java.util.Observable;
import java.util.Set;

@TargetApi(11)
class WidevineOsPlayer
  extends MoviePlayer
  implements DrmManagerClient.OnErrorListener, DrmManagerClient.OnEventListener, DrmManagerClient.OnInfoListener, WidevineStuckMonitor.Listener
{
  private static final String TAG = "WidevineOsPlayer";
  private static DrmManagerClient _drmClient;
  private boolean _live = false;
  private WidevineStuckMonitor _stuckMonitor;
  private boolean isSeeking = false;
  
  private static String eventToString(DrmEvent paramDrmEvent)
  {
    switch (paramDrmEvent.getType())
    {
    default: 
      return "";
    case 1001: 
      return "All Rights Removed";
    case 1002: 
      return "DRM Info Processed";
    case 5: 
      return "Account Already Registered";
    case 1: 
      return "Already Registered by Another Account";
    case 2: 
      return "Remove Rights";
    case 3: 
      return "Rights Installed";
    case 6: 
      return "Rights Removed";
    case 4: 
      return "Wait for Rights";
    case 2008: 
      return "Acquire DRM Info Failed";
    case 2005: 
      return "No Internet Connection";
    case 2003: 
      return "Type Not Supported";
    case 2004: 
      return "Out of Memory";
    case 2006: 
      return "DRM Info Request Failed";
    case 2007: 
      return "Remove All Rights Failed";
    case 2001: 
      return "Rights Not Installed";
    }
    return "Rights Renewal Not Allowed";
  }
  
  public void destroy()
  {
    if (_stuckMonitor != null) {
      _stuckMonitor.destroy();
    }
    super.destroy();
  }
  
  public OoyalaPlayer.SeekStyle getSeekStyle()
  {
    return OoyalaPlayer.SeekStyle.BASIC;
  }
  
  public void init(OoyalaPlayer paramOoyalaPlayer, Set<Stream> paramSet)
  {
    Stream localStream;
    if (Stream.streamSetContainsDeliveryType(paramSet, "wv_wvm")) {
      localStream = Stream.getStreamWithDeliveryType(paramSet, "wv_wvm");
    }
    for (;;)
    {
      if (localStream == null)
      {
        Log.e("WidevineOsPlayer", "No available streams for the Widevine Lib Player, Cannot continue. " + paramSet.toString());
        _error = "Invalid Stream";
        setState(OoyalaPlayer.State.ERROR);
        return;
        if (Stream.streamSetContainsDeliveryType(paramSet, "wv_hls")) {
          localStream = Stream.getStreamWithDeliveryType(paramSet, "wv_hls");
        }
      }
      else
      {
        if (_drmClient == null)
        {
          _drmClient = new DrmManagerClient(paramOoyalaPlayer.getLayout().getContext());
          _drmClient.setOnErrorListener(this);
          _drmClient.setOnEventListener(this);
          _drmClient.setOnInfoListener(this);
        }
        paramSet = localStream.decodedURL();
        if (paramSet == null)
        {
          Log.e("WidevineOsPlayer", "Invalid stream, Malformed URL, Cannot continue. URL: " + localStream.getUrl());
          _error = "Invalid Stream";
          setState(OoyalaPlayer.State.ERROR);
          return;
        }
        paramSet = Uri.parse(paramSet.toString());
        if (paramSet.getLastPathSegment().endsWith(".m3u8")) {
          _live = true;
        }
        localStream.setUrl(paramSet.buildUpon().scheme("widevine").build().toString());
        localStream.setUrlFormat("text");
        DrmInfoRequest localDrmInfoRequest = new DrmInfoRequest(3, "video/wvm");
        String str1 = Constants.DRM_HOST + String.format("/sas/drm2/%s/%s/%s/%s", new Object[] { paramOoyalaPlayer.getPlayerAPIClient().getPcode(), paramOoyalaPlayer.getEmbedCode(), "widevine", "ooyala" });
        if (localStream.getWidevineServerPath() != null) {
          paramSet = localStream.getWidevineServerPath();
        }
        for (;;)
        {
          localDrmInfoRequest.put("WVDRMServerKey", paramSet);
          localDrmInfoRequest.put("WVAssetURIKey", localStream.getUrl());
          localDrmInfoRequest.put("WVPortalKey", "ooyala");
          localDrmInfoRequest.put("WVDeviceIDKey", Settings.Secure.getString(paramOoyalaPlayer.getLayout().getContext().getContentResolver(), "android_id"));
          localDrmInfoRequest.put("WVLicenseTypeKey", "3");
          _drmClient.acquireRights(localDrmInfoRequest);
          paramSet = new HashSet();
          paramSet.add(localStream);
          super.init(paramOoyalaPlayer, paramSet);
          _stuckMonitor = new WidevineStuckMonitor(paramOoyalaPlayer, this, this);
          return;
          String str2 = paramOoyalaPlayer.getPlayerAPIClient().getAuthToken();
          paramSet = str1;
          if (str2 != null)
          {
            paramSet = str1;
            if (!str2.equals("")) {
              paramSet = str1 + "?auth_token=" + str2;
            }
          }
        }
      }
      localStream = null;
    }
  }
  
  public void onError(DrmManagerClient paramDrmManagerClient, DrmErrorEvent paramDrmErrorEvent)
  {
    Log.d("WidevineOsPlayer", "WidevineError: " + eventToString(paramDrmErrorEvent));
    _error = Integer.toString(paramDrmErrorEvent.getType());
    new Handler(Looper.getMainLooper()).post(new Runnable()
    {
      public void run()
      {
        setState(OoyalaPlayer.State.ERROR);
      }
    });
  }
  
  public void onEvent(DrmManagerClient paramDrmManagerClient, DrmEvent paramDrmEvent)
  {
    Log.d("WidevineOsPlayer", "WidevineEvent: " + eventToString(paramDrmEvent));
  }
  
  public void onFrozen()
  {
    Log.v("WidevineOsPlayer", "onFrozen(): posting the runnable");
    new Handler(Looper.getMainLooper()).post(new Runnable()
    {
      public void run()
      {
        Log.v("WidevineOsPlayer", "onFrozen(): running the runnable");
        if (getState() != OoyalaPlayer.State.ERROR)
        {
          setState(OoyalaPlayer.State.COMPLETED);
          _stuckMonitor.reset();
        }
      }
    });
  }
  
  public void onInfo(DrmManagerClient paramDrmManagerClient, DrmInfoEvent paramDrmInfoEvent)
  {
    Log.d("WidevineOsPlayer", "WidevineInfoEvent: " + eventToString(paramDrmInfoEvent));
  }
  
  public void seekToTime(int paramInt)
  {
    if (_live) {
      return;
    }
    if (!isSeeking)
    {
      Log.d("WidevineOsPlayer", "Seek started. Disabling seeking");
      super.seekToTime(paramInt);
      isSeeking = true;
      return;
    }
    Log.i("WidevineOsPlayer", "Trying to seek while already seeking, dropping the incoming seek");
  }
  
  public void update(Observable paramObservable, Object paramObject)
  {
    if (paramObject == "seekCompleted")
    {
      isSeeking = false;
      Log.d("WidevineOsPlayer", "Seek completed. Re-enabling seeking");
    }
    super.update(paramObservable, paramObject);
  }
}

/* Location:
 * Qualified Name:     com.ooyala.android.WidevineOsPlayer
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */