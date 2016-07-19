package com.google.android.gms.measurement.internal;

import com.google.android.gms.common.internal.zzx;
import java.util.concurrent.Callable;
import java.util.concurrent.FutureTask;

final class af$a<V>
  extends FutureTask<V>
{
  private final String b;
  
  af$a(af paramaf, Runnable paramRunnable, String paramString)
  {
    super(paramRunnable, null);
    zzx.zzz(paramString);
    b = paramString;
  }
  
  af$a(Callable<V> paramCallable, String paramString)
  {
    super(paramString);
    Object localObject;
    zzx.zzz(localObject);
    b = ((String)localObject);
  }
  
  protected void setException(Throwable paramThrowable)
  {
    a.s().b().a(b, paramThrowable);
    super.setException(paramThrowable);
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.measurement.internal.af.a
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */