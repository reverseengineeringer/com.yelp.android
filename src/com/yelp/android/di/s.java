package com.yelp.android.di;

abstract class s<E>
  extends a<E>
{
  private static final Integer e = Integer.getInteger("jctools.spsc.max.lookahead.step", 4096);
  protected final int d;
  
  public s(int paramInt)
  {
    super(paramInt);
    d = Math.min(paramInt / 4, e.intValue());
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.di.s
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */