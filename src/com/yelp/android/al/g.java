package com.yelp.android.al;

public class g<R>
  implements d<R>
{
  private final f.a a;
  private c<R> b;
  
  g(f.a parama)
  {
    a = parama;
  }
  
  public c<R> a(boolean paramBoolean1, boolean paramBoolean2)
  {
    if ((paramBoolean1) || (!paramBoolean2)) {
      return e.b();
    }
    if (b == null) {
      b = new f(a);
    }
    return b;
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.al.g
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */