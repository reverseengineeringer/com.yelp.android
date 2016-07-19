package com.yelp.android.appdata;

public class n
{
  public static int a = 20;
  public static int b = 16;
  public static int c = 15;
  public static int d = 11;
  public static int e = 10;
  public static int f = 9;
  public static int g = 8;
  public static int h = 7;
  public static int i = 6;
  public static int j = 5;
  public static int k = 4;
  public static int l = 3;
  public static int m = 2;
  public static int n = 1;
  private static float o = 1.0F;
  private static boolean p = false;
  
  public static float a()
  {
    return o;
  }
  
  public static int a(int paramInt)
  {
    if (!p) {
      throw new IllegalStateException("init() must be called first");
    }
    return (int)(paramInt * o + 0.5F);
  }
  
  public static void a(float paramFloat)
  {
    o = paramFloat;
    p = true;
    a = a(20);
    b = a(16);
    c = a(15);
    d = a(11);
    e = a(10);
    f = a(9);
    g = a(8);
    h = a(7);
    i = a(6);
    j = a(5);
    k = a(4);
    l = a(3);
    m = a(2);
    n = a(1);
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.appdata.n
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */