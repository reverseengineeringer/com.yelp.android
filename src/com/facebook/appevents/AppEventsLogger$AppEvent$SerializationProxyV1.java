package com.facebook.appevents;

import java.io.Serializable;
import org.json.JSONException;

class AppEventsLogger$AppEvent$SerializationProxyV1
  implements Serializable
{
  private static final long serialVersionUID = -2488473066578201069L;
  private final boolean isImplicit;
  private final String jsonString;
  
  private AppEventsLogger$AppEvent$SerializationProxyV1(String paramString, boolean paramBoolean)
  {
    jsonString = paramString;
    isImplicit = paramBoolean;
  }
  
  private Object readResolve()
    throws JSONException
  {
    return new AppEventsLogger.AppEvent(jsonString, isImplicit, null);
  }
}

/* Location:
 * Qualified Name:     com.facebook.appevents.AppEventsLogger.AppEvent.SerializationProxyV1
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */