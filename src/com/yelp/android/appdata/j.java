package com.yelp.android.appdata;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import com.yelp.android.appdata.webrequests.ApiRequest;
import com.yelp.android.appdata.webrequests.YelpException;
import com.yelp.android.appdata.webrequests.ez;
import com.yelp.android.appdata.webrequests.k.b;
import com.yelp.android.serializable.AlertsResponse;
import com.yelp.android.services.push.d.a;
import com.yelp.android.services.push.e;
import com.yelp.android.services.push.e.a;
import com.yelp.android.util.ObjectDirtyEvent;

public class j
  implements e.a
{
  private static j a;
  private int b = 0;
  private int c = 0;
  private boolean d = false;
  private ez e;
  private k.b<AlertsResponse> f = new k.b()
  {
    public void a(ApiRequest<?, ?, ?> paramAnonymousApiRequest, AlertsResponse paramAnonymousAlertsResponse)
    {
      j.a(j.this, paramAnonymousAlertsResponse.a());
      j.b(j.this, paramAnonymousAlertsResponse.b());
    }
    
    public boolean a()
    {
      return false;
    }
    
    public void onError(ApiRequest<?, ?, ?> paramAnonymousApiRequest, YelpException paramAnonymousYelpException)
    {
      if (!j.a(j.this))
      {
        i();
        j.a(j.this, true);
      }
    }
  };
  private BroadcastReceiver g = new BroadcastReceiver()
  {
    public void onReceive(Context paramAnonymousContext, Intent paramAnonymousIntent)
    {
      int i = ObjectDirtyEvent.b(paramAnonymousIntent);
      j.a(j.this, i);
    }
  };
  
  private j()
  {
    i();
  }
  
  public static j a()
  {
    try
    {
      if (a == null)
      {
        a = new j();
        AppData.b().c().a(a);
        AppData.b().registerReceiver(ag, ObjectDirtyEvent.a("com.yelp.android.messages.read"));
        localObject1 = AppData.b().f();
        ac = ((c)localObject1).P();
        ab = ((c)localObject1).O();
      }
      Object localObject1 = a;
      return (j)localObject1;
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
      c localc = AppData.b().f();
      localc.d(ac);
      localc.c(ab);
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
  
  public void a(d.a parama)
  {
    a(e() + 1);
  }
  
  public boolean b(d.a parama)
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
      e.a(true);
    }
    e = new ez(f);
    e.a(new Void[0]);
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.appdata.j
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */