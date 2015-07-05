package com.adjust.sdk;

import java.util.Locale;
import org.json.JSONException;
import org.json.JSONObject;

public class p
{
  private ActivityKind a = ActivityKind.UNKNOWN;
  private boolean b;
  private boolean c;
  private String d;
  private String e;
  private String f;
  private String g;
  private String h;
  private String i;
  private String j;
  
  public static p a(String paramString)
  {
    try
    {
      p localp = new p();
      JSONObject localJSONObject = new JSONObject(paramString);
      d = localJSONObject.optString("error", null);
      e = localJSONObject.optString("tracker_token", null);
      f = localJSONObject.optString("tracker_name", null);
      g = localJSONObject.optString("network", null);
      h = localJSONObject.optString("campaign", null);
      i = localJSONObject.optString("adgroup", null);
      j = localJSONObject.optString("creative", null);
      return localp;
    }
    catch (JSONException localJSONException) {}
    return b(String.format("Failed to parse json response: %s", tmp103_100));
  }
  
  public static p b(String paramString)
  {
    p localp = new p();
    d = paramString;
    return localp;
  }
  
  public String a()
  {
    return a.toString();
  }
  
  public void a(ActivityKind paramActivityKind)
  {
    a = paramActivityKind;
  }
  
  public void a(boolean paramBoolean)
  {
    b = paramBoolean;
  }
  
  public String b()
  {
    return d;
  }
  
  public void b(boolean paramBoolean)
  {
    c = paramBoolean;
  }
  
  public String toString()
  {
    return String.format(Locale.US, "[kind:%s success:%b willRetry:%b error:%s trackerToken:%s trackerName:%s network:%s campaign:%s adgroup:%s creative:%s]", new Object[] { a(), Boolean.valueOf(b), Boolean.valueOf(c), q.a(d), e, q.a(f), q.a(g), q.a(h), q.a(i), q.a(j) });
  }
}

/* Location:
 * Qualified Name:     com.adjust.sdk.p
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */