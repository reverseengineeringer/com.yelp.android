package com.google.android.gms.analytics.internal;

import com.google.android.gms.common.internal.zzd;
import com.google.android.gms.common.internal.zzx;
import com.google.android.gms.internal.jb;

public final class ak$a<V>
{
  private final V a;
  private final jb<V> b;
  private V c;
  
  private ak$a(jb<V> paramjb, V paramV)
  {
    zzx.zzz(paramjb);
    b = paramjb;
    a = paramV;
  }
  
  static a<Float> a(String paramString, float paramFloat)
  {
    return a(paramString, paramFloat, paramFloat);
  }
  
  static a<Float> a(String paramString, float paramFloat1, float paramFloat2)
  {
    return new a(jb.a(paramString, Float.valueOf(paramFloat2)), Float.valueOf(paramFloat1));
  }
  
  static a<Integer> a(String paramString, int paramInt)
  {
    return a(paramString, paramInt, paramInt);
  }
  
  static a<Integer> a(String paramString, int paramInt1, int paramInt2)
  {
    return new a(jb.a(paramString, Integer.valueOf(paramInt2)), Integer.valueOf(paramInt1));
  }
  
  static a<Long> a(String paramString, long paramLong)
  {
    return a(paramString, paramLong, paramLong);
  }
  
  static a<Long> a(String paramString, long paramLong1, long paramLong2)
  {
    return new a(jb.a(paramString, Long.valueOf(paramLong2)), Long.valueOf(paramLong1));
  }
  
  static a<String> a(String paramString1, String paramString2)
  {
    return a(paramString1, paramString2, paramString2);
  }
  
  static a<String> a(String paramString1, String paramString2, String paramString3)
  {
    return new a(jb.a(paramString1, paramString3), paramString2);
  }
  
  static a<Boolean> a(String paramString, boolean paramBoolean)
  {
    return a(paramString, paramBoolean, paramBoolean);
  }
  
  static a<Boolean> a(String paramString, boolean paramBoolean1, boolean paramBoolean2)
  {
    return new a(jb.a(paramString, paramBoolean2), Boolean.valueOf(paramBoolean1));
  }
  
  public V a()
  {
    if (c != null) {
      return (V)c;
    }
    if ((zzd.zzakE) && (jb.b())) {
      return (V)b.d();
    }
    return (V)a;
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.analytics.internal.ak.a
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */