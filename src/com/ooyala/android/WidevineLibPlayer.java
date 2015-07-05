package com.ooyala.android;

import android.os.Handler;
import android.os.Handler.Callback;
import android.os.Message;
import android.util.Log;
import android.widget.FrameLayout;
import com.widevine.drmapi.android.WVEvent;
import com.widevine.drmapi.android.WVEventListener;
import com.widevine.drmapi.android.WVPlayback;
import com.widevine.drmapi.android.WVStatus;
import java.net.URL;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Set;

public class WidevineLibPlayer
  extends MoviePlayer
  implements Handler.Callback, WVEventListener
{
  private static final int ERROR = -1;
  private static final int INIT = 0;
  private Handler _handler = new Handler(this);
  private Stream _stream = null;
  private WVPlayback _wvplayback = new WVPlayback();
  
  private void initializeWidevine()
  {
    HashMap localHashMap = new HashMap();
    String str = Constants.DRM_HOST + String.format("/sas/drm2/%s/%s/%s/%s", new Object[] { _parent.getPlayerAPIClient().getPcode(), _parent.getEmbedCode(), "widevine", "ooyala" });
    if (_stream.getWidevineServerPath() != null) {
      str = _stream.getWidevineServerPath();
    }
    localHashMap.put("WVPortalKey", "ooyala");
    localHashMap.put("WVDRMServer", str);
    localHashMap.put("WVLicenseTypeKey", Integer.valueOf(3));
    if (_wvplayback.initializeSynchronous(_parent.getLayout().getContext(), localHashMap, this) == WVStatus.AlreadyInitialized)
    {
      _wvplayback.terminateSynchronous();
      _wvplayback.initializeSynchronous(_parent.getLayout().getContext(), localHashMap, this);
    }
    _handler.sendEmptyMessage(0);
  }
  
  public void destroy()
  {
    _wvplayback.terminate();
    super.destroy();
  }
  
  public OoyalaPlayer.SeekStyle getSeekStyle()
  {
    return OoyalaPlayer.SeekStyle.BASIC;
  }
  
  public boolean handleMessage(Message paramMessage)
  {
    switch (what)
    {
    }
    for (;;)
    {
      return true;
      setState(OoyalaPlayer.State.ERROR);
    }
  }
  
  public void init(OoyalaPlayer paramOoyalaPlayer, Set<Stream> paramSet)
  {
    _stream = null;
    if (Stream.streamSetContainsDeliveryType(paramSet, "wv_mp4")) {
      _stream = Stream.getStreamWithDeliveryType(paramSet, "wv_mp4");
    }
    if (_stream == null)
    {
      Log.e("Widevine", "No available streams for the WidevineLib Player, Cannot continue." + paramSet.toString());
      _error = "Invalid Stream";
      setState(OoyalaPlayer.State.ERROR);
      return;
    }
    _parent = paramOoyalaPlayer;
    initializeWidevine();
  }
  
  public WVStatus onEvent(WVEvent paramWVEvent, HashMap<String, Object> paramHashMap)
  {
    Log.d("Widevine", paramWVEvent.toString() + ": " + paramHashMap.toString());
    switch (WidevineLibPlayer.1.$SwitchMap$com$widevine$drmapi$android$WVEvent[paramWVEvent.ordinal()])
    {
    default: 
      return WVStatus.OK;
    case 1: 
      if (_error == null) {
        _error = "Widevine Initialization Failed";
      }
    case 2: 
      if (_error == null) {
        _error = "Widevine License Request Failed";
      }
    case 3: 
      if (_error == null) {
        _error = "Widevine Playback Failed";
      }
      _handler.sendEmptyMessage(-1);
      if (paramHashMap.containsKey("WVStatusKey")) {
        return (WVStatus)paramHashMap.get("WVStatusKey");
      }
      return WVStatus.OK;
    case 4: 
      _wvplayback.registerAsset(_stream.decodedURL().toString());
      _wvplayback.requestLicense(_stream.decodedURL().toString());
      _stream.setUrl(_wvplayback.play(_stream.decodedURL().toString()));
      _stream.setUrlFormat("text");
      paramWVEvent = new HashSet();
      paramWVEvent.add(_stream);
      super.init(_parent, paramWVEvent);
    }
    return WVStatus.OK;
  }
  
  public void resume()
  {
    super.resume();
  }
  
  public void resume(int paramInt, OoyalaPlayer.State paramState)
  {
    initializeWidevine();
    super.resume(paramInt, paramState);
  }
  
  public void suspend()
  {
    super.suspend();
  }
  
  public void suspend(int paramInt, OoyalaPlayer.State paramState)
  {
    _wvplayback.terminateSynchronous();
    super.suspend(paramInt, paramState);
  }
}

/* Location:
 * Qualified Name:     com.ooyala.android.WidevineLibPlayer
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */