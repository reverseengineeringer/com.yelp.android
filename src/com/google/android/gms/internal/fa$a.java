package com.google.android.gms.internal;

@ey
final class fa$a
  extends Exception
{
  private final int tq;
  
  public fa$a(String paramString, int paramInt)
  {
    super(paramString);
    tq = paramInt;
  }
  
  public int getErrorCode()
  {
    return tq;
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.internal.fa.a
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */