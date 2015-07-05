package com.google.android.gms.common.api;

import android.os.Looper;
import android.util.Log;
import com.google.android.gms.internal.jx;

public final class d<L>
{
  private final d<L>.a Kt;
  private volatile L mListener;
  
  d(Looper paramLooper, L paramL)
  {
    Kt = new d.a(this, paramLooper);
    mListener = jx.b(paramL, "Listener must not be null");
  }
  
  public void a(d.b<? super L> paramb)
  {
    jx.b(paramb, "Notifier must not be null");
    paramb = Kt.obtainMessage(1, paramb);
    Kt.sendMessage(paramb);
  }
  
  void b(d.b<? super L> paramb)
  {
    Object localObject = mListener;
    if (localObject == null)
    {
      paramb.gG();
      return;
    }
    try
    {
      paramb.c(localObject);
      return;
    }
    catch (Exception localException)
    {
      Log.w("ListenerHolder", "Notifying listener failed", localException);
      paramb.gG();
    }
  }
  
  public void clear()
  {
    mListener = null;
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.common.api.d
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */