package com.google.android.gms.measurement.internal;

import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.content.ServiceConnection;
import android.content.pm.PackageManager;
import android.os.Looper;
import android.os.RemoteException;
import android.text.TextUtils;
import com.google.android.gms.common.ConnectionResult;
import com.google.android.gms.common.api.GoogleApiClient.ConnectionCallbacks;
import com.google.android.gms.common.api.GoogleApiClient.OnConnectionFailedListener;
import com.google.android.gms.common.internal.zzf;
import com.google.android.gms.common.internal.zzx;
import com.google.android.gms.common.stats.zzb;
import com.google.android.gms.common.zzc;
import com.google.android.gms.measurement.AppMeasurementService;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

public class d
  extends aj
{
  private final a a;
  private w b;
  private Boolean c;
  private final p d;
  private final g e;
  private final List<Runnable> f = new ArrayList();
  private final p g;
  
  protected d(ag paramag)
  {
    super(paramag);
    e = new g(paramag.q());
    a = new a();
    d = new p(paramag)
    {
      public void a()
      {
        d.b(d.this);
      }
    };
    g = new p(paramag)
    {
      public void a()
      {
        s().c().a("Tasks have been queued for a long time");
      }
    };
  }
  
  private boolean A()
  {
    f();
    G();
    if (u().N()) {
      return true;
    }
    s().z().a("Checking service availability");
    switch (zzc.zzoK().isGooglePlayServicesAvailable(m()))
    {
    default: 
      return false;
    case 0: 
      s().z().a("Service available");
      return true;
    case 1: 
      s().z().a("Service missing");
      return false;
    case 18: 
      s().z().a("Service updating");
      return true;
    case 2: 
      s().z().a("Service version update required");
      return false;
    case 3: 
      s().z().a("Service disabled");
      return false;
    }
    s().z().a("Service invalid");
    return false;
  }
  
  private void B()
  {
    f();
    if (!b()) {
      return;
    }
    s().z().a("Inactivity, disconnecting from AppMeasurementService");
    w();
  }
  
  private void C()
  {
    f();
    y();
  }
  
  private void D()
  {
    f();
    s().z().a("Processing queued up service tasks", Integer.valueOf(f.size()));
    Iterator localIterator = f.iterator();
    while (localIterator.hasNext())
    {
      Runnable localRunnable = (Runnable)localIterator.next();
      r().a(localRunnable);
    }
    f.clear();
    g.c();
  }
  
  private void a(ComponentName paramComponentName)
  {
    f();
    if (b != null)
    {
      b = null;
      s().z().a("Disconnected from device MeasurementService", paramComponentName);
      C();
    }
  }
  
  private void a(w paramw)
  {
    f();
    zzx.zzz(paramw);
    b = paramw;
    x();
    D();
  }
  
  private void a(Runnable paramRunnable)
    throws IllegalStateException
  {
    f();
    if (b())
    {
      paramRunnable.run();
      return;
    }
    if (f.size() >= u().R())
    {
      s().b().a("Discarding data. Max runnable queue size reached");
      return;
    }
    f.add(paramRunnable);
    if (!n.y()) {
      g.a(60000L);
    }
    y();
  }
  
  private void x()
  {
    f();
    e.a();
    if (!n.y()) {
      d.a(u().J());
    }
  }
  
  private void y()
  {
    f();
    G();
    if (b()) {
      return;
    }
    if (c == null)
    {
      c = t().v();
      if (c == null)
      {
        s().z().a("State of service unknown");
        c = Boolean.valueOf(A());
        t().a(c.booleanValue());
      }
    }
    if (c.booleanValue())
    {
      s().z().a("Using measurement service");
      a.a();
      return;
    }
    if ((z()) && (!n.y()))
    {
      s().z().a("Using local app measurement service");
      Intent localIntent = new Intent("com.google.android.gms.measurement.START");
      localIntent.setComponent(new ComponentName(m(), AppMeasurementService.class));
      a.a(localIntent);
      return;
    }
    if (u().O())
    {
      s().z().a("Using direct local measurement implementation");
      a(new ah(n, true));
      return;
    }
    s().b().a("Not in main process. Unable to use local measurement implementation. Please register the AppMeasurementService service in the app manifest");
  }
  
  private boolean z()
  {
    List localList = m().getPackageManager().queryIntentServices(new Intent(m(), AppMeasurementService.class), 65536);
    return (localList != null) && (localList.size() > 0);
  }
  
  protected void a() {}
  
  protected void a(final EventParcel paramEventParcel, final String paramString)
  {
    zzx.zzz(paramEventParcel);
    f();
    G();
    a(new Runnable()
    {
      public void run()
      {
        w localw = d.c(d.this);
        if (localw == null)
        {
          s().b().a("Discarding data. Failed to send event to service");
          return;
        }
        for (;;)
        {
          try
          {
            if (TextUtils.isEmpty(paramString))
            {
              localw.a(paramEventParcel, i().a(s().A()));
              d.d(d.this);
              return;
            }
          }
          catch (RemoteException localRemoteException)
          {
            s().b().a("Failed to send event to AppMeasurementService", localRemoteException);
            return;
          }
          localRemoteException.a(paramEventParcel, paramString, s().A());
        }
      }
    });
  }
  
  protected void a(final UserAttributeParcel paramUserAttributeParcel)
  {
    f();
    G();
    a(new Runnable()
    {
      public void run()
      {
        w localw = d.c(d.this);
        if (localw == null)
        {
          s().b().a("Discarding data. Failed to set user attribute");
          return;
        }
        try
        {
          localw.a(paramUserAttributeParcel, i().a(s().A()));
          d.d(d.this);
          return;
        }
        catch (RemoteException localRemoteException)
        {
          s().b().a("Failed to send attribute to AppMeasurementService", localRemoteException);
        }
      }
    });
  }
  
  public boolean b()
  {
    f();
    G();
    return b != null;
  }
  
  protected void c()
  {
    f();
    G();
    a(new Runnable()
    {
      public void run()
      {
        w localw = d.c(d.this);
        if (localw == null)
        {
          s().b().a("Failed to send measurementEnabled to service");
          return;
        }
        try
        {
          localw.b(i().a(s().A()));
          d.d(d.this);
          return;
        }
        catch (RemoteException localRemoteException)
        {
          s().b().a("Failed to send measurementEnabled to AppMeasurementService", localRemoteException);
        }
      }
    });
  }
  
  protected void v()
  {
    f();
    G();
    a(new Runnable()
    {
      public void run()
      {
        w localw = d.c(d.this);
        if (localw == null)
        {
          s().b().a("Discarding data. Failed to send app launch");
          return;
        }
        try
        {
          localw.a(i().a(s().A()));
          d.d(d.this);
          return;
        }
        catch (RemoteException localRemoteException)
        {
          s().b().a("Failed to send app launch to AppMeasurementService", localRemoteException);
        }
      }
    });
  }
  
  public void w()
  {
    f();
    G();
    try
    {
      zzb.zzrP().zza(m(), a);
      b = null;
      return;
    }
    catch (IllegalStateException localIllegalStateException)
    {
      for (;;) {}
    }
    catch (IllegalArgumentException localIllegalArgumentException)
    {
      for (;;) {}
    }
  }
  
  protected class a
    implements ServiceConnection, GoogleApiClient.ConnectionCallbacks, GoogleApiClient.OnConnectionFailedListener
  {
    private volatile boolean b;
    private volatile y c;
    
    protected a() {}
    
    public void a()
    {
      f();
      Context localContext1 = m();
      try
      {
        if (b)
        {
          s().z().a("Connection attempt already in progress");
          return;
        }
        if (c != null)
        {
          s().z().a("Already awaiting connection attempt");
          return;
        }
      }
      finally {}
      c = new y(localContext2, Looper.getMainLooper(), zzf.zzat(localContext2), this, this);
      s().z().a("Connecting to remote service");
      b = true;
      c.zzqG();
    }
    
    public void a(Intent paramIntent)
    {
      f();
      Context localContext = m();
      zzb localzzb = zzb.zzrP();
      try
      {
        if (b)
        {
          s().z().a("Connection attempt already in progress");
          return;
        }
        b = true;
        localzzb.zza(localContext, paramIntent, d.a(d.this), 129);
        return;
      }
      finally {}
    }
    
    /* Error */
    public void onConnected(final android.os.Bundle paramBundle)
    {
      // Byte code:
      //   0: ldc 109
      //   2: invokestatic 114	com/google/android/gms/common/internal/zzx:zzcD	(Ljava/lang/String;)V
      //   5: aload_0
      //   6: monitorenter
      //   7: aload_0
      //   8: getfield 63	com/google/android/gms/measurement/internal/d$a:c	Lcom/google/android/gms/measurement/internal/y;
      //   11: invokevirtual 118	com/google/android/gms/measurement/internal/y:zzqJ	()Landroid/os/IInterface;
      //   14: checkcast 120	com/google/android/gms/measurement/internal/w
      //   17: astore_1
      //   18: aload_0
      //   19: aconst_null
      //   20: putfield 63	com/google/android/gms/measurement/internal/d$a:c	Lcom/google/android/gms/measurement/internal/y;
      //   23: aload_0
      //   24: getfield 30	com/google/android/gms/measurement/internal/d$a:a	Lcom/google/android/gms/measurement/internal/d;
      //   27: invokevirtual 124	com/google/android/gms/measurement/internal/d:r	()Lcom/google/android/gms/measurement/internal/af;
      //   30: new 19	com/google/android/gms/measurement/internal/d$a$3
      //   33: dup
      //   34: aload_0
      //   35: aload_1
      //   36: invokespecial 127	com/google/android/gms/measurement/internal/d$a$3:<init>	(Lcom/google/android/gms/measurement/internal/d$a;Lcom/google/android/gms/measurement/internal/w;)V
      //   39: invokevirtual 132	com/google/android/gms/measurement/internal/af:a	(Ljava/lang/Runnable;)V
      //   42: aload_0
      //   43: monitorexit
      //   44: return
      //   45: aload_0
      //   46: aconst_null
      //   47: putfield 63	com/google/android/gms/measurement/internal/d$a:c	Lcom/google/android/gms/measurement/internal/y;
      //   50: aload_0
      //   51: iconst_0
      //   52: putfield 37	com/google/android/gms/measurement/internal/d$a:b	Z
      //   55: goto -13 -> 42
      //   58: astore_1
      //   59: aload_0
      //   60: monitorexit
      //   61: aload_1
      //   62: athrow
      //   63: astore_1
      //   64: goto -19 -> 45
      //   67: astore_1
      //   68: goto -23 -> 45
      // Local variable table:
      //   start	length	slot	name	signature
      //   0	71	0	this	a
      //   0	71	1	paramBundle	android.os.Bundle
      // Exception table:
      //   from	to	target	type
      //   7	42	58	finally
      //   42	44	58	finally
      //   45	55	58	finally
      //   59	61	58	finally
      //   7	42	63	java/lang/IllegalStateException
      //   7	42	67	android/os/DeadObjectException
    }
    
    public void onConnectionFailed(ConnectionResult paramConnectionResult)
    {
      zzx.zzcD("MeasurementServiceConnection.onConnectionFailed");
      z localz = n.g();
      if (localz != null) {
        localz.c().a("Service connection failed", paramConnectionResult);
      }
      try
      {
        b = false;
        c = null;
        return;
      }
      finally {}
    }
    
    public void onConnectionSuspended(int paramInt)
    {
      zzx.zzcD("MeasurementServiceConnection.onConnectionSuspended");
      s().y().a("Service connection suspended");
      r().a(new Runnable()
      {
        public void run()
        {
          d.a(d.this, new ComponentName(m(), AppMeasurementService.class));
        }
      });
    }
    
    /* Error */
    public void onServiceConnected(final ComponentName paramComponentName, android.os.IBinder paramIBinder)
    {
      // Byte code:
      //   0: ldc -84
      //   2: invokestatic 114	com/google/android/gms/common/internal/zzx:zzcD	(Ljava/lang/String;)V
      //   5: aload_0
      //   6: monitorenter
      //   7: aload_2
      //   8: ifnonnull +26 -> 34
      //   11: aload_0
      //   12: iconst_0
      //   13: putfield 37	com/google/android/gms/measurement/internal/d$a:b	Z
      //   16: aload_0
      //   17: getfield 30	com/google/android/gms/measurement/internal/d$a:a	Lcom/google/android/gms/measurement/internal/d;
      //   20: invokevirtual 48	com/google/android/gms/measurement/internal/d:s	()Lcom/google/android/gms/measurement/internal/z;
      //   23: invokevirtual 174	com/google/android/gms/measurement/internal/z:b	()Lcom/google/android/gms/measurement/internal/z$a;
      //   26: ldc -80
      //   28: invokevirtual 61	com/google/android/gms/measurement/internal/z$a:a	(Ljava/lang/String;)V
      //   31: aload_0
      //   32: monitorexit
      //   33: return
      //   34: aconst_null
      //   35: astore 4
      //   37: aconst_null
      //   38: astore_3
      //   39: aload 4
      //   41: astore_1
      //   42: aload_2
      //   43: invokeinterface 182 1 0
      //   48: astore 5
      //   50: aload 4
      //   52: astore_1
      //   53: ldc -72
      //   55: aload 5
      //   57: invokevirtual 190	java/lang/String:equals	(Ljava/lang/Object;)Z
      //   60: ifeq +67 -> 127
      //   63: aload 4
      //   65: astore_1
      //   66: aload_2
      //   67: invokestatic 195	com/google/android/gms/measurement/internal/w$a:a	(Landroid/os/IBinder;)Lcom/google/android/gms/measurement/internal/w;
      //   70: astore_2
      //   71: aload_2
      //   72: astore_1
      //   73: aload_0
      //   74: getfield 30	com/google/android/gms/measurement/internal/d$a:a	Lcom/google/android/gms/measurement/internal/d;
      //   77: invokevirtual 48	com/google/android/gms/measurement/internal/d:s	()Lcom/google/android/gms/measurement/internal/z;
      //   80: invokevirtual 54	com/google/android/gms/measurement/internal/z:z	()Lcom/google/android/gms/measurement/internal/z$a;
      //   83: ldc -59
      //   85: invokevirtual 61	com/google/android/gms/measurement/internal/z$a:a	(Ljava/lang/String;)V
      //   88: aload_2
      //   89: astore_1
      //   90: aload_1
      //   91: ifnonnull +80 -> 171
      //   94: aload_0
      //   95: iconst_0
      //   96: putfield 37	com/google/android/gms/measurement/internal/d$a:b	Z
      //   99: invokestatic 94	com/google/android/gms/common/stats/zzb:zzrP	()Lcom/google/android/gms/common/stats/zzb;
      //   102: aload_0
      //   103: getfield 30	com/google/android/gms/measurement/internal/d$a:a	Lcom/google/android/gms/measurement/internal/d;
      //   106: invokevirtual 44	com/google/android/gms/measurement/internal/d:m	()Landroid/content/Context;
      //   109: aload_0
      //   110: getfield 30	com/google/android/gms/measurement/internal/d$a:a	Lcom/google/android/gms/measurement/internal/d;
      //   113: invokestatic 97	com/google/android/gms/measurement/internal/d:a	(Lcom/google/android/gms/measurement/internal/d;)Lcom/google/android/gms/measurement/internal/d$a;
      //   116: invokevirtual 200	com/google/android/gms/common/stats/zzb:zza	(Landroid/content/Context;Landroid/content/ServiceConnection;)V
      //   119: aload_0
      //   120: monitorexit
      //   121: return
      //   122: astore_1
      //   123: aload_0
      //   124: monitorexit
      //   125: aload_1
      //   126: athrow
      //   127: aload 4
      //   129: astore_1
      //   130: aload_0
      //   131: getfield 30	com/google/android/gms/measurement/internal/d$a:a	Lcom/google/android/gms/measurement/internal/d;
      //   134: invokevirtual 48	com/google/android/gms/measurement/internal/d:s	()Lcom/google/android/gms/measurement/internal/z;
      //   137: invokevirtual 174	com/google/android/gms/measurement/internal/z:b	()Lcom/google/android/gms/measurement/internal/z$a;
      //   140: ldc -54
      //   142: aload 5
      //   144: invokevirtual 152	com/google/android/gms/measurement/internal/z$a:a	(Ljava/lang/String;Ljava/lang/Object;)V
      //   147: aload_3
      //   148: astore_1
      //   149: goto -59 -> 90
      //   152: astore_2
      //   153: aload_0
      //   154: getfield 30	com/google/android/gms/measurement/internal/d$a:a	Lcom/google/android/gms/measurement/internal/d;
      //   157: invokevirtual 48	com/google/android/gms/measurement/internal/d:s	()Lcom/google/android/gms/measurement/internal/z;
      //   160: invokevirtual 174	com/google/android/gms/measurement/internal/z:b	()Lcom/google/android/gms/measurement/internal/z$a;
      //   163: ldc -52
      //   165: invokevirtual 61	com/google/android/gms/measurement/internal/z$a:a	(Ljava/lang/String;)V
      //   168: goto -78 -> 90
      //   171: aload_0
      //   172: getfield 30	com/google/android/gms/measurement/internal/d$a:a	Lcom/google/android/gms/measurement/internal/d;
      //   175: invokevirtual 124	com/google/android/gms/measurement/internal/d:r	()Lcom/google/android/gms/measurement/internal/af;
      //   178: new 15	com/google/android/gms/measurement/internal/d$a$1
      //   181: dup
      //   182: aload_0
      //   183: aload_1
      //   184: invokespecial 205	com/google/android/gms/measurement/internal/d$a$1:<init>	(Lcom/google/android/gms/measurement/internal/d$a;Lcom/google/android/gms/measurement/internal/w;)V
      //   187: invokevirtual 132	com/google/android/gms/measurement/internal/af:a	(Ljava/lang/Runnable;)V
      //   190: goto -71 -> 119
      //   193: astore_1
      //   194: goto -75 -> 119
      // Local variable table:
      //   start	length	slot	name	signature
      //   0	197	0	this	a
      //   0	197	1	paramComponentName	ComponentName
      //   0	197	2	paramIBinder	android.os.IBinder
      //   38	110	3	localObject1	Object
      //   35	93	4	localObject2	Object
      //   48	95	5	str	String
      // Exception table:
      //   from	to	target	type
      //   11	33	122	finally
      //   42	50	122	finally
      //   53	63	122	finally
      //   66	71	122	finally
      //   73	88	122	finally
      //   94	99	122	finally
      //   99	119	122	finally
      //   119	121	122	finally
      //   123	125	122	finally
      //   130	147	122	finally
      //   153	168	122	finally
      //   171	190	122	finally
      //   42	50	152	android/os/RemoteException
      //   53	63	152	android/os/RemoteException
      //   66	71	152	android/os/RemoteException
      //   73	88	152	android/os/RemoteException
      //   130	147	152	android/os/RemoteException
      //   99	119	193	java/lang/IllegalArgumentException
    }
    
    public void onServiceDisconnected(final ComponentName paramComponentName)
    {
      zzx.zzcD("MeasurementServiceConnection.onServiceDisconnected");
      s().y().a("Service disconnected");
      r().a(new Runnable()
      {
        public void run()
        {
          d.a(d.this, paramComponentName);
        }
      });
    }
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.measurement.internal.d
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */