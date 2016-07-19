package com.google.android.gms.analytics.internal;

import android.text.TextUtils;
import com.google.android.gms.common.internal.zzx;
import java.util.ArrayList;
import java.util.Collections;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Map.Entry;
import java.util.Set;

public class c
{
  private final Map<String, String> a;
  private final List<Command> b;
  private final long c;
  private final long d;
  private final int e;
  private final boolean f;
  private final String g;
  
  public c(q paramq, Map<String, String> paramMap, long paramLong, boolean paramBoolean)
  {
    this(paramq, paramMap, paramLong, paramBoolean, 0L, 0, null);
  }
  
  public c(q paramq, Map<String, String> paramMap, long paramLong1, boolean paramBoolean, long paramLong2, int paramInt)
  {
    this(paramq, paramMap, paramLong1, paramBoolean, paramLong2, paramInt, null);
  }
  
  public c(q paramq, Map<String, String> paramMap, long paramLong1, boolean paramBoolean, long paramLong2, int paramInt, List<Command> paramList)
  {
    zzx.zzz(paramq);
    zzx.zzz(paramMap);
    d = paramLong1;
    f = paramBoolean;
    c = paramLong2;
    e = paramInt;
    if (paramList != null) {}
    Object localObject2;
    for (Object localObject1 = paramList;; localObject1 = Collections.EMPTY_LIST)
    {
      b = ((List)localObject1);
      g = a(paramList);
      paramList = new HashMap();
      localObject1 = paramMap.entrySet().iterator();
      while (((Iterator)localObject1).hasNext())
      {
        localObject2 = (Map.Entry)((Iterator)localObject1).next();
        if (a(((Map.Entry)localObject2).getKey()))
        {
          String str = a(paramq, ((Map.Entry)localObject2).getKey());
          if (str != null) {
            paramList.put(str, b(paramq, ((Map.Entry)localObject2).getValue()));
          }
        }
      }
    }
    paramMap = paramMap.entrySet().iterator();
    while (paramMap.hasNext())
    {
      localObject1 = (Map.Entry)paramMap.next();
      if (!a(((Map.Entry)localObject1).getKey()))
      {
        localObject2 = a(paramq, ((Map.Entry)localObject1).getKey());
        if (localObject2 != null) {
          paramList.put(localObject2, b(paramq, ((Map.Entry)localObject1).getValue()));
        }
      }
    }
    if (!TextUtils.isEmpty(g))
    {
      n.a(paramList, "_v", g);
      if ((g.equals("ma4.0.0")) || (g.equals("ma4.0.1"))) {
        paramList.remove("adid");
      }
    }
    a = Collections.unmodifiableMap(paramList);
  }
  
  public static c a(q paramq, c paramc, Map<String, String> paramMap)
  {
    return new c(paramq, paramMap, paramc.d(), paramc.f(), paramc.c(), paramc.a(), paramc.e());
  }
  
  private static String a(q paramq, Object paramObject)
  {
    if (paramObject == null) {
      paramq = null;
    }
    Object localObject;
    do
    {
      return paramq;
      localObject = paramObject.toString();
      paramObject = localObject;
      if (((String)localObject).startsWith("&")) {
        paramObject = ((String)localObject).substring(1);
      }
      int i = ((String)paramObject).length();
      localObject = paramObject;
      if (i > 256)
      {
        localObject = ((String)paramObject).substring(0, 256);
        paramq.c("Hit param name is too long and will be trimmed", Integer.valueOf(i), localObject);
      }
      paramq = (q)localObject;
    } while (!TextUtils.isEmpty((CharSequence)localObject));
    return null;
  }
  
  private String a(String paramString1, String paramString2)
  {
    zzx.zzcM(paramString1);
    if (!paramString1.startsWith("&")) {}
    for (boolean bool = true;; bool = false)
    {
      zzx.zzb(bool, "Short param name required");
      paramString1 = (String)a.get(paramString1);
      if (paramString1 == null) {
        break;
      }
      return paramString1;
    }
    return paramString2;
  }
  
  private static String a(List<Command> paramList)
  {
    Command localCommand;
    if (paramList != null)
    {
      paramList = paramList.iterator();
      do
      {
        if (!paramList.hasNext()) {
          break;
        }
        localCommand = (Command)paramList.next();
      } while (!"appendVersion".equals(localCommand.a()));
    }
    for (paramList = localCommand.b();; paramList = null)
    {
      if (TextUtils.isEmpty(paramList)) {
        return null;
      }
      return paramList;
    }
  }
  
  private static boolean a(Object paramObject)
  {
    if (paramObject == null) {
      return false;
    }
    return paramObject.toString().startsWith("&");
  }
  
  private static String b(q paramq, Object paramObject)
  {
    if (paramObject == null) {}
    for (paramObject = "";; paramObject = paramObject.toString())
    {
      int i = ((String)paramObject).length();
      Object localObject = paramObject;
      if (i > 8192)
      {
        localObject = ((String)paramObject).substring(0, 8192);
        paramq.c("Hit param value is too long and will be trimmed", Integer.valueOf(i), localObject);
      }
      return (String)localObject;
    }
  }
  
  public int a()
  {
    return e;
  }
  
  public Map<String, String> b()
  {
    return a;
  }
  
  public long c()
  {
    return c;
  }
  
  public long d()
  {
    return d;
  }
  
  public List<Command> e()
  {
    return b;
  }
  
  public boolean f()
  {
    return f;
  }
  
  public long g()
  {
    return n.b(a("_s", "0"));
  }
  
  public String h()
  {
    return a("_m", "");
  }
  
  public String toString()
  {
    StringBuffer localStringBuffer = new StringBuffer();
    localStringBuffer.append("ht=").append(d);
    if (c != 0L) {
      localStringBuffer.append(", dbId=").append(c);
    }
    if (e != 0L) {
      localStringBuffer.append(", appUID=").append(e);
    }
    Object localObject = new ArrayList(a.keySet());
    Collections.sort((List)localObject);
    localObject = ((List)localObject).iterator();
    while (((Iterator)localObject).hasNext())
    {
      String str = (String)((Iterator)localObject).next();
      localStringBuffer.append(", ");
      localStringBuffer.append(str);
      localStringBuffer.append("=");
      localStringBuffer.append((String)a.get(str));
    }
    return localStringBuffer.toString();
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.analytics.internal.c
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */