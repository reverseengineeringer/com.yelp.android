package com.google.android.gms.internal;

import com.google.android.gms.common.internal.zzx;
import java.util.concurrent.Executors;
import java.util.concurrent.ThreadFactory;
import java.util.concurrent.atomic.AtomicInteger;

public class kj
  implements ThreadFactory
{
  private final String a;
  private final int b;
  private final AtomicInteger c = new AtomicInteger();
  private final ThreadFactory d = Executors.defaultThreadFactory();
  
  public kj(String paramString)
  {
    this(paramString, 0);
  }
  
  public kj(String paramString, int paramInt)
  {
    a = ((String)zzx.zzb(paramString, "Name must not be null"));
    b = paramInt;
  }
  
  public Thread newThread(Runnable paramRunnable)
  {
    paramRunnable = d.newThread(new kk(paramRunnable, b));
    paramRunnable.setName(a + "[" + c.getAndIncrement() + "]");
    return paramRunnable;
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.internal.kj
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */