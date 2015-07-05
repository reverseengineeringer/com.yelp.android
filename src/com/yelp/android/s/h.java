package com.yelp.android.s;

import android.annotation.TargetApi;
import android.app.ActivityManager;
import android.content.Context;
import android.content.res.Resources;
import android.os.Build.VERSION;
import android.util.Log;

public class h
{
  private final int a;
  private final int b;
  
  h(ActivityManager paramActivityManager, j paramj)
  {
    int i = a(paramActivityManager);
    int k = paramj.a() * paramj.b() * 4;
    int j = k * 3;
    k *= 2;
    if (k + j <= i)
    {
      b = k;
      a = j;
      if (Log.isLoggable("MemorySizeCalculator", 3))
      {
        paramj = new StringBuilder().append("Calculated memory cache size: ").append(a(b)).append(" pool size: ").append(a(a)).append(" memory class limited? ");
        if (k + j <= i) {
          break label204;
        }
      }
    }
    label204:
    for (boolean bool = true;; bool = false)
    {
      Log.d("MemorySizeCalculator", bool + " max size: " + a(i) + " memoryClass: " + paramActivityManager.getMemoryClass() + " isLowMemoryDevice: " + b(paramActivityManager));
      return;
      int m = Math.round(i / 5.0F);
      b = (m * 2);
      a = (m * 3);
      break;
    }
  }
  
  public h(Context paramContext)
  {
    this((ActivityManager)paramContext.getSystemService("activity"), new i(paramContext.getResources().getDisplayMetrics()));
  }
  
  private static int a(int paramInt)
  {
    return paramInt / 1048576;
  }
  
  private static int a(ActivityManager paramActivityManager)
  {
    int i = paramActivityManager.getMemoryClass();
    boolean bool = b(paramActivityManager);
    float f2 = i * 1024 * 1024;
    if (bool) {}
    for (float f1 = 0.33F;; f1 = 0.4F) {
      return Math.round(f1 * f2);
    }
  }
  
  @TargetApi(19)
  private static boolean b(ActivityManager paramActivityManager)
  {
    int i = Build.VERSION.SDK_INT;
    return (i < 11) || ((i >= 19) && (paramActivityManager.isLowRamDevice()));
  }
  
  public int a()
  {
    return b;
  }
  
  public int b()
  {
    return a;
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.s.h
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */