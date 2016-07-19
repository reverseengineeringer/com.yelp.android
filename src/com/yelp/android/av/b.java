package com.yelp.android.av;

import android.annotation.TargetApi;
import android.app.Activity;
import io.fabric.sdk.android.a.b;
import java.util.concurrent.ExecutorService;

@TargetApi(14)
class b
  extends a
{
  private final a.b a = new a.b()
  {
    public void a(Activity paramAnonymousActivity)
    {
      if (a()) {
        b.a(b.this).submit(new Runnable()
        {
          public void run()
          {
            c();
          }
        });
      }
    }
  };
  private final ExecutorService b;
  
  public b(io.fabric.sdk.android.a parama, ExecutorService paramExecutorService)
  {
    b = paramExecutorService;
    parama.a(a);
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.av.b
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */