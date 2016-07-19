package com.adjust.sdk;

import java.util.Locale;
import org.json.JSONObject;

public class AdjustEventFailure
{
  public String adid;
  public String eventToken;
  public JSONObject jsonResponse;
  public String message;
  public String timestamp;
  public boolean willRetry;
  
  public String toString()
  {
    return String.format(Locale.US, "Event Failure msg:%s time:%s adid:%s event:%s retry:%b json:%s", new Object[] { message, timestamp, adid, eventToken, Boolean.valueOf(willRetry), jsonResponse });
  }
}

/* Location:
 * Qualified Name:     com.adjust.sdk.AdjustEventFailure
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */