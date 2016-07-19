package com.google.android.gms.common.api.internal;

import com.google.android.gms.internal.kj;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.LinkedBlockingQueue;
import java.util.concurrent.ThreadPoolExecutor;
import java.util.concurrent.TimeUnit;

public abstract class zzs
{
  private static final ExecutorService zzaiv = new ThreadPoolExecutor(0, 4, 60L, TimeUnit.SECONDS, new LinkedBlockingQueue(), new kj("GAC_Transform"));
  
  public static ExecutorService zzpN()
  {
    return zzaiv;
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.common.api.internal.zzs
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */