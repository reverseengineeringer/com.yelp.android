package com.google.android.gms.common.api.internal;

import android.os.Handler;
import android.os.Looper;
import android.os.Message;
import com.google.android.gms.common.internal.zzx;

public final class zzq<L>
{
  private volatile L mListener;
  private final zzq<L>.zza zzaiw;
  
  zzq(Looper paramLooper, L paramL)
  {
    zzaiw = new zza(paramLooper);
    mListener = zzx.zzb(paramL, "Listener must not be null");
  }
  
  public void clear()
  {
    mListener = null;
  }
  
  public void zza(zzb<? super L> paramzzb)
  {
    zzx.zzb(paramzzb, "Notifier must not be null");
    paramzzb = zzaiw.obtainMessage(1, paramzzb);
    zzaiw.sendMessage(paramzzb);
  }
  
  void zzb(zzb<? super L> paramzzb)
  {
    Object localObject = mListener;
    if (localObject == null)
    {
      paramzzb.zzpr();
      return;
    }
    try
    {
      paramzzb.zzt(localObject);
      return;
    }
    catch (RuntimeException localRuntimeException)
    {
      paramzzb.zzpr();
      throw localRuntimeException;
    }
  }
  
  private final class zza
    extends Handler
  {
    public zza(Looper paramLooper)
    {
      super();
    }
    
    public void handleMessage(Message paramMessage)
    {
      boolean bool = true;
      if (what == 1) {}
      for (;;)
      {
        zzx.zzac(bool);
        zzb((zzq.zzb)obj);
        return;
        bool = false;
      }
    }
  }
  
  public static abstract interface zzb<L>
  {
    public abstract void zzpr();
    
    public abstract void zzt(L paramL);
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.common.api.internal.zzq
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */