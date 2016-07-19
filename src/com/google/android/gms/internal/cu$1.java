package com.google.android.gms.internal;

import android.os.Handler;
import java.util.concurrent.Executor;

class cu$1
  implements Executor
{
  cu$1(cu paramcu, Handler paramHandler) {}
  
  public void execute(Runnable paramRunnable)
  {
    a.post(paramRunnable);
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.internal.cu.1
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */