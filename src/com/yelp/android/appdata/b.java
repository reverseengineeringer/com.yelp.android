package com.yelp.android.appdata;

public class b
{
  private final int a;
  private final int b;
  
  public b(int paramInt1, int paramInt2)
  {
    a = paramInt1;
    b = paramInt2;
  }
  
  public b(String paramString)
  {
    paramString = paramString.split("\\.");
    a = Integer.parseInt(paramString[0]);
    b = Integer.parseInt(paramString[1]);
  }
  
  public int a()
  {
    return a;
  }
  
  public int b()
  {
    return b;
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.appdata.b
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */