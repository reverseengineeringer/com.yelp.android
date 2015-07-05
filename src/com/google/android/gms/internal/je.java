package com.google.android.gms.internal;

import android.os.Looper;
import android.util.Log;

public final class je
{
  public static void K(boolean paramBoolean)
  {
    if (!paramBoolean) {
      throw new IllegalStateException();
    }
  }
  
  public static void a(boolean paramBoolean, Object paramObject)
  {
    if (!paramBoolean) {
      throw new IllegalStateException(String.valueOf(paramObject));
    }
  }
  
  public static void aU(String paramString)
  {
    if (Looper.getMainLooper().getThread() != Thread.currentThread())
    {
      Log.e("Asserts", "checkMainThread: current thread " + Thread.currentThread() + " IS NOT the main thread " + Looper.getMainLooper().getThread() + "!");
      throw new IllegalStateException(paramString);
    }
  }
  
  public static void aV(String paramString)
  {
    if (Looper.getMainLooper().getThread() == Thread.currentThread())
    {
      Log.e("Asserts", "checkNotMainThread: current thread " + Thread.currentThread() + " IS the main thread " + Looper.getMainLooper().getThread() + "!");
      throw new IllegalStateException(paramString);
    }
  }
  
  public static void f(Object paramObject)
  {
    if (paramObject == null) {
      throw new IllegalArgumentException("null reference");
    }
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.internal.je
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */