package com.google.android.gms.internal;

import android.content.Context;

public abstract class iy<T>
{
  private static iy.a KO = null;
  private static final Object mH = new Object();
  protected final String KP;
  protected final T KQ;
  private T KR = null;
  
  protected iy(String paramString, T paramT)
  {
    KP = paramString;
    KQ = paramT;
  }
  
  public static void H(Context paramContext)
  {
    synchronized (mH)
    {
      if (KO == null) {
        KO = new iy.b(paramContext.getContentResolver());
      }
      return;
    }
  }
  
  public static iy<Integer> a(String paramString, Integer paramInteger)
  {
    return new iy.2(paramString, paramInteger);
  }
  
  public static iy<Boolean> h(String paramString, boolean paramBoolean)
  {
    return new iy.1(paramString, Boolean.valueOf(paramBoolean));
  }
  
  public static iy<String> l(String paramString1, String paramString2)
  {
    return new iy.3(paramString1, paramString2);
  }
  
  public String getKey()
  {
    return KP;
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.internal.iy
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */