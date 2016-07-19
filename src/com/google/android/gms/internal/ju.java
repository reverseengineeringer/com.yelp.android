package com.google.android.gms.internal;

import com.yelp.android.g.a;
import java.util.Arrays;
import java.util.Collections;
import java.util.HashSet;
import java.util.Map;
import java.util.Set;

public final class ju
{
  public static <K, V> Map<K, V> a(K paramK1, V paramV1, K paramK2, V paramV2, K paramK3, V paramV3, K paramK4, V paramV4, K paramK5, V paramV5, K paramK6, V paramV6)
  {
    a locala = new a(6);
    locala.put(paramK1, paramV1);
    locala.put(paramK2, paramV2);
    locala.put(paramK3, paramV3);
    locala.put(paramK4, paramV4);
    locala.put(paramK5, paramV5);
    locala.put(paramK6, paramV6);
    return Collections.unmodifiableMap(locala);
  }
  
  public static <T> Set<T> a()
  {
    return Collections.emptySet();
  }
  
  public static <T> Set<T> a(T paramT)
  {
    return Collections.singleton(paramT);
  }
  
  public static <T> Set<T> a(T paramT1, T paramT2)
  {
    jp localjp = new jp(2);
    localjp.add(paramT1);
    localjp.add(paramT2);
    return Collections.unmodifiableSet(localjp);
  }
  
  public static <T> Set<T> a(T paramT1, T paramT2, T paramT3)
  {
    jp localjp = new jp(3);
    localjp.add(paramT1);
    localjp.add(paramT2);
    localjp.add(paramT3);
    return Collections.unmodifiableSet(localjp);
  }
  
  public static <T> Set<T> a(T paramT1, T paramT2, T paramT3, T paramT4)
  {
    jp localjp = new jp(4);
    localjp.add(paramT1);
    localjp.add(paramT2);
    localjp.add(paramT3);
    localjp.add(paramT4);
    return Collections.unmodifiableSet(localjp);
  }
  
  public static <T> Set<T> a(T... paramVarArgs)
  {
    switch (paramVarArgs.length)
    {
    default: 
      if (paramVarArgs.length > 32) {
        break;
      }
    }
    for (paramVarArgs = new jp(Arrays.asList(paramVarArgs));; paramVarArgs = new HashSet(Arrays.asList(paramVarArgs)))
    {
      return Collections.unmodifiableSet(paramVarArgs);
      return a();
      return a(paramVarArgs[0]);
      return a(paramVarArgs[0], paramVarArgs[1]);
      return a(paramVarArgs[0], paramVarArgs[1], paramVarArgs[2]);
      return a(paramVarArgs[0], paramVarArgs[1], paramVarArgs[2], paramVarArgs[3]);
    }
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.internal.ju
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */