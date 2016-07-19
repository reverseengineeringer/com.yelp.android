package com.facebook.appevents;

import com.facebook.AccessToken;
import com.facebook.g;
import com.facebook.internal.u;
import java.io.Serializable;

class AppEventsLogger$AccessTokenAppIdPair
  implements Serializable
{
  private static final long serialVersionUID = 1L;
  private final String accessTokenString;
  private final String applicationId;
  
  AppEventsLogger$AccessTokenAppIdPair(AccessToken paramAccessToken)
  {
    this(paramAccessToken.b(), g.h());
  }
  
  AppEventsLogger$AccessTokenAppIdPair(String paramString1, String paramString2)
  {
    String str = paramString1;
    if (u.a(paramString1)) {
      str = null;
    }
    accessTokenString = str;
    applicationId = paramString2;
  }
  
  private Object writeReplace()
  {
    return new SerializationProxyV1(accessTokenString, applicationId, null);
  }
  
  public boolean equals(Object paramObject)
  {
    if (!(paramObject instanceof AccessTokenAppIdPair)) {}
    do
    {
      return false;
      paramObject = (AccessTokenAppIdPair)paramObject;
    } while ((!u.a(accessTokenString, accessTokenString)) || (!u.a(applicationId, applicationId)));
    return true;
  }
  
  String getAccessTokenString()
  {
    return accessTokenString;
  }
  
  String getApplicationId()
  {
    return applicationId;
  }
  
  public int hashCode()
  {
    int j = 0;
    int i;
    if (accessTokenString == null)
    {
      i = 0;
      if (applicationId != null) {
        break label33;
      }
    }
    for (;;)
    {
      return i ^ j;
      i = accessTokenString.hashCode();
      break;
      label33:
      j = applicationId.hashCode();
    }
  }
  
  private static class SerializationProxyV1
    implements Serializable
  {
    private static final long serialVersionUID = -2488473066578201069L;
    private final String accessTokenString;
    private final String appId;
    
    private SerializationProxyV1(String paramString1, String paramString2)
    {
      accessTokenString = paramString1;
      appId = paramString2;
    }
    
    private Object readResolve()
    {
      return new AppEventsLogger.AccessTokenAppIdPair(accessTokenString, appId);
    }
  }
}

/* Location:
 * Qualified Name:     com.facebook.appevents.AppEventsLogger.AccessTokenAppIdPair
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */