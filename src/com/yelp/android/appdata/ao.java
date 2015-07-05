package com.yelp.android.appdata;

import android.content.Context;
import android.content.res.Resources;
import android.util.DisplayMetrics;

public class ao
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
  public static int o = 100;
  public static int p = 100;
  public static int q = 40;
  public static int r = 40;
  public static int s = 65;
  public static int t = 65;
  public static int u = o + g;
  private static float v = 1.0F;
  private static boolean w = false;
  
  public static float a()
  {
    return v;
  }
  
  public static int a(int paramInt)
  {
    if (!w) {
      throw new IllegalStateException("init() must be called first");
    }
    return (int)(paramInt * v + 0.5F);
  }
  
  public static int a(Context paramContext, int paramInt)
  {
    return (int)(getResourcesgetDisplayMetricsdensity * paramInt + 0.5F);
  }
  
  public static void a(float paramFloat)
  {
    v = paramFloat;
    w = true;
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
    o = a(100);
    p = a(100);
    q = a(40);
    r = a(40);
    s = a(65);
    t = a(65);
    u = a(108);
  }
  
  public static float b(float paramFloat)
  {
    if (!w) {
      throw new IllegalStateException("init() must be called first");
    }
    return v * paramFloat;
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.appdata.ao
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */