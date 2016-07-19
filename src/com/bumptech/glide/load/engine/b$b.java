package com.bumptech.glide.load.engine;

import com.yelp.android.y.a;
import com.yelp.android.y.b;

class b$b
  implements a.a
{
  private final com.yelp.android.y.a.a a;
  private volatile a b;
  
  public b$b(com.yelp.android.y.a.a parama)
  {
    a = parama;
  }
  
  public a a()
  {
    if (b == null) {}
    try
    {
      if (b == null) {
        b = a.a();
      }
      if (b == null) {
        b = new b();
      }
      return b;
    }
    finally {}
  }
}

/* Location:
 * Qualified Name:     com.bumptech.glide.load.engine.b.b
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */