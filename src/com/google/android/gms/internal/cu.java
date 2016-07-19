package com.google.android.gms.internal;

import android.os.Handler;
import java.util.concurrent.Executor;

public class cu
  implements ka
{
  private final Executor a;
  
  public cu(final Handler paramHandler)
  {
    a = new Executor()
    {
      public void execute(Runnable paramAnonymousRunnable)
      {
        paramHandler.post(paramAnonymousRunnable);
      }
    };
  }
  
  public void a(zzk<?> paramzzk, jc<?> paramjc)
  {
    a(paramzzk, paramjc, null);
  }
  
  public void a(zzk<?> paramzzk, jc<?> paramjc, Runnable paramRunnable)
  {
    paramzzk.t();
    paramzzk.b("post-response");
    a.execute(new a(paramzzk, paramjc, paramRunnable));
  }
  
  public void a(zzk<?> paramzzk, zzr paramzzr)
  {
    paramzzk.b("post-error");
    paramzzr = jc.a(paramzzr);
    a.execute(new a(paramzzk, paramzzr, null));
  }
  
  private class a
    implements Runnable
  {
    private final zzk b;
    private final jc c;
    private final Runnable d;
    
    public a(zzk paramzzk, jc paramjc, Runnable paramRunnable)
    {
      b = paramzzk;
      c = paramjc;
      d = paramRunnable;
    }
    
    public void run()
    {
      if (b.g()) {
        b.c("canceled-at-delivery");
      }
      label97:
      label107:
      for (;;)
      {
        return;
        if (c.a())
        {
          b.a(c.a);
          if (!c.d) {
            break label97;
          }
          b.b("intermediate-response");
        }
        for (;;)
        {
          if (d == null) {
            break label107;
          }
          d.run();
          return;
          b.b(c.c);
          break;
          b.c("done");
        }
      }
    }
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.internal.cu
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */