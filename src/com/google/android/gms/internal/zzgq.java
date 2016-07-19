package com.google.android.gms.internal;

import android.content.Context;
import android.os.Handler;
import android.os.SystemClock;
import com.google.android.gms.ads.internal.request.AdResponseParcel;

@fv
public abstract class zzgq
  extends gy
{
  protected final fl.a a;
  protected final Context b;
  protected final Object c = new Object();
  protected final Object d = new Object();
  protected final gr.a e;
  protected AdResponseParcel f;
  
  protected zzgq(Context paramContext, gr.a parama, fl.a parama1)
  {
    super(true);
    b = paramContext;
    e = parama;
    f = b;
    a = parama1;
  }
  
  protected abstract gr a(int paramInt);
  
  public void a()
  {
    for (;;)
    {
      int i;
      synchronized (c)
      {
        gz.a("AdRendererBackgroundTask started.");
        i = e.e;
        try
        {
          a(SystemClock.elapsedRealtime());
          final gr localgr = a(i);
          hd.a.post(new Runnable()
          {
            public void run()
            {
              synchronized (c)
              {
                a(localgr);
                return;
              }
            }
          });
          return;
        }
        catch (zza localzza)
        {
          i = localzza.getErrorCode();
          if (i == 3) {
            continue;
          }
        }
        if (i == -1)
        {
          gz.c(localzza.getMessage());
          if (f == null)
          {
            f = new AdResponseParcel(i);
            hd.a.post(new Runnable()
            {
              public void run()
              {
                b();
              }
            });
          }
        }
        else
        {
          gz.d(localzza.getMessage());
        }
      }
      f = new AdResponseParcel(i, f.k);
    }
  }
  
  protected abstract void a(long paramLong)
    throws zzgq.zza;
  
  protected void a(gr paramgr)
  {
    a.b(paramgr);
  }
  
  public void b() {}
  
  protected static final class zza
    extends Exception
  {
    private final int zzGu;
    
    public zza(String paramString, int paramInt)
    {
      super();
      zzGu = paramInt;
    }
    
    public int getErrorCode()
    {
      return zzGu;
    }
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.internal.zzgq
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */