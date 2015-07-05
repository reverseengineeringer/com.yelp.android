package com.google.android.gms.internal;

final class fd$a
  extends Exception
{
  private final int tq;
  
  public fd$a(String paramString, int paramInt)
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
 * Qualified Name:     com.google.android.gms.internal.fd.a
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */