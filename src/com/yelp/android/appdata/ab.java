package com.yelp.android.appdata;

import android.content.BroadcastReceiver;
import com.yelp.android.appdata.webrequests.gg;
import com.yelp.android.serializable.AlertsResponse;
import com.yelp.android.services.push.h;
import com.yelp.android.util.ObjectDirtyEvent;

public class ab
  implements com.yelp.android.services.push.j
{
  private static ab a;
  private int b = 0;
  private int c = 0;
  private boolean d = false;
  private gg e;
  private com.yelp.android.appdata.webrequests.j<AlertsResponse> f = new ac(this);
  private BroadcastReceiver g = new ad(this);
  
  private ab()
  {
    i();
  }
  
  public static ab a()
  {
    try
    {
      if (a == null)
      {
        a = new ab();
        AppData.b().c().a(a);
        AppData.b().registerReceiver(ag, ObjectDirtyEvent.a("com.yelp.android.messages.read"));
        localObject1 = AppData.b().f();
        ac = ((i)localObject1).M();
        ab = ((i)localObject1).L();
      }
      Object localObject1 = a;
      return (ab)localObject1;
    }
    finally {}
  }
  
  private void a(int paramInt)
  {
    b = paramInt;
    j();
  }
  
  public static void b()
  {
    if (a != null)
    {
      i locali = AppData.b().f();
      locali.d(ac);
      locali.c(ab);
      AppData.b().c().b(a);
      AppData.b().unregisterReceiver(ag);
    }
    a = null;
  }
  
  private void b(int paramInt)
  {
    c = paramInt;
    k();
  }
  
  private void j()
  {
    new ObjectDirtyEvent(b, "com.yelp.android.messages.count.update").a(AppData.b());
  }
  
  private void k()
  {
    new ObjectDirtyEvent(c, "com.yelp.android.notifications.count.update").a(AppData.b());
  }
  
  public void a(h paramh)
  {
    a(e() + 1);
  }
  
  public boolean b(h paramh)
  {
    return true;
  }
  
  public String c()
  {
    return "NotificationCountController";
  }
  
  public int d()
  {
    return f() + e();
  }
  
  public int e()
  {
    return b;
  }
  
  public int f()
  {
    return c;
  }
  
  public void g()
  {
    b(0);
  }
  
  public void h()
  {
    a(0);
    b(0);
  }
  
  public void i()
  {
    if (e != null) {
      e.cancel(true);
    }
    e = new gg(f);
    e.executeWithLocation(new Void[0]);
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.appdata.ab
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */