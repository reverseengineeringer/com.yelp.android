package com.google.android.gms.internal;

import android.util.Log;

@ey
public final class gr
{
  public static void S(String paramString)
  {
    if (v(3)) {
      Log.d("Ads", paramString);
    }
  }
  
  public static void T(String paramString)
  {
    if (v(6)) {
      Log.e("Ads", paramString);
    }
  }
  
  public static void U(String paramString)
  {
    if (v(4)) {
      Log.i("Ads", paramString);
    }
  }
  
  public static void V(String paramString)
  {
    if (v(2)) {
      Log.v("Ads", paramString);
    }
  }
  
  public static void W(String paramString)
  {
    if (v(5)) {
      Log.w("Ads", paramString);
    }
  }
  
  public static void a(String paramString, Throwable paramThrowable)
  {
    if (v(3)) {
      Log.d("Ads", paramString, paramThrowable);
    }
  }
  
  public static void b(String paramString, Throwable paramThrowable)
  {
    if (v(6)) {
      Log.e("Ads", paramString, paramThrowable);
    }
  }
  
  public static void c(String paramString, Throwable paramThrowable)
  {
    if (v(4)) {
      Log.i("Ads", paramString, paramThrowable);
    }
  }
  
  public static void d(String paramString, Throwable paramThrowable)
  {
    if (v(5)) {
      Log.w("Ads", paramString, paramThrowable);
    }
  }
  
  public static boolean v(int paramInt)
  {
    return ((paramInt >= 5) || (Log.isLoggable("Ads", paramInt))) && (paramInt != 2);
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.internal.gr
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */