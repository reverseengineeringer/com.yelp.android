package com.yelp.android.y;

import android.annotation.TargetApi;
import android.app.ActivityManager;
import android.content.Context;
import android.content.res.Resources;
import android.os.Build.VERSION;
import android.text.format.Formatter;
import android.util.DisplayMetrics;
import android.util.Log;

public class i
{
  private final int a;
  private final int b;
  private final Context c;
  
  public i(Context paramContext)
  {
    this(paramContext, (ActivityManager)paramContext.getSystemService("activity"), new a(paramContext.getResources().getDisplayMetrics()));
  }
  
  i(Context paramContext, ActivityManager paramActivityManager, b paramb)
  {
    c = paramContext;
    int i = a(paramActivityManager);
    int k = paramb.a() * paramb.b() * 4;
    int j = k * 4;
    k *= 2;
    if (k + j <= i)
    {
      b = k;
      a = j;
      if (Log.isLoggable("MemorySizeCalculator", 3))
      {
        paramContext = new StringBuilder().append("Calculated memory cache size: ").append(a(b)).append(" pool size: ").append(a(a)).append(" memory class limited? ");
        if (k + j <= i) {
          break label217;
        }
      }
    }
    label217:
    for (boolean bool = true;; bool = false)
    {
      Log.d("MemorySizeCalculator", bool + " max size: " + a(i) + " memoryClass: " + paramActivityManager.getMemoryClass() + " isLowMemoryDevice: " + b(paramActivityManager));
      return;
      int m = Math.round(i / 6.0F);
      b = (m * 2);
      a = (m * 4);
      break;
    }
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
  
  private String a(int paramInt)
  {
    return Formatter.formatFileSize(c, paramInt);
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
  
  private static class a
    implements i.b
  {
    private final DisplayMetrics a;
    
    public a(DisplayMetrics paramDisplayMetrics)
    {
      a = paramDisplayMetrics;
    }
    
    public int a()
    {
      return a.widthPixels;
    }
    
    public int b()
    {
      return a.heightPixels;
    }
  }
  
  static abstract interface b
  {
    public abstract int a();
    
    public abstract int b();
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.y.i
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */