package com.ooyala.android;

import java.net.URL;

class NetUtils
{
  public static void ping(URL paramURL)
  {
    if (paramURL == null) {
      return;
    }
    new PingTask().execute(new URL[] { paramURL });
  }
}

/* Location:
 * Qualified Name:     com.ooyala.android.NetUtils
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */