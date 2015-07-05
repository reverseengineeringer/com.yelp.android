package com.bumptech.glide.load.engine.bitmap_recycle;

import com.yelp.android.ai.f;
import java.util.Queue;

abstract class d<T extends n>
{
  private final Queue<T> a = f.a(20);
  
  public void a(T paramT)
  {
    if (a.size() < 20) {
      a.offer(paramT);
    }
  }
  
  protected abstract T b();
  
  protected T c()
  {
    n localn2 = (n)a.poll();
    n localn1 = localn2;
    if (localn2 == null) {
      localn1 = b();
    }
    return localn1;
  }
}

/* Location:
 * Qualified Name:     com.bumptech.glide.load.engine.bitmap_recycle.d
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */