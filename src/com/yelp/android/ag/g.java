package com.yelp.android.ag;

public abstract class g<Z>
  extends a<Z>
{
  private final int a;
  private final int b;
  
  public g(int paramInt1, int paramInt2)
  {
    a = paramInt1;
    b = paramInt2;
  }
  
  public final void a(h paramh)
  {
    if ((a <= 0) || (b <= 0)) {
      throw new IllegalArgumentException("Width and height must both be > 0, but given width: " + a + " and" + " height: " + b + ", either provide dimensions in the constructor or call override()");
    }
    paramh.a(a, b);
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.ag.g
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */