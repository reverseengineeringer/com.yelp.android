package com.google.android.gms.internal;

import java.util.HashMap;
import java.util.Map;
import java.util.concurrent.Future;
import org.json.JSONException;
import org.json.JSONObject;

@fv
public class ce
  implements bz
{
  final HashMap<String, hp<JSONObject>> a = new HashMap();
  
  public Future<JSONObject> a(String paramString)
  {
    hp localhp = new hp();
    a.put(paramString, localhp);
    return localhp;
  }
  
  public void a(ib paramib, Map<String, String> paramMap)
  {
    a((String)paramMap.get("request_id"), (String)paramMap.get("fetched_ad"));
  }
  
  public void a(String paramString1, String paramString2)
  {
    gz.a("Received ad from the cache.");
    hp localhp = (hp)a.get(paramString1);
    if (localhp == null)
    {
      gz.b("Could not find the ad request for the corresponding ad response.");
      return;
    }
    try
    {
      localhp.b(new JSONObject(paramString2));
      return;
    }
    catch (JSONException paramString2)
    {
      gz.b("Failed constructing JSON object from value passed from javascript", paramString2);
      localhp.b(null);
      return;
    }
    finally
    {
      a.remove(paramString1);
    }
  }
  
  public void b(String paramString)
  {
    hp localhp = (hp)a.get(paramString);
    if (localhp == null)
    {
      gz.b("Could not find the ad request for the corresponding ad response.");
      return;
    }
    if (!localhp.isDone()) {
      localhp.cancel(true);
    }
    a.remove(paramString);
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.internal.ce
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */