package com.google.android.gms.internal;

import java.io.IOException;
import java.lang.reflect.Array;
import java.util.ArrayList;
import java.util.List;

public class qr<M extends qq<M>, T>
{
  protected final Class<T> ayX;
  protected final boolean ayY;
  public final int tag;
  protected final int type;
  
  private qr(int paramInt1, Class<T> paramClass, int paramInt2, boolean paramBoolean)
  {
    type = paramInt1;
    ayX = paramClass;
    tag = paramInt2;
    ayY = paramBoolean;
  }
  
  public static <M extends qq<M>, T extends qw> qr<M, T> a(int paramInt1, Class<T> paramClass, int paramInt2)
  {
    return new qr(paramInt1, paramClass, paramInt2, false);
  }
  
  private T n(List<qy> paramList)
  {
    int j = 0;
    ArrayList localArrayList = new ArrayList();
    int i = 0;
    while (i < paramList.size())
    {
      localObject = (qy)paramList.get(i);
      if (azi.length != 0) {
        a((qy)localObject, localArrayList);
      }
      i += 1;
    }
    int k = localArrayList.size();
    if (k == 0)
    {
      paramList = null;
      return paramList;
    }
    Object localObject = ayX.cast(Array.newInstance(ayX.getComponentType(), k));
    i = j;
    for (;;)
    {
      paramList = (List<qy>)localObject;
      if (i >= k) {
        break;
      }
      Array.set(localObject, i, localArrayList.get(i));
      i += 1;
    }
  }
  
  private T o(List<qy> paramList)
  {
    if (paramList.isEmpty()) {
      return null;
    }
    paramList = (qy)paramList.get(paramList.size() - 1);
    return (T)ayX.cast(x(qo.p(azi)));
  }
  
  int B(Object paramObject)
  {
    if (ayY) {
      return C(paramObject);
    }
    return D(paramObject);
  }
  
  protected int C(Object paramObject)
  {
    int j = 0;
    int m = Array.getLength(paramObject);
    int i = 0;
    while (i < m)
    {
      int k = j;
      if (Array.get(paramObject, i) != null) {
        k = j + D(Array.get(paramObject, i));
      }
      i += 1;
      j = k;
    }
    return j;
  }
  
  protected int D(Object paramObject)
  {
    int i = qz.hl(tag);
    switch (type)
    {
    default: 
      throw new IllegalArgumentException("Unknown type " + type);
    case 10: 
      return qp.b(i, (qw)paramObject);
    }
    return qp.c(i, (qw)paramObject);
  }
  
  protected void a(qy paramqy, List<Object> paramList)
  {
    paramList.add(x(qo.p(azi)));
  }
  
  void a(Object paramObject, qp paramqp)
  {
    if (ayY)
    {
      c(paramObject, paramqp);
      return;
    }
    b(paramObject, paramqp);
  }
  
  protected void b(Object paramObject, qp paramqp)
  {
    for (;;)
    {
      try
      {
        paramqp.hd(tag);
        switch (type)
        {
        case 10: 
          throw new IllegalArgumentException("Unknown type " + type);
        }
      }
      catch (IOException paramObject)
      {
        throw new IllegalStateException((Throwable)paramObject);
      }
      paramObject = (qw)paramObject;
      int i = qz.hl(tag);
      paramqp.b((qw)paramObject);
      paramqp.x(i, 4);
      return;
      paramqp.c((qw)paramObject);
      return;
    }
  }
  
  protected void c(Object paramObject, qp paramqp)
  {
    int j = Array.getLength(paramObject);
    int i = 0;
    while (i < j)
    {
      Object localObject = Array.get(paramObject, i);
      if (localObject != null) {
        b(localObject, paramqp);
      }
      i += 1;
    }
  }
  
  final T m(List<qy> paramList)
  {
    if (paramList == null) {
      return null;
    }
    if (ayY) {
      return (T)n(paramList);
    }
    return (T)o(paramList);
  }
  
  protected Object x(qo paramqo)
  {
    Class localClass;
    if (ayY) {
      localClass = ayX.getComponentType();
    }
    for (;;)
    {
      try
      {
        switch (type)
        {
        case 10: 
          throw new IllegalArgumentException("Unknown type " + type);
        }
      }
      catch (InstantiationException paramqo)
      {
        throw new IllegalArgumentException("Error creating instance of class " + localClass, paramqo);
        localClass = ayX;
        continue;
        qw localqw = (qw)localClass.newInstance();
        paramqo.a(localqw, qz.hl(tag));
        return localqw;
        localqw = (qw)localClass.newInstance();
        paramqo.a(localqw);
        return localqw;
      }
      catch (IllegalAccessException paramqo)
      {
        throw new IllegalArgumentException("Error creating instance of class " + localClass, paramqo);
      }
      catch (IOException paramqo)
      {
        throw new IllegalArgumentException("Error reading extension field", paramqo);
      }
    }
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.internal.qr
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */