package com.ooyala.android;

import android.os.Build.VERSION;
import android.util.Base64;
import java.io.PrintStream;
import java.net.MalformedURLException;
import java.net.URL;
import java.util.Iterator;
import java.util.Set;
import org.json.JSONException;
import org.json.JSONObject;

public class Stream
{
  private static StreamSelector _selector = new DefaultStreamSelector();
  protected String _aspectRatio = null;
  protected int _audioBitrate = -1;
  protected String _deliveryType = null;
  protected String _framerate = null;
  protected int _height = -1;
  protected boolean _isLiveStream = false;
  protected String _profile = null;
  protected String _url = null;
  protected String _urlFormat = null;
  protected int _videoBitrate = -1;
  protected String _videoCodec = null;
  protected String _widevineServerPath = null;
  protected int _width = -1;
  
  public Stream() {}
  
  Stream(JSONObject paramJSONObject)
  {
    update(paramJSONObject);
  }
  
  public static Stream bestStream(Set<Stream> paramSet)
  {
    return _selector.bestStream(paramSet);
  }
  
  public static Stream getStreamWithDeliveryType(Set<Stream> paramSet, String paramString)
  {
    paramSet = paramSet.iterator();
    while (paramSet.hasNext())
    {
      Stream localStream = (Stream)paramSet.next();
      if (localStream.getDeliveryType().equals(paramString)) {
        return localStream;
      }
    }
    return null;
  }
  
  public static boolean isDeliveryTypePlayable(Stream paramStream)
  {
    boolean bool2 = false;
    paramStream = paramStream.getDeliveryType();
    int i;
    if ((paramStream.equals("hls")) || (paramStream.equals("akamai_hd2_vod_hls")))
    {
      i = 1;
      if ((!paramStream.equals("wv_wvm")) && (!paramStream.equals("wv_hls"))) {
        break label106;
      }
    }
    label99:
    label106:
    for (int j = 1;; j = 0)
    {
      if ((!paramStream.equals("mp4")) && (!paramStream.equals("remote_asset")) && (!paramStream.equals("wv_mp4")))
      {
        bool1 = bool2;
        if (Build.VERSION.SDK_INT < 14) {
          break label99;
        }
        if (i == 0)
        {
          bool1 = bool2;
          if (j == 0) {
            break label99;
          }
        }
      }
      boolean bool1 = true;
      return bool1;
      i = 0;
      break;
    }
  }
  
  public static boolean isProfilePlayable(Stream paramStream)
  {
    if (!"mp4".equals(paramStream.getDeliveryType())) {}
    while ((paramStream.getProfile() == null) || ("baseline".equals(paramStream.getProfile()))) {
      return true;
    }
    return false;
  }
  
  public static void resetStreamSelector()
  {
    _selector = new DefaultStreamSelector();
  }
  
  public static void setStreamSelector(StreamSelector paramStreamSelector)
  {
    _selector = paramStreamSelector;
  }
  
  public static boolean streamSetContainsDeliveryType(Set<Stream> paramSet, String paramString)
  {
    return getStreamWithDeliveryType(paramSet, paramString) != null;
  }
  
  public URL decodedURL()
  {
    try
    {
      if (_urlFormat.equals("encoded")) {
        return new URL(new String(Base64.decode(_url, 0)));
      }
      URL localURL = new URL(_url);
      return localURL;
    }
    catch (MalformedURLException localMalformedURLException)
    {
      System.out.println("Malformed URL: " + _url);
    }
    return null;
  }
  
  public String getAspectRatio()
  {
    return _aspectRatio;
  }
  
  public int getAudioBitrate()
  {
    return _audioBitrate;
  }
  
  public int getCombinedBitrate()
  {
    return _videoBitrate + _audioBitrate;
  }
  
  public String getDeliveryType()
  {
    return _deliveryType;
  }
  
  public String getFramerate()
  {
    return _framerate;
  }
  
  public int getHeight()
  {
    return _height;
  }
  
  public String getProfile()
  {
    return _profile;
  }
  
  public String getUrl()
  {
    return _url;
  }
  
  public String getUrlFormat()
  {
    return _urlFormat;
  }
  
  public int getVideoBitrate()
  {
    return _videoBitrate;
  }
  
  public String getVideoCodec()
  {
    return _videoCodec;
  }
  
  public String getWidevineServerPath()
  {
    return _widevineServerPath;
  }
  
  public int getWidth()
  {
    return _width;
  }
  
  public boolean isLiveStream()
  {
    return _isLiveStream;
  }
  
  public void setAspectRatio(String paramString)
  {
    _aspectRatio = paramString;
  }
  
  public void setAudioBitrate(int paramInt)
  {
    _audioBitrate = paramInt;
  }
  
  public void setDeliveryType(String paramString)
  {
    _deliveryType = paramString;
  }
  
  public void setFramerate(String paramString)
  {
    _framerate = paramString;
  }
  
  public void setHeight(int paramInt)
  {
    _height = paramInt;
  }
  
  public void setLiveStream(boolean paramBoolean)
  {
    _isLiveStream = paramBoolean;
  }
  
  public void setProfile(String paramString)
  {
    _profile = paramString;
  }
  
  public void setUrl(String paramString)
  {
    _url = paramString;
  }
  
  public void setUrlFormat(String paramString)
  {
    _urlFormat = paramString;
  }
  
  public void setVideoBitrate(int paramInt)
  {
    _videoBitrate = paramInt;
  }
  
  public void setVideoCodec(String paramString)
  {
    _videoCodec = paramString;
  }
  
  public void setWidth(int paramInt)
  {
    _width = paramInt;
  }
  
  Constants.ReturnState update(JSONObject paramJSONObject)
  {
    if (paramJSONObject.isNull("delivery_type"))
    {
      System.out.println("ERROR: Fail to update stream with dictionary because no delivery_type exists!");
      return Constants.ReturnState.STATE_FAIL;
    }
    if (paramJSONObject.isNull("url"))
    {
      System.out.println("ERROR: Fail to update stream with dictionary because no url element exists!");
      return Constants.ReturnState.STATE_FAIL;
    }
    Object localObject;
    try
    {
      localObject = paramJSONObject.getJSONObject("url");
      if (((JSONObject)localObject).isNull("data"))
      {
        System.out.println("ERROR: Fail to update stream with dictionary because no url.data exists!");
        return Constants.ReturnState.STATE_FAIL;
      }
    }
    catch (JSONException paramJSONObject)
    {
      System.out.println("ERROR: Fail to update stream with dictionary because url element is invalid.");
      return Constants.ReturnState.STATE_FAIL;
    }
    if (((JSONObject)localObject).isNull("format"))
    {
      System.out.println("ERROR: Fail to update stream with dictionary because no url.format exists!");
      return Constants.ReturnState.STATE_FAIL;
    }
    try
    {
      if (!paramJSONObject.isNull("widevine_server_path")) {
        _widevineServerPath = paramJSONObject.getString("widevine_server_path");
      }
      _deliveryType = paramJSONObject.getString("delivery_type");
      _url = ((JSONObject)localObject).getString("data");
      _urlFormat = ((JSONObject)localObject).getString("format");
      int i;
      label191:
      label211:
      label232:
      label252:
      label273:
      label295:
      boolean bool;
      if (paramJSONObject.isNull("video_bitrate"))
      {
        i = _videoBitrate;
        _videoBitrate = i;
        if (!paramJSONObject.isNull("audio_bitrate")) {
          break label355;
        }
        i = _audioBitrate;
        _audioBitrate = i;
        if (!paramJSONObject.isNull("video_codec")) {
          break label365;
        }
        localObject = _videoCodec;
        _videoCodec = ((String)localObject);
        if (!paramJSONObject.isNull("height")) {
          break label376;
        }
        i = _height;
        _height = i;
        if (!paramJSONObject.isNull("width")) {
          break label387;
        }
        i = _width;
        _width = i;
        if (!paramJSONObject.isNull("framerate")) {
          break label398;
        }
        localObject = _framerate;
        _framerate = ((String)localObject);
        if (!paramJSONObject.isNull("aspect_ratio")) {
          break label410;
        }
        localObject = _aspectRatio;
        _aspectRatio = ((String)localObject);
        if (!paramJSONObject.isNull("is_live_stream")) {
          break label422;
        }
        bool = _isLiveStream;
        label316:
        _isLiveStream = bool;
        if (!paramJSONObject.isNull("profile")) {
          break label433;
        }
      }
      label355:
      label365:
      label376:
      label387:
      label398:
      label410:
      label422:
      label433:
      for (paramJSONObject = _profile;; paramJSONObject = paramJSONObject.getString("profile"))
      {
        _profile = paramJSONObject;
        return Constants.ReturnState.STATE_MATCHED;
        i = paramJSONObject.getInt("video_bitrate");
        break;
        i = paramJSONObject.getInt("audio_bitrate");
        break label191;
        localObject = paramJSONObject.getString("video_codec");
        break label211;
        i = paramJSONObject.getInt("height");
        break label232;
        i = paramJSONObject.getInt("width");
        break label252;
        localObject = paramJSONObject.getString("framerate");
        break label273;
        localObject = paramJSONObject.getString("aspect_ratio");
        break label295;
        bool = paramJSONObject.getBoolean("is_live_stream");
        break label316;
      }
      return Constants.ReturnState.STATE_FAIL;
    }
    catch (JSONException paramJSONObject)
    {
      System.out.println("ERROR: Fail to update stream with dictionary because of invalid JSON: " + paramJSONObject);
    }
  }
  
  private static class DefaultStreamSelector
    implements StreamSelector
  {
    public Stream bestStream(Set<Stream> paramSet)
    {
      Stream localStream = null;
      Iterator localIterator = null;
      Object localObject = localIterator;
      if (paramSet != null)
      {
        if (paramSet.size() != 0) {
          break label26;
        }
        localObject = localIterator;
      }
      label26:
      do
      {
        return (Stream)localObject;
        localIterator = paramSet.iterator();
        paramSet = localStream;
        localObject = paramSet;
      } while (!localIterator.hasNext());
      localStream = (Stream)localIterator.next();
      if ((localStream.getDeliveryType().equals("remote_asset")) || (localStream.getDeliveryType().equals("hls"))) {
        return localStream;
      }
      if ((Stream.isDeliveryTypePlayable(localStream)) && (Stream.isProfilePlayable(localStream)))
      {
        localObject = localStream;
        if (paramSet != null)
        {
          localObject = localStream;
          if (localStream.getCombinedBitrate() >= paramSet.getCombinedBitrate()) {
            if ((localStream.getCombinedBitrate() != paramSet.getCombinedBitrate()) || (localStream.getHeight() >= paramSet.getHeight())) {
              break label147;
            }
          }
        }
      }
      label147:
      for (localObject = localStream;; localObject = paramSet)
      {
        paramSet = (Set<Stream>)localObject;
        break;
      }
    }
  }
}

/* Location:
 * Qualified Name:     com.ooyala.android.Stream
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */