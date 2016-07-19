package com.google.android.gms.internal;

import android.os.Handler;
import java.util.Map;
import org.json.JSONObject;

class ca$1
  implements Runnable
{
  ca$1(ca paramca, Map paramMap, ib paramib) {}
  
  public void run()
  {
    gz.a("Received Http request.");
    final Object localObject = (String)a.get("http_request");
    localObject = c.a((String)localObject);
    if (localObject == null)
    {
      gz.b("Response should not be null.");
      return;
    }
    hd.a.post(new Runnable()
    {
      public void run()
      {
        b.b("fetchHttpRequestCompleted", localObject);
        gz.a("Dispatched http response.");
      }
    });
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.internal.ca.1
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */