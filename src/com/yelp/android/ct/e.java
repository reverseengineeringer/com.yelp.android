package com.yelp.android.ct;

import android.content.Context;
import io.fabric.sdk.android.services.common.CommonUtils;
import java.util.concurrent.Future;
import java.util.concurrent.ScheduledExecutorService;

public abstract class e<T>
  implements h
{
  protected final Context a;
  protected final ScheduledExecutorService b;
  protected i<T> c;
  
  public e(Context paramContext, i<T> parami, d paramd, ScheduledExecutorService paramScheduledExecutorService)
  {
    a = paramContext.getApplicationContext();
    b = paramScheduledExecutorService;
    c = parami;
    paramd.a(this);
  }
  
  protected abstract i<T> a();
  
  public void a(final T paramT)
  {
    a(new Runnable()
    {
      public void run()
      {
        try
        {
          c.a(paramT);
          return;
        }
        catch (Exception localException)
        {
          CommonUtils.a(a, "Crashlytics failed to record event", localException);
        }
      }
    });
  }
  
  public void a(final T paramT, final boolean paramBoolean)
  {
    b(new Runnable()
    {
      public void run()
      {
        try
        {
          c.a(paramT);
          if (paramBoolean) {
            c.e();
          }
          return;
        }
        catch (Exception localException)
        {
          CommonUtils.a(a, "Failed to record event.", localException);
        }
      }
    });
  }
  
  protected void a(Runnable paramRunnable)
  {
    try
    {
      b.submit(paramRunnable).get();
      return;
    }
    catch (Exception paramRunnable)
    {
      CommonUtils.a(a, "Failed to run events task", paramRunnable);
    }
  }
  
  public void a(String paramString)
  {
    b(new Runnable()
    {
      public void run()
      {
        try
        {
          c.b();
          return;
        }
        catch (Exception localException)
        {
          CommonUtils.a(a, "Failed to send events files.", localException);
        }
      }
    });
  }
  
  public void b()
  {
    b(new Runnable()
    {
      public void run()
      {
        try
        {
          i locali = c;
          c = a();
          locali.c();
          return;
        }
        catch (Exception localException)
        {
          CommonUtils.a(a, "Failed to disable events.", localException);
        }
      }
    });
  }
  
  protected void b(Runnable paramRunnable)
  {
    try
    {
      b.submit(paramRunnable);
      return;
    }
    catch (Exception paramRunnable)
    {
      CommonUtils.a(a, "Failed to submit events task", paramRunnable);
    }
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.ct.e
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */