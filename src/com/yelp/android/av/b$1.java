package com.yelp.android.av;

import android.app.Activity;
import io.fabric.sdk.android.a.b;
import java.util.concurrent.ExecutorService;

class b$1
  extends a.b
{
  b$1(b paramb) {}
  
  public void a(Activity paramActivity)
  {
    if (a.a()) {
      b.a(a).submit(new Runnable()
      {
        public void run()
        {
          a.c();
        }
      });
    }
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.av.b.1
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */