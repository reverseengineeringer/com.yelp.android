package com.google.android.gms.internal;

import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.Map.Entry;
import java.util.Set;

public class kj<K, V>
{
  private int NA;
  private int NB;
  private int NC;
  private final LinkedHashMap<K, V> Nw;
  private int Nx;
  private int Ny;
  private int Nz;
  private int size;
  
  public kj(int paramInt)
  {
    if (paramInt <= 0) {
      throw new IllegalArgumentException("maxSize <= 0");
    }
    Nx = paramInt;
    Nw = new LinkedHashMap(0, 0.75F, true);
  }
  
  private int c(K paramK, V paramV)
  {
    int i = sizeOf(paramK, paramV);
    if (i < 0) {
      throw new IllegalStateException("Negative size: " + paramK + "=" + paramV);
    }
    return i;
  }
  
  protected V create(K paramK)
  {
    return null;
  }
  
  protected void entryRemoved(boolean paramBoolean, K paramK, V paramV1, V paramV2) {}
  
  public final void evictAll()
  {
    trimToSize(-1);
  }
  
  public final V get(K paramK)
  {
    if (paramK == null) {
      throw new NullPointerException("key == null");
    }
    Object localObject1;
    try
    {
      localObject1 = Nw.get(paramK);
      if (localObject1 != null)
      {
        NB += 1;
        return (V)localObject1;
      }
      NC += 1;
      localObject1 = create(paramK);
      if (localObject1 == null) {
        return null;
      }
    }
    finally {}
    try
    {
      Nz += 1;
      Object localObject2 = Nw.put(paramK, localObject1);
      if (localObject2 != null) {
        Nw.put(paramK, localObject2);
      }
      for (;;)
      {
        if (localObject2 == null) {
          break;
        }
        entryRemoved(false, paramK, localObject1, localObject2);
        return (V)localObject2;
        size += c(paramK, localObject1);
      }
      trimToSize(Nx);
    }
    finally {}
    return (V)localObject1;
  }
  
  public final V put(K paramK, V paramV)
  {
    if ((paramK == null) || (paramV == null)) {
      throw new NullPointerException("key == null || value == null");
    }
    try
    {
      Ny += 1;
      size += c(paramK, paramV);
      Object localObject = Nw.put(paramK, paramV);
      if (localObject != null) {
        size -= c(paramK, localObject);
      }
      if (localObject != null) {
        entryRemoved(false, paramK, localObject, paramV);
      }
      trimToSize(Nx);
      return (V)localObject;
    }
    finally {}
  }
  
  public final int size()
  {
    try
    {
      int i = size;
      return i;
    }
    finally
    {
      localObject = finally;
      throw ((Throwable)localObject);
    }
  }
  
  protected int sizeOf(K paramK, V paramV)
  {
    return 1;
  }
  
  public final String toString()
  {
    int i = 0;
    try
    {
      int j = NB + NC;
      if (j != 0) {
        i = NB * 100 / j;
      }
      String str = String.format("LruCache[maxSize=%d,hits=%d,misses=%d,hitRate=%d%%]", new Object[] { Integer.valueOf(Nx), Integer.valueOf(NB), Integer.valueOf(NC), Integer.valueOf(i) });
      return str;
    }
    finally {}
  }
  
  public void trimToSize(int paramInt)
  {
    Object localObject3;
    Object localObject2;
    try
    {
      if ((size < 0) || ((Nw.isEmpty()) && (size != 0))) {
        throw new IllegalStateException(getClass().getName() + ".sizeOf() is reporting inconsistent results!");
      }
    }
    finally
    {
      throw ((Throwable)localObject1);
      if ((size <= paramInt) || (Nw.isEmpty())) {
        return;
      }
      localObject3 = (Map.Entry)Nw.entrySet().iterator().next();
      localObject2 = ((Map.Entry)localObject3).getKey();
      localObject3 = ((Map.Entry)localObject3).getValue();
      Nw.remove(localObject2);
      size -= c(localObject2, localObject3);
      NA += 1;
    }
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.internal.kj
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */