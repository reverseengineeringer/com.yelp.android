package com.google.android.gms.internal;

import android.os.Binder;

public abstract class jb<T>
{
  private static final Object c = new Object();
  private static a d = null;
  private static int e = 0;
  private static String f = "com.google.android.providers.gsf.permission.READ_GSERVICES";
  protected final String a;
  protected final T b;
  private T g = null;
  
  protected jb(String paramString, T paramT)
  {
    a = paramString;
    b = paramT;
  }
  
  public static int a()
  {
    return e;
  }
  
  public static jb<Float> a(String paramString, Float paramFloat)
  {
    new jb(paramString, paramFloat)
    {
      protected Float b(String paramAnonymousString)
      {
        return jb.e().a(a, (Float)b);
      }
    };
  }
  
  public static jb<Integer> a(String paramString, Integer paramInteger)
  {
    new jb(paramString, paramInteger)
    {
      protected Integer b(String paramAnonymousString)
      {
        return jb.e().a(a, (Integer)b);
      }
    };
  }
  
  public static jb<Long> a(String paramString, Long paramLong)
  {
    new jb(paramString, paramLong)
    {
      protected Long b(String paramAnonymousString)
      {
        return jb.e().a(a, (Long)b);
      }
    };
  }
  
  public static jb<String> a(String paramString1, String paramString2)
  {
    new jb(paramString1, paramString2)
    {
      protected String b(String paramAnonymousString)
      {
        return jb.e().a(a, (String)b);
      }
    };
  }
  
  public static jb<Boolean> a(String paramString, boolean paramBoolean)
  {
    new jb(paramString, Boolean.valueOf(paramBoolean))
    {
      protected Boolean b(String paramAnonymousString)
      {
        return jb.e().a(a, (Boolean)b);
      }
    };
  }
  
  public static boolean b()
  {
    return d != null;
  }
  
  protected abstract T a(String paramString);
  
  public final T c()
  {
    if (g != null) {
      return (T)g;
    }
    return (T)a(a);
  }
  
  public final T d()
  {
    long l = Binder.clearCallingIdentity();
    try
    {
      Object localObject1 = c();
      return (T)localObject1;
    }
    finally
    {
      Binder.restoreCallingIdentity(l);
    }
  }
  
  private static abstract interface a
  {
    public abstract Boolean a(String paramString, Boolean paramBoolean);
    
    public abstract Float a(String paramString, Float paramFloat);
    
    public abstract Integer a(String paramString, Integer paramInteger);
    
    public abstract Long a(String paramString, Long paramLong);
    
    public abstract String a(String paramString1, String paramString2);
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.internal.jb
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */