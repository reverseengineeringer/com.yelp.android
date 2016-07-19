package com.yelp.android.df;

import android.os.Handler;
import android.os.Looper;
import rx.d;

public final class a
{
  public static d a()
  {
    d locald = com.yelp.android.de.a.a().b().b();
    if (locald != null) {
      return locald;
    }
    return a.a;
  }
  
  private static class a
  {
    static final d a = new b(new Handler(Looper.getMainLooper()));
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.df.a
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */