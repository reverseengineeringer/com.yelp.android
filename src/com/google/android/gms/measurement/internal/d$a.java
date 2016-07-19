package com.google.android.gms.measurement.internal;

import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.content.ServiceConnection;
import android.os.Looper;
import com.google.android.gms.common.ConnectionResult;
import com.google.android.gms.common.api.GoogleApiClient.ConnectionCallbacks;
import com.google.android.gms.common.api.GoogleApiClient.OnConnectionFailedListener;
import com.google.android.gms.common.internal.zzf;
import com.google.android.gms.common.internal.zzx;
import com.google.android.gms.common.stats.zzb;
import com.google.android.gms.measurement.AppMeasurementService;

public class d$a
  implements ServiceConnection, GoogleApiClient.ConnectionCallbacks, GoogleApiClient.OnConnectionFailedListener
{
  private volatile boolean b;
  private volatile y c;
  
  protected d$a(d paramd) {}
  
  public void a()
  {
    a.f();
    Context localContext1 = a.m();
    try
    {
      if (b)
      {
        a.s().z().a("Connection attempt already in progress");
        return;
      }
      if (c != null)
      {
        a.s().z().a("Already awaiting connection attempt");
        return;
      }
    }
    finally {}
    c = new y(localContext2, Looper.getMainLooper(), zzf.zzat(localContext2), this, this);
    a.s().z().a("Connecting to remote service");
    b = true;
    c.zzqG();
  }
  
  public void a(Intent paramIntent)
  {
    a.f();
    Context localContext = a.m();
    zzb localzzb = zzb.zzrP();
    try
    {
      if (b)
      {
        a.s().z().a("Connection attempt already in progress");
        return;
      }
      b = true;
      localzzb.zza(localContext, paramIntent, d.a(a), 129);
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
    z localz = a.n.g();
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
    a.s().y().a("Service connection suspended");
    a.r().a(new Runnable()
    {
      public void run()
      {
        d.a(a, new ComponentName(a.m(), AppMeasurementService.class));
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
    a.s().y().a("Service disconnected");
    a.r().a(new Runnable()
    {
      public void run()
      {
        d.a(a, paramComponentName);
      }
    });
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.measurement.internal.d.a
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */