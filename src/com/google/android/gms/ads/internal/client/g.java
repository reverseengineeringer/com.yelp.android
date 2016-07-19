package com.google.android.gms.ads.internal.client;

import android.os.Handler;
import android.os.RemoteException;
import com.google.android.gms.ads.internal.util.client.a;
import com.google.android.gms.ads.internal.util.client.b;
import com.google.android.gms.internal.bb;
import com.google.android.gms.internal.ez;
import com.google.android.gms.internal.fd;

public class g
  extends ac.a
{
  private y a;
  
  public com.google.android.gms.dynamic.c a()
  {
    return null;
  }
  
  public void a(AdSizeParcel paramAdSizeParcel) {}
  
  public void a(ae paramae) {}
  
  public void a(af paramaf) {}
  
  public void a(x paramx) {}
  
  public void a(y paramy)
  {
    a = paramy;
  }
  
  public void a(bb parambb) {}
  
  public void a(ez paramez) {}
  
  public void a(fd paramfd, String paramString) {}
  
  public void a(com.yelp.android.bb.c paramc) {}
  
  public void a(String paramString) {}
  
  public void a(boolean paramBoolean) {}
  
  public boolean a(AdRequestParcel paramAdRequestParcel)
  {
    b.b("This app is using a lightweight version of the Google Mobile Ads SDK that requires the latest Google Play services to be installed, but Google Play services is either missing or out of date.");
    a.a.post(new Runnable()
    {
      public void run()
      {
        if (g.a(g.this) != null) {}
        try
        {
          g.a(g.this).a(1);
          return;
        }
        catch (RemoteException localRemoteException)
        {
          b.d("Could not notify onAdFailedToLoad event.", localRemoteException);
        }
      }
    });
    return false;
  }
  
  public void b() {}
  
  public boolean c()
  {
    return false;
  }
  
  public void d() {}
  
  public void d_() {}
  
  public void f() {}
  
  public void g() {}
  
  public void h() {}
  
  public AdSizeParcel i()
  {
    return null;
  }
  
  public String j()
  {
    return null;
  }
  
  public boolean k()
  {
    return false;
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.ads.internal.client.g
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */