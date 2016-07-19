package com.yelp.android.am;

public abstract class g<Z>
  extends a<Z>
{
  private final int a;
  private final int b;
  
  public g()
  {
    this(Integer.MIN_VALUE, Integer.MIN_VALUE);
  }
  
  public g(int paramInt1, int paramInt2)
  {
    a = paramInt1;
    b = paramInt2;
  }
  
  public final void a(h paramh)
  {
    if (!com.yelp.android.ao.h.a(a, b)) {
      throw new IllegalArgumentException("Width and height must both be > 0 or Target#SIZE_ORIGINAL, but given width: " + a + " and height: " + b + ", either provide dimensions in the constructor" + " or call override()");
    }
    paramh.a(a, b);
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.am.g
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */