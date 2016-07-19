package com.google.android.gms.tagmanager;

import com.google.android.gms.internal.d.a;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Map.Entry;
import java.util.Set;

public class ag
{
  private static final Object a = null;
  private static Long b = new Long(0L);
  private static Double c = new Double(0.0D);
  private static zzde d = zzde.zzam(0L);
  private static String e = new String("");
  private static Boolean f = new Boolean(false);
  private static List<Object> g = new ArrayList(0);
  private static Map<Object, Object> h = new HashMap();
  private static d.a i = c(e);
  
  public static d.a a()
  {
    return i;
  }
  
  private static Boolean a(String paramString)
  {
    if ("true".equalsIgnoreCase(paramString)) {
      return Boolean.TRUE;
    }
    if ("false".equalsIgnoreCase(paramString)) {
      return Boolean.FALSE;
    }
    return f;
  }
  
  public static String a(d.a parama)
  {
    return a(c(parama));
  }
  
  public static String a(Object paramObject)
  {
    if (paramObject == null) {
      return e;
    }
    return paramObject.toString();
  }
  
  public static Boolean b(d.a parama)
  {
    return b(c(parama));
  }
  
  public static Boolean b(Object paramObject)
  {
    if ((paramObject instanceof Boolean)) {
      return (Boolean)paramObject;
    }
    return a(a(paramObject));
  }
  
  public static d.a c(Object paramObject)
  {
    boolean bool = false;
    Object localObject1 = new d.a();
    if ((paramObject instanceof d.a)) {
      return (d.a)paramObject;
    }
    if ((paramObject instanceof String))
    {
      a = 1;
      b = ((String)paramObject);
    }
    for (;;)
    {
      l = bool;
      return (d.a)localObject1;
      Object localObject2;
      Object localObject3;
      if ((paramObject instanceof List))
      {
        a = 2;
        localObject2 = (List)paramObject;
        paramObject = new ArrayList(((List)localObject2).size());
        localObject2 = ((List)localObject2).iterator();
        bool = false;
        if (((Iterator)localObject2).hasNext())
        {
          localObject3 = c(((Iterator)localObject2).next());
          if (localObject3 == i) {
            return i;
          }
          if ((bool) || (l)) {}
          for (bool = true;; bool = false)
          {
            ((List)paramObject).add(localObject3);
            break;
          }
        }
        c = ((d.a[])((List)paramObject).toArray(new d.a[0]));
      }
      else if ((paramObject instanceof Map))
      {
        a = 3;
        localObject3 = ((Map)paramObject).entrySet();
        paramObject = new ArrayList(((Set)localObject3).size());
        localObject2 = new ArrayList(((Set)localObject3).size());
        localObject3 = ((Set)localObject3).iterator();
        bool = false;
        if (((Iterator)localObject3).hasNext())
        {
          Object localObject4 = (Map.Entry)((Iterator)localObject3).next();
          d.a locala = c(((Map.Entry)localObject4).getKey());
          localObject4 = c(((Map.Entry)localObject4).getValue());
          if ((locala == i) || (localObject4 == i)) {
            return i;
          }
          if ((bool) || (l) || (l)) {}
          for (bool = true;; bool = false)
          {
            ((List)paramObject).add(locala);
            ((List)localObject2).add(localObject4);
            break;
          }
        }
        d = ((d.a[])((List)paramObject).toArray(new d.a[0]));
        e = ((d.a[])((List)localObject2).toArray(new d.a[0]));
      }
      else if (d(paramObject))
      {
        a = 1;
        b = paramObject.toString();
      }
      else if (e(paramObject))
      {
        a = 6;
        h = f(paramObject);
      }
      else
      {
        if (!(paramObject instanceof Boolean)) {
          break;
        }
        a = 8;
        i = ((Boolean)paramObject).booleanValue();
      }
    }
    localObject1 = new StringBuilder().append("Converting to Value from unknown object type: ");
    if (paramObject == null) {}
    for (paramObject = "null";; paramObject = paramObject.getClass().toString())
    {
      m.a((String)paramObject);
      return i;
    }
  }
  
  public static Object c(d.a parama)
  {
    int m = 0;
    int k = 0;
    int j = 0;
    if (parama == null) {
      return a;
    }
    Object localObject1;
    Object localObject2;
    switch (a)
    {
    default: 
      m.a("Failed to convert a value of type: " + a);
      return a;
    case 1: 
      return b;
    case 2: 
      localObject1 = new ArrayList(c.length);
      parama = c;
      k = parama.length;
      while (j < k)
      {
        localObject2 = c(parama[j]);
        if (localObject2 == a) {
          return a;
        }
        ((ArrayList)localObject1).add(localObject2);
        j += 1;
      }
      return localObject1;
    case 3: 
      if (d.length != e.length)
      {
        m.a("Converting an invalid value to object: " + parama.toString());
        return a;
      }
      localObject1 = new HashMap(e.length);
      j = m;
      while (j < d.length)
      {
        localObject2 = c(d[j]);
        Object localObject3 = c(e[j]);
        if ((localObject2 == a) || (localObject3 == a)) {
          return a;
        }
        ((Map)localObject1).put(localObject2, localObject3);
        j += 1;
      }
      return localObject1;
    case 4: 
      m.a("Trying to convert a macro reference to object");
      return a;
    case 5: 
      m.a("Trying to convert a function id to object");
      return a;
    case 6: 
      return Long.valueOf(h);
    case 7: 
      localObject1 = new StringBuffer();
      parama = parama.j;
      m = parama.length;
      j = k;
      while (j < m)
      {
        localObject2 = a(parama[j]);
        if (localObject2 == e) {
          return a;
        }
        ((StringBuffer)localObject1).append((String)localObject2);
        j += 1;
      }
      return ((StringBuffer)localObject1).toString();
    }
    return Boolean.valueOf(i);
  }
  
  private static boolean d(Object paramObject)
  {
    return ((paramObject instanceof Double)) || ((paramObject instanceof Float)) || (((paramObject instanceof zzde)) && (((zzde)paramObject).zzHu()));
  }
  
  private static boolean e(Object paramObject)
  {
    return ((paramObject instanceof Byte)) || ((paramObject instanceof Short)) || ((paramObject instanceof Integer)) || ((paramObject instanceof Long)) || (((paramObject instanceof zzde)) && (((zzde)paramObject).zzHv()));
  }
  
  private static long f(Object paramObject)
  {
    if ((paramObject instanceof Number)) {
      return ((Number)paramObject).longValue();
    }
    m.a("getInt64 received non-Number");
    return 0L;
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.tagmanager.ag
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */