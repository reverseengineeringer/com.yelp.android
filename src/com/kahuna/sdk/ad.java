package com.kahuna.sdk;

import android.util.Log;
import com.yelp.android.ao.a;
import com.yelp.android.ao.i;
import java.util.TimerTask;

class ad
  extends TimerTask
{
  private String b;
  private String c;
  private boolean d;
  
  public ad(aa paramaa, String paramString1, String paramString2, boolean paramBoolean)
  {
    b = paramString1;
    c = paramString2;
    d = paramBoolean;
  }
  
  public void run()
  {
    try
    {
      i locali = new i();
      locali.a("key", b);
      locali.a("dev_id", c);
      if (d) {}
      for (String str = "s";; str = "p")
      {
        locali.a("env", str);
        long l = System.currentTimeMillis() / 1000L;
        locali.a("monitoring_key", l + 86400L + "kah");
        if (h.a) {
          Log.d("KahunaAnalytics", "Sending monitor request: " + locali);
        }
        aa.a(a).a("https://tap-nexus.appspot.com/monitor_device", locali, new ae(this));
        return;
      }
      return;
    }
    catch (Exception localException)
    {
      if (h.a) {
        Log.d("KahunaAnalytics", "Caught exception in Send Monitor Request Task handler: " + localException);
      }
    }
  }
}

/* Location:
 * Qualified Name:     com.kahuna.sdk.ad
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */