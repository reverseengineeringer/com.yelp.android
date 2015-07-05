package com.yelp.android.af;

public class l<R>
  implements g<R>
{
  private final k a;
  private e<R> b;
  
  l(k paramk)
  {
    a = paramk;
  }
  
  public e<R> a(boolean paramBoolean1, boolean paramBoolean2)
  {
    if ((paramBoolean1) || (!paramBoolean2)) {
      return h.b();
    }
    if (b == null) {
      b = new j(a);
    }
    return b;
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.af.l
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */