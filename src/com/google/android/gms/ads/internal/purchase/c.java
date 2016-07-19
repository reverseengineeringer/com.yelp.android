package com.google.android.gms.ads.internal.purchase;

import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.content.ServiceConnection;
import android.os.Bundle;
import android.os.Handler;
import android.os.IBinder;
import android.os.RemoteException;
import android.os.SystemClock;
import com.google.android.gms.ads.internal.s;
import com.google.android.gms.common.stats.zzb;
import com.google.android.gms.internal.fd;
import com.google.android.gms.internal.fv;
import com.google.android.gms.internal.gy;
import com.google.android.gms.internal.gz;
import com.google.android.gms.internal.hd;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Set;

@fv
public class c
  extends gy
  implements ServiceConnection
{
  private final Object a = new Object();
  private boolean b = false;
  private Context c;
  private fd d;
  private b e;
  private h f;
  private List<f> g = null;
  private k h;
  
  public c(Context paramContext, fd paramfd, k paramk)
  {
    this(paramContext, paramfd, paramk, new b(paramContext), h.a(paramContext.getApplicationContext()));
  }
  
  c(Context paramContext, fd paramfd, k paramk, b paramb, h paramh)
  {
    c = paramContext;
    d = paramfd;
    h = paramk;
    e = paramb;
    f = paramh;
    g = f.a(10L);
  }
  
  private void a(long paramLong)
  {
    do
    {
      if (!b(paramLong)) {
        gz.e("Timeout waiting for pending transaction to be processed.");
      }
    } while (!b);
  }
  
  private boolean b(long paramLong)
  {
    paramLong = 60000L - (SystemClock.elapsedRealtime() - paramLong);
    if (paramLong <= 0L) {
      return false;
    }
    try
    {
      a.wait(paramLong);
      return true;
    }
    catch (InterruptedException localInterruptedException)
    {
      for (;;)
      {
        gz.d("waitWithTimeout_lock interrupted");
      }
    }
  }
  
  public void a()
  {
    synchronized (a)
    {
      Intent localIntent = new Intent("com.android.vending.billing.InAppBillingService.BIND");
      localIntent.setPackage("com.android.vending");
      zzb.zzrP().zza(c, localIntent, this, 1);
      a(SystemClock.elapsedRealtime());
      zzb.zzrP().zza(c, this);
      e.a();
      return;
    }
  }
  
  protected void a(final f paramf, String paramString1, String paramString2)
  {
    final Intent localIntent = new Intent();
    s.o();
    localIntent.putExtra("RESPONSE_CODE", 0);
    s.o();
    localIntent.putExtra("INAPP_PURCHASE_DATA", paramString1);
    s.o();
    localIntent.putExtra("INAPP_DATA_SIGNATURE", paramString2);
    hd.a.post(new Runnable()
    {
      public void run()
      {
        try
        {
          if (c.a(c.this).a(paramfb, -1, localIntent))
          {
            c.c(c.this).a(new g(c.b(c.this), paramfc, true, -1, localIntent, paramf));
            return;
          }
          c.c(c.this).a(new g(c.b(c.this), paramfc, false, -1, localIntent, paramf));
          return;
        }
        catch (RemoteException localRemoteException)
        {
          gz.d("Fail to verify and dispatch pending transaction");
        }
      }
    });
  }
  
  public void b()
  {
    synchronized (a)
    {
      zzb.zzrP().zza(c, this);
      e.a();
      return;
    }
  }
  
  protected void c()
  {
    if (g.isEmpty()) {
      return;
    }
    HashMap localHashMap = new HashMap();
    Object localObject1 = g.iterator();
    Object localObject2;
    while (((Iterator)localObject1).hasNext())
    {
      localObject2 = (f)((Iterator)localObject1).next();
      localHashMap.put(c, localObject2);
    }
    localObject1 = null;
    for (;;)
    {
      localObject1 = e.b(c.getPackageName(), (String)localObject1);
      if (localObject1 == null) {}
      do
      {
        do
        {
          localObject1 = localHashMap.keySet().iterator();
          while (((Iterator)localObject1).hasNext())
          {
            localObject2 = (String)((Iterator)localObject1).next();
            f.a((f)localHashMap.get(localObject2));
          }
          break;
        } while (s.o().a((Bundle)localObject1) != 0);
        localObject2 = ((Bundle)localObject1).getStringArrayList("INAPP_PURCHASE_ITEM_LIST");
        ArrayList localArrayList1 = ((Bundle)localObject1).getStringArrayList("INAPP_PURCHASE_DATA_LIST");
        ArrayList localArrayList2 = ((Bundle)localObject1).getStringArrayList("INAPP_DATA_SIGNATURE_LIST");
        localObject1 = ((Bundle)localObject1).getString("INAPP_CONTINUATION_TOKEN");
        int i = 0;
        while (i < ((ArrayList)localObject2).size())
        {
          if (localHashMap.containsKey(((ArrayList)localObject2).get(i)))
          {
            String str1 = (String)((ArrayList)localObject2).get(i);
            String str2 = (String)localArrayList1.get(i);
            String str3 = (String)localArrayList2.get(i);
            f localf = (f)localHashMap.get(str1);
            String str4 = s.o().a(str2);
            if (b.equals(str4))
            {
              a(localf, str2, str3);
              localHashMap.remove(str1);
            }
          }
          i += 1;
        }
      } while ((localObject1 == null) || (localHashMap.isEmpty()));
    }
  }
  
  public void onServiceConnected(ComponentName arg1, IBinder paramIBinder)
  {
    synchronized (a)
    {
      e.a(paramIBinder);
      c();
      b = true;
      a.notify();
      return;
    }
  }
  
  public void onServiceDisconnected(ComponentName paramComponentName)
  {
    gz.c("In-app billing service disconnected.");
    e.a();
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.ads.internal.purchase.c
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */