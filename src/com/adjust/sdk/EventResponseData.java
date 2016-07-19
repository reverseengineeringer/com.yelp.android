package com.adjust.sdk;

import java.util.Map;

public class EventResponseData
  extends ResponseData
{
  public String eventToken;
  
  public EventResponseData(ActivityPackage paramActivityPackage)
  {
    eventToken = ((String)paramActivityPackage.getParameters().get("event_token"));
  }
  
  public AdjustEventFailure getFailureResponseData()
  {
    if (success) {
      return null;
    }
    AdjustEventFailure localAdjustEventFailure = new AdjustEventFailure();
    message = message;
    timestamp = timestamp;
    adid = adid;
    willRetry = willRetry;
    jsonResponse = jsonResponse;
    eventToken = eventToken;
    return localAdjustEventFailure;
  }
  
  public AdjustEventSuccess getSuccessResponseData()
  {
    if (!success) {
      return null;
    }
    AdjustEventSuccess localAdjustEventSuccess = new AdjustEventSuccess();
    message = message;
    timestamp = timestamp;
    adid = adid;
    jsonResponse = jsonResponse;
    eventToken = eventToken;
    return localAdjustEventSuccess;
  }
}

/* Location:
 * Qualified Name:     com.adjust.sdk.EventResponseData
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */