package com.google.android.gms.internal;

public class bt
  implements kl
{
  private int a;
  private int b;
  private final int c;
  private final float d;
  
  public bt()
  {
    this(2500, 1, 1.0F);
  }
  
  public bt(int paramInt1, int paramInt2, float paramFloat)
  {
    a = paramInt1;
    c = paramInt2;
    d = paramFloat;
  }
  
  public int a()
  {
    return a;
  }
  
  public void a(zzr paramzzr)
    throws zzr
  {
    b += 1;
    a = ((int)(a + a * d));
    if (!c()) {
      throw paramzzr;
    }
  }
  
  public int b()
  {
    return b;
  }
  
  protected boolean c()
  {
    return b <= c;
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.internal.bt
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */