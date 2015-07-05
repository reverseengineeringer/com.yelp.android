package com.google.android.gms.tagmanager;

import com.google.android.gms.internal.d.a;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Map.Entry;
import java.util.Set;

class di
{
  private static final Object auc = null;
  private static Long aud = new Long(0L);
  private static Double aue = new Double(0.0D);
  private static dh auf = dh.z(0L);
  private static String aug = new String("");
  private static Boolean auh = new Boolean(false);
  private static List<Object> aui = new ArrayList(0);
  private static Map<Object, Object> auj = new HashMap();
  private static d.a auk = u(aug);
  
  public static d.a cZ(String paramString)
  {
    d.a locala = new d.a();
    type = 5;
    gA = paramString;
    return locala;
  }
  
  private static dh da(String paramString)
  {
    try
    {
      dh localdh = dh.cY(paramString);
      return localdh;
    }
    catch (NumberFormatException localNumberFormatException)
    {
      bh.T("Failed to convert '" + paramString + "' to a number.");
    }
    return auf;
  }
  
  private static Long db(String paramString)
  {
    paramString = da(paramString);
    if (paramString == auf) {
      return aud;
    }
    return Long.valueOf(paramString.longValue());
  }
  
  private static Double dc(String paramString)
  {
    paramString = da(paramString);
    if (paramString == auf) {
      return aue;
    }
    return Double.valueOf(paramString.doubleValue());
  }
  
  private static Boolean dd(String paramString)
  {
    if ("true".equalsIgnoreCase(paramString)) {
      return Boolean.TRUE;
    }
    if ("false".equalsIgnoreCase(paramString)) {
      return Boolean.FALSE;
    }
    return auh;
  }
  
  private static double getDouble(Object paramObject)
  {
    if ((paramObject instanceof Number)) {
      return ((Number)paramObject).doubleValue();
    }
    bh.T("getDouble received non-Number");
    return 0.0D;
  }
  
  public static String j(d.a parama)
  {
    return p(o(parama));
  }
  
  public static dh k(d.a parama)
  {
    return q(o(parama));
  }
  
  public static Long l(d.a parama)
  {
    return r(o(parama));
  }
  
  public static Double m(d.a parama)
  {
    return s(o(parama));
  }
  
  public static Boolean n(d.a parama)
  {
    return t(o(parama));
  }
  
  public static Object o(d.a parama)
  {
    int k = 0;
    int j = 0;
    int i = 0;
    if (parama == null) {
      return auc;
    }
    Object localObject1;
    Object localObject2;
    switch (type)
    {
    default: 
      bh.T("Failed to convert a value of type: " + type);
      return auc;
    case 1: 
      return gv;
    case 2: 
      localObject1 = new ArrayList(gw.length);
      parama = gw;
      j = parama.length;
      while (i < j)
      {
        localObject2 = o(parama[i]);
        if (localObject2 == auc) {
          return auc;
        }
        ((ArrayList)localObject1).add(localObject2);
        i += 1;
      }
      return localObject1;
    case 3: 
      if (gx.length != gy.length)
      {
        bh.T("Converting an invalid value to object: " + parama.toString());
        return auc;
      }
      localObject1 = new HashMap(gy.length);
      i = k;
      while (i < gx.length)
      {
        localObject2 = o(gx[i]);
        Object localObject3 = o(gy[i]);
        if ((localObject2 == auc) || (localObject3 == auc)) {
          return auc;
        }
        ((Map)localObject1).put(localObject2, localObject3);
        i += 1;
      }
      return localObject1;
    case 4: 
      bh.T("Trying to convert a macro reference to object");
      return auc;
    case 5: 
      bh.T("Trying to convert a function id to object");
      return auc;
    case 6: 
      return Long.valueOf(gB);
    case 7: 
      localObject1 = new StringBuffer();
      parama = gD;
      k = parama.length;
      i = j;
      while (i < k)
      {
        localObject2 = j(parama[i]);
        if (localObject2 == aug) {
          return auc;
        }
        ((StringBuffer)localObject1).append((String)localObject2);
        i += 1;
      }
      return ((StringBuffer)localObject1).toString();
    }
    return Boolean.valueOf(gC);
  }
  
  public static String p(Object paramObject)
  {
    if (paramObject == null) {
      return aug;
    }
    return paramObject.toString();
  }
  
  public static dh q(Object paramObject)
  {
    if ((paramObject instanceof dh)) {
      return (dh)paramObject;
    }
    if (w(paramObject)) {
      return dh.z(x(paramObject));
    }
    if (v(paramObject)) {
      return dh.a(Double.valueOf(getDouble(paramObject)));
    }
    return da(p(paramObject));
  }
  
  public static Object qV()
  {
    return auc;
  }
  
  public static Long qW()
  {
    return aud;
  }
  
  public static Double qX()
  {
    return aue;
  }
  
  public static Boolean qY()
  {
    return auh;
  }
  
  public static dh qZ()
  {
    return auf;
  }
  
  public static Long r(Object paramObject)
  {
    if (w(paramObject)) {
      return Long.valueOf(x(paramObject));
    }
    return db(p(paramObject));
  }
  
  public static String ra()
  {
    return aug;
  }
  
  public static d.a rb()
  {
    return auk;
  }
  
  public static Double s(Object paramObject)
  {
    if (v(paramObject)) {
      return Double.valueOf(getDouble(paramObject));
    }
    return dc(p(paramObject));
  }
  
  public static Boolean t(Object paramObject)
  {
    if ((paramObject instanceof Boolean)) {
      return (Boolean)paramObject;
    }
    return dd(p(paramObject));
  }
  
  public static d.a u(Object paramObject)
  {
    boolean bool = false;
    Object localObject1 = new d.a();
    if ((paramObject instanceof d.a)) {
      return (d.a)paramObject;
    }
    if ((paramObject instanceof String))
    {
      type = 1;
      gv = ((String)paramObject);
    }
    for (;;)
    {
      gF = bool;
      return (d.a)localObject1;
      Object localObject2;
      Object localObject3;
      if ((paramObject instanceof List))
      {
        type = 2;
        localObject2 = (List)paramObject;
        paramObject = new ArrayList(((List)localObject2).size());
        localObject2 = ((List)localObject2).iterator();
        bool = false;
        if (((Iterator)localObject2).hasNext())
        {
          localObject3 = u(((Iterator)localObject2).next());
          if (localObject3 == auk) {
            return auk;
          }
          if ((bool) || (gF)) {}
          for (bool = true;; bool = false)
          {
            ((List)paramObject).add(localObject3);
            break;
          }
        }
        gw = ((d.a[])((List)paramObject).toArray(new d.a[0]));
      }
      else if ((paramObject instanceof Map))
      {
        type = 3;
        localObject3 = ((Map)paramObject).entrySet();
        paramObject = new ArrayList(((Set)localObject3).size());
        localObject2 = new ArrayList(((Set)localObject3).size());
        localObject3 = ((Set)localObject3).iterator();
        bool = false;
        if (((Iterator)localObject3).hasNext())
        {
          Object localObject4 = (Map.Entry)((Iterator)localObject3).next();
          d.a locala = u(((Map.Entry)localObject4).getKey());
          localObject4 = u(((Map.Entry)localObject4).getValue());
          if ((locala == auk) || (localObject4 == auk)) {
            return auk;
          }
          if ((bool) || (gF) || (gF)) {}
          for (bool = true;; bool = false)
          {
            ((List)paramObject).add(locala);
            ((List)localObject2).add(localObject4);
            break;
          }
        }
        gx = ((d.a[])((List)paramObject).toArray(new d.a[0]));
        gy = ((d.a[])((List)localObject2).toArray(new d.a[0]));
      }
      else if (v(paramObject))
      {
        type = 1;
        gv = paramObject.toString();
      }
      else if (w(paramObject))
      {
        type = 6;
        gB = x(paramObject);
      }
      else
      {
        if (!(paramObject instanceof Boolean)) {
          break;
        }
        type = 8;
        gC = ((Boolean)paramObject).booleanValue();
      }
    }
    localObject1 = new StringBuilder().append("Converting to Value from unknown object type: ");
    if (paramObject == null) {}
    for (paramObject = "null";; paramObject = paramObject.getClass().toString())
    {
      bh.T((String)paramObject);
      return auk;
    }
  }
  
  private static boolean v(Object paramObject)
  {
    return ((paramObject instanceof Double)) || ((paramObject instanceof Float)) || (((paramObject instanceof dh)) && (((dh)paramObject).qQ()));
  }
  
  private static boolean w(Object paramObject)
  {
    return ((paramObject instanceof Byte)) || ((paramObject instanceof Short)) || ((paramObject instanceof Integer)) || ((paramObject instanceof Long)) || (((paramObject instanceof dh)) && (((dh)paramObject).qR()));
  }
  
  private static long x(Object paramObject)
  {
    if ((paramObject instanceof Number)) {
      return ((Number)paramObject).longValue();
    }
    bh.T("getInt64 received non-Number");
    return 0L;
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.tagmanager.di
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */