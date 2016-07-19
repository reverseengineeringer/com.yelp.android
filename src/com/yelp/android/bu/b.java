package com.yelp.android.bu;

import java.util.ArrayList;
import java.util.Collection;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Random;
import java.util.Set;

public final class b<T>
{
  private final Random a;
  private final Map<T, Integer> b;
  private T c;
  
  public b(Map<T, Integer> paramMap, Random paramRandom)
  {
    a = paramRandom;
    b = paramMap;
  }
  
  public T a()
  {
    if (c == null)
    {
      Object localObject1 = b.values().iterator();
      for (int i = 0; ((Iterator)localObject1).hasNext(); i = ((Integer)localObject2).intValue() + i)
      {
        localObject2 = (Integer)((Iterator)localObject1).next();
        if (((Integer)localObject2).intValue() < 0) {
          throw new IllegalStateException("All percentages must be >= 0.");
        }
      }
      if (i != 100) {
        throw new IllegalStateException("Bucket percentages must add up to 100.");
      }
      localObject1 = new ArrayList();
      Object localObject2 = b.keySet().iterator();
      while (((Iterator)localObject2).hasNext())
      {
        Object localObject3 = ((Iterator)localObject2).next();
        i = 0;
        while (i < ((Integer)b.get(localObject3)).intValue())
        {
          ((ArrayList)localObject1).add(localObject3);
          i += 1;
        }
      }
      c = new a((List)localObject1, a).a();
    }
    return (T)c;
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.bu.b
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */