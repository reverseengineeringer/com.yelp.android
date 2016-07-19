package com.google.android.gms.internal;

import java.io.IOException;
import java.lang.reflect.Array;

public class lm<M extends ll<M>, T>
{
  protected final int a;
  protected final Class<T> b;
  public final int c;
  protected final boolean d;
  
  int a(Object paramObject)
  {
    if (d) {
      return b(paramObject);
    }
    return c(paramObject);
  }
  
  void a(Object paramObject, zzsn paramzzsn)
    throws IOException
  {
    if (d)
    {
      c(paramObject, paramzzsn);
      return;
    }
    b(paramObject, paramzzsn);
  }
  
  protected int b(Object paramObject)
  {
    int j = 0;
    int m = Array.getLength(paramObject);
    int i = 0;
    while (i < m)
    {
      int k = j;
      if (Array.get(paramObject, i) != null) {
        k = j + c(Array.get(paramObject, i));
      }
      i += 1;
      j = k;
    }
    return j;
  }
  
  protected void b(Object paramObject, zzsn paramzzsn)
  {
    for (;;)
    {
      try
      {
        paramzzsn.e(c);
        switch (a)
        {
        case 10: 
          throw new IllegalArgumentException("Unknown type " + a);
        }
      }
      catch (IOException paramObject)
      {
        throw new IllegalStateException((Throwable)paramObject);
      }
      paramObject = (lq)paramObject;
      int i = lt.b(c);
      paramzzsn.a((lq)paramObject);
      paramzzsn.c(i, 4);
      return;
      paramzzsn.b((lq)paramObject);
      return;
    }
  }
  
  protected int c(Object paramObject)
  {
    int i = lt.b(c);
    switch (a)
    {
    default: 
      throw new IllegalArgumentException("Unknown type " + a);
    case 10: 
      return zzsn.b(i, (lq)paramObject);
    }
    return zzsn.c(i, (lq)paramObject);
  }
  
  protected void c(Object paramObject, zzsn paramzzsn)
  {
    int j = Array.getLength(paramObject);
    int i = 0;
    while (i < j)
    {
      Object localObject = Array.get(paramObject, i);
      if (localObject != null) {
        b(localObject, paramzzsn);
      }
      i += 1;
    }
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.internal.lm
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */