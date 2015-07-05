package com.yelp.android.util;

public class b
{
  private static boolean a = System.getProperty("os.arch").contains("arm");
  private static boolean b = System.getProperty("os.arch").contains("86");
  
  public static boolean a()
  {
    return a;
  }
  
  public static boolean b()
  {
    return b;
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.util.b
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */