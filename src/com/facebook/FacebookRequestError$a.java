package com.facebook;

class FacebookRequestError$a
{
  private final int a;
  private final int b;
  
  private FacebookRequestError$a(int paramInt1, int paramInt2)
  {
    a = paramInt1;
    b = paramInt2;
  }
  
  boolean a(int paramInt)
  {
    return (a <= paramInt) && (paramInt <= b);
  }
}

/* Location:
 * Qualified Name:     com.facebook.FacebookRequestError.a
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */