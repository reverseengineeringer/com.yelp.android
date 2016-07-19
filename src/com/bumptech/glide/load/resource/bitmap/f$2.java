package com.bumptech.glide.load.resource.bitmap;

final class f$2
  extends f
{
  protected int a(int paramInt1, int paramInt2, int paramInt3, int paramInt4)
  {
    int i = 1;
    paramInt1 = (int)Math.ceil(Math.max(paramInt2 / paramInt4, paramInt1 / paramInt3));
    paramInt2 = Math.max(1, Integer.highestOneBit(paramInt1));
    if (paramInt2 < paramInt1) {}
    for (paramInt1 = i;; paramInt1 = 0) {
      return paramInt2 << paramInt1;
    }
  }
  
  public String a()
  {
    return "AT_MOST.com.bumptech.glide.load.data.bitmap";
  }
}

/* Location:
 * Qualified Name:     com.bumptech.glide.load.resource.bitmap.f.2
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */