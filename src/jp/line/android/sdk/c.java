package jp.line.android.sdk;

import android.content.Context;
import java.util.concurrent.CountDownLatch;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;
import java.util.concurrent.TimeUnit;

public final class c
{
  static CountDownLatch a;
  static a b;
  
  public static a a()
  {
    CountDownLatch localCountDownLatch1;
    if (b == null) {
      if (a != null) {
        localCountDownLatch1 = a;
      }
    }
    try
    {
      for (;;)
      {
        localCountDownLatch1.await(2000L, TimeUnit.MILLISECONDS);
        if (b != null) {
          break;
        }
        throw new RuntimeException("LineSdkConfig was not initialized.");
        try
        {
          if (a == null) {
            throw new RuntimeException("LineSdkConfig was not initialized.");
          }
        }
        finally {}
        CountDownLatch localCountDownLatch2 = a;
      }
      return b;
    }
    catch (InterruptedException localInterruptedException)
    {
      for (;;) {}
    }
  }
  
  public static final void a(Context paramContext)
  {
    a(paramContext, -1, null, null);
  }
  
  public static final void a(Context paramContext, int paramInt, Phase paramPhase, b paramb)
  {
    int k = 0;
    int j = 0;
    int i = k;
    if (b == null)
    {
      i = k;
      if (a == null) {
        i = j;
      }
    }
    try
    {
      if (b == null)
      {
        i = j;
        if (a == null)
        {
          a = new CountDownLatch(1);
          i = 1;
        }
      }
      if (i != 0) {
        Executors.newSingleThreadExecutor().execute(new d(paramb, paramContext, paramInt, paramPhase));
      }
      return;
    }
    finally {}
  }
  
  public static final class a
    implements b
  {
    public final jp.line.android.sdk.api.a a(a parama)
    {
      return new com.yelp.android.cw.a();
    }
    
    public final jp.line.android.sdk.login.a b(a parama)
    {
      return new com.yelp.android.cz.b();
    }
  }
}

/* Location:
 * Qualified Name:     jp.line.android.sdk.c
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */