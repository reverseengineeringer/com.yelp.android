package com.facebook.appevents;

import java.io.Serializable;

class AppEventsLogger$AccessTokenAppIdPair$SerializationProxyV1
  implements Serializable
{
  private static final long serialVersionUID = -2488473066578201069L;
  private final String accessTokenString;
  private final String appId;
  
  private AppEventsLogger$AccessTokenAppIdPair$SerializationProxyV1(String paramString1, String paramString2)
  {
    accessTokenString = paramString1;
    appId = paramString2;
  }
  
  private Object readResolve()
  {
    return new AppEventsLogger.AccessTokenAppIdPair(accessTokenString, appId);
  }
}

/* Location:
 * Qualified Name:     com.facebook.appevents.AppEventsLogger.AccessTokenAppIdPair.SerializationProxyV1
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */