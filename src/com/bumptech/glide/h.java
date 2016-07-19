package com.bumptech.glide;

import android.content.Context;
import android.os.Build.VERSION;
import com.bumptech.glide.load.DecodeFormat;
import com.bumptech.glide.load.engine.b;
import com.bumptech.glide.load.engine.executor.FifoPriorityThreadPoolExecutor;
import com.yelp.android.x.c;
import com.yelp.android.x.d;
import com.yelp.android.y.a.a;
import com.yelp.android.y.i;
import java.util.concurrent.ExecutorService;

public class h
{
  private final Context a;
  private b b;
  private c c;
  private com.yelp.android.y.h d;
  private ExecutorService e;
  private ExecutorService f;
  private DecodeFormat g;
  private a.a h;
  
  public h(Context paramContext)
  {
    a = paramContext.getApplicationContext();
  }
  
  g a()
  {
    if (e == null) {
      e = new FifoPriorityThreadPoolExecutor(Math.max(1, Runtime.getRuntime().availableProcessors()));
    }
    if (f == null) {
      f = new FifoPriorityThreadPoolExecutor(1);
    }
    i locali = new i(a);
    if (c == null) {
      if (Build.VERSION.SDK_INT < 11) {
        break label209;
      }
    }
    label209:
    for (c = new com.yelp.android.x.f(locali.b());; c = new d())
    {
      if (d == null) {
        d = new com.yelp.android.y.g(locali.a());
      }
      if (h == null) {
        h = new com.yelp.android.y.f(a);
      }
      if (b == null) {
        b = new b(d, h, f, e);
      }
      if (g == null) {
        g = DecodeFormat.DEFAULT;
      }
      return new g(b, d, c, a, g);
    }
  }
}

/* Location:
 * Qualified Name:     com.bumptech.glide.h
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */