package com.kahuna.sdk;

import android.util.Log;
import java.util.TimerTask;

class q$b
  extends TimerTask
{
  private String b;
  private String c;
  private boolean d;
  
  public q$b(q paramq, String paramString1, String paramString2, boolean paramBoolean)
  {
    b = paramString1;
    c = paramString2;
    d = paramBoolean;
  }
  
  public void run()
  {
    try
    {
      RequestParams localRequestParams = new RequestParams();
      localRequestParams.put("key", b);
      localRequestParams.put("dev_id", c);
      if (d) {}
      for (Object localObject = "s";; localObject = "p")
      {
        localRequestParams.put("env", (String)localObject);
        long l = System.currentTimeMillis() / 1000L;
        localRequestParams.put("monitoring_key", l + 86400L + "kah");
        if (l.a) {
          Log.d("Kahuna", "Sending monitor request: " + localRequestParams);
        }
        String str = l.j().t();
        localObject = str;
        if (str == null) {
          localObject = "https://tap-nexus.appspot.com";
        }
        q.a(a).a((String)localObject + "/" + "monitor_device", localRequestParams, new n()
        {
          public void a(String paramAnonymousString)
          {
            if (l.a) {
              Log.d("Kahuna", "Successfully sent monitor request: " + paramAnonymousString);
            }
          }
          
          public void a(Throwable paramAnonymousThrowable, String paramAnonymousString)
          {
            super.a(paramAnonymousThrowable, paramAnonymousString);
            if (l.a) {
              Log.d("Kahuna", "Failed to send monitor request: " + paramAnonymousString, paramAnonymousThrowable);
            }
          }
        });
        return;
      }
      return;
    }
    catch (Exception localException)
    {
      if (l.a) {
        Log.d("Kahuna", "Caught exception in Send Monitor Request Task handler: " + localException);
      }
    }
  }
}

/* Location:
 * Qualified Name:     com.kahuna.sdk.q.b
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */