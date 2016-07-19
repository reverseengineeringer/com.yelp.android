package com.adjust.sdk;

import java.util.Locale;
import org.json.JSONObject;

public class AdjustSessionSuccess
{
  public String adid;
  public JSONObject jsonResponse;
  public String message;
  public String timestamp;
  
  public String toString()
  {
    return String.format(Locale.US, "Session Success msg:%s time:%s adid:%s json:%s", new Object[] { message, timestamp, adid, jsonResponse });
  }
}

/* Location:
 * Qualified Name:     com.adjust.sdk.AdjustSessionSuccess
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */