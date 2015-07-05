package com.yelp.android.ak;

public class c
{
  private String a;
  private int b;
  private int c;
  
  public c(String paramString)
  {
    a = paramString;
    b = 0;
    c = 0;
  }
  
  public c(String paramString, int paramInt1, int paramInt2)
  {
    a = paramString;
    b = paramInt1;
    c = paramInt2;
  }
  
  public String a()
  {
    return a;
  }
  
  public int b()
  {
    return b;
  }
  
  public int c()
  {
    return c;
  }
  
  public String d()
  {
    return b() + "" + c();
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.ak.c
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */