package com.google.android.gms.ads.internal.request;

import android.content.Context;
import android.os.Binder;
import android.os.Bundle;
import android.os.RemoteException;
import com.google.android.gms.ads.internal.s;
import com.google.android.gms.ads.internal.util.client.VersionInfoParcel;
import com.google.android.gms.common.ConnectionResult;
import com.google.android.gms.common.api.GoogleApiClient.ConnectionCallbacks;
import com.google.android.gms.common.api.GoogleApiClient.OnConnectionFailedListener;
import com.google.android.gms.internal.ah;
import com.google.android.gms.internal.ak;
import com.google.android.gms.internal.ao;
import com.google.android.gms.internal.fv;
import com.google.android.gms.internal.fw;
import com.google.android.gms.internal.fx;
import com.google.android.gms.internal.gt;
import com.google.android.gms.internal.gz;
import com.google.android.gms.internal.hd;
import com.google.android.gms.internal.hf;
import com.google.android.gms.internal.hj;
import com.google.android.gms.internal.hu;
import com.google.android.gms.internal.hu.a;
import com.google.android.gms.internal.hu.c;

@fv
public abstract class c
  implements b.a, hf<Void>
{
  private final hu<AdRequestInfoParcel> a;
  private final b.a b;
  private final Object c = new Object();
  
  public c(hu<AdRequestInfoParcel> paramhu, b.a parama)
  {
    a = paramhu;
    b = parama;
  }
  
  public abstract void a();
  
  public void a(AdResponseParcel paramAdResponseParcel)
  {
    synchronized (c)
    {
      b.a(paramAdResponseParcel);
      a();
      return;
    }
  }
  
  boolean a(i parami, AdRequestInfoParcel paramAdRequestInfoParcel)
  {
    try
    {
      parami.a(paramAdRequestInfoParcel, new f(this));
      return true;
    }
    catch (RemoteException parami)
    {
      gz.d("Could not fetch ad response from ad request service.", parami);
      s.h().a(parami, true);
      b.a(new AdResponseParcel(0));
      return false;
    }
    catch (NullPointerException parami)
    {
      for (;;)
      {
        gz.d("Could not fetch ad response from ad request service due to an Exception.", parami);
        s.h().a(parami, true);
      }
    }
    catch (SecurityException parami)
    {
      for (;;)
      {
        gz.d("Could not fetch ad response from ad request service due to an Exception.", parami);
        s.h().a(parami, true);
      }
    }
    catch (Throwable parami)
    {
      for (;;)
      {
        gz.d("Could not fetch ad response from ad request service due to an Exception.", parami);
        s.h().a(parami, true);
      }
    }
  }
  
  public abstract i b();
  
  public Void c()
  {
    final i locali = b();
    if (locali == null)
    {
      b.a(new AdResponseParcel(0));
      a();
      return null;
    }
    a.a(new hu.c()new hu.a
    {
      public void a(AdRequestInfoParcel paramAnonymousAdRequestInfoParcel)
      {
        if (!a(locali, paramAnonymousAdRequestInfoParcel)) {
          a();
        }
      }
    }, new hu.a()
    {
      public void a()
      {
        c.this.a();
      }
    });
    return null;
  }
  
  public void d()
  {
    a();
  }
  
  @fv
  public static final class a
    extends c
  {
    private final Context a;
    
    public a(Context paramContext, hu<AdRequestInfoParcel> paramhu, b.a parama)
    {
      super(parama);
      a = paramContext;
    }
    
    public void a() {}
    
    public i b()
    {
      ah localah = new ah((String)ao.b.c());
      return fx.a(a, localah, fw.a());
    }
  }
  
  @fv
  public static class b
    extends c
    implements GoogleApiClient.ConnectionCallbacks, GoogleApiClient.OnConnectionFailedListener
  {
    protected d a;
    private Context b;
    private VersionInfoParcel c;
    private hu<AdRequestInfoParcel> d;
    private final b.a e;
    private final Object f = new Object();
    private boolean g;
    
    public b(Context paramContext, VersionInfoParcel paramVersionInfoParcel, hu<AdRequestInfoParcel> paramhu, b.a parama)
    {
      super(parama);
      b = paramContext;
      c = paramVersionInfoParcel;
      d = paramhu;
      e = parama;
      if (((Boolean)ao.A.c()).booleanValue()) {
        g = true;
      }
      for (paramVersionInfoParcel = s.q().a();; paramVersionInfoParcel = paramContext.getMainLooper())
      {
        a = new d(paramContext, paramVersionInfoParcel, this, this, c.d);
        f();
        return;
      }
    }
    
    public void a()
    {
      synchronized (f)
      {
        if ((a.isConnected()) || (a.isConnecting())) {
          a.disconnect();
        }
        Binder.flushPendingCommands();
        if (g)
        {
          s.q().b();
          g = false;
        }
        return;
      }
    }
    
    /* Error */
    public i b()
    {
      // Byte code:
      //   0: aload_0
      //   1: getfield 36	com/google/android/gms/ads/internal/request/c$b:f	Ljava/lang/Object;
      //   4: astore_1
      //   5: aload_1
      //   6: monitorenter
      //   7: aload_0
      //   8: getfield 86	com/google/android/gms/ads/internal/request/c$b:a	Lcom/google/android/gms/ads/internal/request/d;
      //   11: invokevirtual 119	com/google/android/gms/ads/internal/request/d:a	()Lcom/google/android/gms/ads/internal/request/i;
      //   14: astore_2
      //   15: aload_1
      //   16: monitorexit
      //   17: aload_2
      //   18: areturn
      //   19: aload_1
      //   20: monitorexit
      //   21: aconst_null
      //   22: areturn
      //   23: astore_2
      //   24: aload_1
      //   25: monitorexit
      //   26: aload_2
      //   27: athrow
      //   28: astore_2
      //   29: goto -10 -> 19
      //   32: astore_2
      //   33: goto -14 -> 19
      // Local variable table:
      //   start	length	slot	name	signature
      //   0	36	0	this	b
      //   14	4	2	locali	i
      //   23	4	2	localObject2	Object
      //   28	1	2	localDeadObjectException	android.os.DeadObjectException
      //   32	1	2	localIllegalStateException	IllegalStateException
      // Exception table:
      //   from	to	target	type
      //   7	15	23	finally
      //   15	17	23	finally
      //   19	21	23	finally
      //   24	26	23	finally
      //   7	15	28	android/os/DeadObjectException
      //   7	15	32	java/lang/IllegalStateException
    }
    
    protected void f()
    {
      a.zzqG();
    }
    
    hf g()
    {
      return new c.a(b, d, e);
    }
    
    public void onConnected(Bundle paramBundle)
    {
      c();
    }
    
    public void onConnectionFailed(ConnectionResult paramConnectionResult)
    {
      gz.a("Cannot connect to remote service, fallback to local instance.");
      g().e();
      paramConnectionResult = new Bundle();
      paramConnectionResult.putString("action", "gms_connection_failed_fallback_to_local");
      s.e().b(b, c.b, "gmob-apps", paramConnectionResult, true);
    }
    
    public void onConnectionSuspended(int paramInt)
    {
      gz.a("Disconnected from remote ad request service.");
    }
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.ads.internal.request.c
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */