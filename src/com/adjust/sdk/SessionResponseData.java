package com.adjust.sdk;

public class SessionResponseData
  extends ResponseData
{
  public AdjustSessionFailure getFailureResponseData()
  {
    if (success) {
      return null;
    }
    AdjustSessionFailure localAdjustSessionFailure = new AdjustSessionFailure();
    message = message;
    timestamp = timestamp;
    adid = adid;
    willRetry = willRetry;
    jsonResponse = jsonResponse;
    return localAdjustSessionFailure;
  }
  
  public AdjustSessionSuccess getSuccessResponseData()
  {
    if (!success) {
      return null;
    }
    AdjustSessionSuccess localAdjustSessionSuccess = new AdjustSessionSuccess();
    message = message;
    timestamp = timestamp;
    adid = adid;
    jsonResponse = jsonResponse;
    return localAdjustSessionSuccess;
  }
}

/* Location:
 * Qualified Name:     com.adjust.sdk.SessionResponseData
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */