package com.bumptech.glide;

import android.content.Context;
import android.os.Build.VERSION;
import com.bumptech.glide.load.DecodeFormat;
import com.yelp.android.s.c;
import java.io.File;
import java.util.concurrent.ExecutorService;

public class i
{
  private final Context a;
  private com.bumptech.glide.load.engine.d b;
  private com.bumptech.glide.load.engine.bitmap_recycle.e c;
  private com.yelp.android.s.f d;
  private com.yelp.android.s.a e;
  private ExecutorService f;
  private ExecutorService g;
  private DecodeFormat h;
  
  public i(Context paramContext)
  {
    a = paramContext.getApplicationContext();
  }
  
  h a()
  {
    if (f == null) {
      f = new com.yelp.android.t.a(Math.max(1, Runtime.getRuntime().availableProcessors()));
    }
    if (g == null) {
      g = new com.yelp.android.t.a(1);
    }
    Object localObject = new com.yelp.android.s.h(a);
    if (c == null) {
      if (Build.VERSION.SDK_INT < 11) {
        break label234;
      }
    }
    label234:
    for (c = new com.bumptech.glide.load.engine.bitmap_recycle.i(((com.yelp.android.s.h)localObject).b());; c = new com.bumptech.glide.load.engine.bitmap_recycle.f())
    {
      if (d == null) {
        d = new com.yelp.android.s.e(((com.yelp.android.s.h)localObject).a());
      }
      if (e == null)
      {
        localObject = h.a(a);
        if (localObject != null) {
          e = com.yelp.android.s.d.a((File)localObject, 262144000);
        }
        if (e == null) {
          e = new c();
        }
      }
      if (b == null) {
        b = new com.bumptech.glide.load.engine.d(d, e, g, f);
      }
      if (h == null) {
        h = DecodeFormat.DEFAULT;
      }
      return new h(b, d, c, a, h);
    }
  }
}

/* Location:
 * Qualified Name:     com.bumptech.glide.i
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */