package com.ooyala.android;

import android.os.Build.VERSION;
import java.util.HashSet;
import java.util.Set;

public class DefaultPlayerInfo
  implements PlayerInfo
{
  public String getDevice()
  {
    return "android_html";
  }
  
  public int getMaxBitrate()
  {
    return -1;
  }
  
  public int getMaxHeight()
  {
    return -1;
  }
  
  public int getMaxWidth()
  {
    return -1;
  }
  
  public Set<String> getSupportedFormats()
  {
    HashSet localHashSet = new HashSet();
    localHashSet.add("mp4");
    localHashSet.add("wv_mp4");
    if ((OoyalaPlayer.enableHLS) || (OoyalaPlayer.enableCustomHLSPlayer)) {
      localHashSet.add("m3u8");
    }
    if (Build.VERSION.SDK_INT >= 14)
    {
      localHashSet.add("m3u8");
      localHashSet.add("wv_wvm");
      localHashSet.add("wv_hls");
    }
    return localHashSet;
  }
  
  public Set<String> getSupportedProfiles()
  {
    return null;
  }
  
  public String getUserAgent()
  {
    return null;
  }
}

/* Location:
 * Qualified Name:     com.ooyala.android.DefaultPlayerInfo
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */