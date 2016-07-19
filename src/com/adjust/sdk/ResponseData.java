package com.adjust.sdk;

import java.util.Locale;
import org.json.JSONObject;

public abstract class ResponseData
{
  public ActivityKind activityKind;
  public String adid;
  public AdjustAttribution attribution;
  public JSONObject jsonResponse;
  public String message;
  public boolean success;
  public String timestamp;
  public boolean willRetry;
  
  public static ResponseData buildResponseData(ActivityPackage paramActivityPackage)
  {
    ActivityKind localActivityKind = paramActivityPackage.getActivityKind();
    switch (localActivityKind)
    {
    default: 
      paramActivityPackage = new UnknownResponseData();
    }
    for (;;)
    {
      activityKind = localActivityKind;
      return paramActivityPackage;
      paramActivityPackage = new SessionResponseData();
      continue;
      paramActivityPackage = new AttributionResponseData();
      continue;
      paramActivityPackage = new EventResponseData(paramActivityPackage);
      continue;
      paramActivityPackage = new ClickResponseData();
    }
  }
  
  public String toString()
  {
    return String.format(Locale.US, "message:%s timestamp:%s json:%s", new Object[] { message, timestamp, jsonResponse });
  }
}

/* Location:
 * Qualified Name:     com.adjust.sdk.ResponseData
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */