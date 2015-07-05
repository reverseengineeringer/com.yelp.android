package com.yelp.android.ag;

import android.view.View;

public abstract class k<T extends View, Z>
  extends a<Z>
{
  protected final T a;
  private final l b;
  
  public k(T paramT)
  {
    if (paramT == null) {
      throw new NullPointerException("View must not be null!");
    }
    a = paramT;
    b = new l(paramT);
  }
  
  public T a()
  {
    return a;
  }
  
  public void a(com.bumptech.glide.request.a parama)
  {
    a.setTag(parama);
  }
  
  public void a(h paramh)
  {
    b.a(paramh);
  }
  
  public com.bumptech.glide.request.a f()
  {
    Object localObject = a.getTag();
    if (localObject != null)
    {
      if ((localObject instanceof com.bumptech.glide.request.a)) {
        return (com.bumptech.glide.request.a)localObject;
      }
      throw new IllegalArgumentException("You must not call setTag() on a view Glide is targeting");
    }
    return null;
  }
  
  public String toString()
  {
    return "Target for: " + a;
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.ag.k
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */