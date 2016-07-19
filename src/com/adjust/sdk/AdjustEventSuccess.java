package com.adjust.sdk;

import java.util.Locale;
import org.json.JSONObject;

public class AdjustEventSuccess
{
  public String adid;
  public String eventToken;
  public JSONObject jsonResponse;
  public String message;
  public String timestamp;
  
  public String toString()
  {
    return String.format(Locale.US, "Event Success msg:%s time:%s adid:%s event:%s json:%s", new Object[] { message, timestamp, adid, eventToken, jsonResponse });
  }
}

/* Location:
 * Qualified Name:     com.adjust.sdk.AdjustEventSuccess
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */