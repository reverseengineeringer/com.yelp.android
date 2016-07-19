package com.google.android.gms.internal;

import android.os.RemoteException;
import android.util.Log;
import com.google.android.gms.clearcut.LogEventParcelable;
import com.google.android.gms.clearcut.b;
import com.google.android.gms.clearcut.b.b;
import com.google.android.gms.clearcut.c;
import com.google.android.gms.common.api.GoogleApiClient;
import com.google.android.gms.common.api.PendingResult;
import com.google.android.gms.common.api.PendingResult.zza;
import com.google.android.gms.common.api.Result;
import com.google.android.gms.common.api.Status;
import com.google.android.gms.common.api.internal.zza.zza;
import java.util.concurrent.ScheduledFuture;
import java.util.concurrent.TimeUnit;

public class ix
  implements c
{
  private static final Object a = new Object();
  private static final e b = new e(null);
  private static final long c = TimeUnit.MILLISECONDS.convert(2L, TimeUnit.MINUTES);
  private final jt d;
  private final a e;
  private final Object f = new Object();
  private long g = 0L;
  private final long h;
  private ScheduledFuture<?> i = null;
  private GoogleApiClient j = null;
  private final Runnable k = new Runnable()
  {
    public void run()
    {
      synchronized (ix.a(ix.this))
      {
        if ((ix.b(ix.this) <= ix.c(ix.this).b()) && (ix.d(ix.this) != null))
        {
          Log.i("ClearcutLoggerApiImpl", "disconnect managed GoogleApiClient");
          ix.d(ix.this).disconnect();
          ix.a(ix.this, null);
        }
        return;
      }
    }
  };
  
  public ix()
  {
    this(new jv(), c, new b());
  }
  
  public ix(jt paramjt, long paramLong, a parama)
  {
    d = paramjt;
    h = paramLong;
    e = parama;
  }
  
  private d b(GoogleApiClient paramGoogleApiClient, LogEventParcelable paramLogEventParcelable)
  {
    b.a();
    paramGoogleApiClient = new d(paramLogEventParcelable, paramGoogleApiClient);
    paramGoogleApiClient.zza(new PendingResult.zza()
    {
      public void zzu(Status paramAnonymousStatus)
      {
        ix.a().b();
      }
    });
    return paramGoogleApiClient;
  }
  
  private static void b(LogEventParcelable paramLogEventParcelable)
  {
    if ((f != null) && (e.j.length == 0)) {
      e.j = f.a();
    }
    if ((g != null) && (e.r.length == 0)) {
      e.r = g.a();
    }
    c = lq.a(e);
  }
  
  public PendingResult<Status> a(GoogleApiClient paramGoogleApiClient, LogEventParcelable paramLogEventParcelable)
  {
    b(paramLogEventParcelable);
    return paramGoogleApiClient.zza(b(paramGoogleApiClient, paramLogEventParcelable));
  }
  
  public boolean a(GoogleApiClient paramGoogleApiClient, long paramLong, TimeUnit paramTimeUnit)
  {
    try
    {
      boolean bool = b.a(paramLong, paramTimeUnit);
      return bool;
    }
    catch (InterruptedException paramGoogleApiClient)
    {
      Log.e("ClearcutLoggerApiImpl", "flush interrupted");
      Thread.currentThread().interrupt();
    }
    return false;
  }
  
  public static abstract interface a {}
  
  public static class b
    implements ix.a
  {}
  
  static abstract class c<R extends Result>
    extends zza.zza<R, iy>
  {
    public c(GoogleApiClient paramGoogleApiClient)
    {
      super(paramGoogleApiClient);
    }
  }
  
  final class d
    extends ix.c<Status>
  {
    private final LogEventParcelable b;
    
    d(LogEventParcelable paramLogEventParcelable, GoogleApiClient paramGoogleApiClient)
    {
      super();
      b = paramLogEventParcelable;
    }
    
    protected Status a(Status paramStatus)
    {
      return paramStatus;
    }
    
    protected void a(iy paramiy)
      throws RemoteException
    {
      iz.a local1 = new iz.a()
      {
        public void a(Status paramAnonymousStatus)
        {
          zza(paramAnonymousStatus);
        }
      };
      try
      {
        ix.a(b);
        paramiy.a(local1, b);
        return;
      }
      catch (Throwable paramiy)
      {
        Log.e("ClearcutLoggerApiImpl", "MessageNanoProducer " + b.f.toString() + " threw: " + paramiy.toString());
      }
    }
    
    public boolean equals(Object paramObject)
    {
      if (!(paramObject instanceof d)) {
        return false;
      }
      paramObject = (d)paramObject;
      return b.equals(b);
    }
    
    public String toString()
    {
      return "MethodImpl(" + b + ")";
    }
  }
  
  private static final class e
  {
    private int a = 0;
    
    public void a()
    {
      try
      {
        a += 1;
        return;
      }
      finally
      {
        localObject = finally;
        throw ((Throwable)localObject);
      }
    }
    
    public boolean a(long paramLong, TimeUnit paramTimeUnit)
      throws InterruptedException
    {
      long l1 = System.currentTimeMillis();
      paramLong = TimeUnit.MILLISECONDS.convert(paramLong, paramTimeUnit);
      for (;;)
      {
        try
        {
          if (a == 0) {
            return true;
          }
          if (paramLong <= 0L) {
            return false;
          }
        }
        finally {}
        wait(paramLong);
        long l2 = System.currentTimeMillis();
        paramLong -= l2 - l1;
      }
    }
    
    public void b()
    {
      try
      {
        if (a == 0) {
          throw new RuntimeException("too many decrements");
        }
      }
      finally {}
      a -= 1;
      if (a == 0) {
        notifyAll();
      }
    }
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.internal.ix
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */