package com.google.android.gms.tagmanager;

import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;
import java.util.Map.Entry;
import java.util.Set;

class da<K, V>
  implements k<K, V>
{
  private final Map<K, V> atM = new HashMap();
  private final int atN;
  private final l.a<K, V> atO;
  private int atP;
  
  da(int paramInt, l.a<K, V> parama)
  {
    atN = paramInt;
    atO = parama;
  }
  
  public void e(K paramK, V paramV)
  {
    if ((paramK == null) || (paramV == null)) {
      try
      {
        throw new NullPointerException("key == null || value == null");
      }
      finally {}
    }
    atP += atO.sizeOf(paramK, paramV);
    if (atP > atN)
    {
      Iterator localIterator = atM.entrySet().iterator();
      do
      {
        if (!localIterator.hasNext()) {
          break;
        }
        Map.Entry localEntry = (Map.Entry)localIterator.next();
        atP -= atO.sizeOf(localEntry.getKey(), localEntry.getValue());
        localIterator.remove();
      } while (atP > atN);
    }
    atM.put(paramK, paramV);
  }
  
  public V get(K paramK)
  {
    try
    {
      paramK = atM.get(paramK);
      return paramK;
    }
    finally
    {
      paramK = finally;
      throw paramK;
    }
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.tagmanager.da
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */