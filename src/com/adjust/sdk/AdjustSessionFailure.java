package com.adjust.sdk;

import java.util.Locale;
import org.json.JSONObject;

public class AdjustSessionFailure
{
  public String adid;
  public JSONObject jsonResponse;
  public String message;
  public String timestamp;
  public boolean willRetry;
  
  public String toString()
  {
    return String.format(Locale.US, "Session Failure msg:%s time:%s adid:%s retry:%b json:%s", new Object[] { message, timestamp, adid, Boolean.valueOf(willRetry), jsonResponse });
  }
}

/* Location:
 * Qualified Name:     com.adjust.sdk.AdjustSessionFailure
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */