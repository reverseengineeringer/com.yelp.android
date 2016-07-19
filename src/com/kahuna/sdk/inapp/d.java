package com.kahuna.sdk.inapp;

import com.kahuna.sdk.w;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;
import org.json.JSONObject;

public class d
{
  private final String a;
  private final String b;
  private final int c;
  private final int d;
  private final e e;
  private final e f;
  private final int g;
  private final Map<String, b> h;
  private final Map<String, a> i;
  private final Map<String, String> j;
  
  d(String paramString1, String paramString2, int paramInt1, int paramInt2, e parame1, e parame2, Map<String, a> paramMap, int paramInt3, Map<String, b> paramMap1, Map<String, String> paramMap2)
  {
    a = paramString1;
    b = paramString2;
    c = paramInt1;
    d = paramInt2;
    e = parame1;
    f = parame2;
    i = paramMap;
    g = paramInt3;
    h = paramMap1;
    j = paramMap2;
  }
  
  public static d a(JSONObject paramJSONObject)
  {
    String str1;
    String str2;
    int k;
    int m;
    e locale1;
    e locale2;
    if (!w.a(paramJSONObject)) {
      if ((paramJSONObject.has("templateId")) && (paramJSONObject.has("type")) && (paramJSONObject.has("subtype")))
      {
        str1 = paramJSONObject.optString("templateId");
        str2 = paramJSONObject.optString("type");
        k = paramJSONObject.optInt("subtype", -1);
        if ((w.a(str1)) || (w.a(str2)) || (k < 0)) {
          break label225;
        }
        m = paramJSONObject.optInt("fallback_subtype", -1);
        locale1 = e.a(paramJSONObject.optJSONObject("title"));
        locale2 = e.a(paramJSONObject.optJSONObject("message"));
        if (!paramJSONObject.has("bgcolor")) {
          break label230;
        }
      }
    }
    label225:
    label230:
    for (Integer localInteger = w.e(paramJSONObject.optJSONObject("bgcolor"));; localInteger = Integer.valueOf(-1))
    {
      paramJSONObject.optJSONObject("attributes");
      Map localMap = a(paramJSONObject.optJSONObject("images"), b.class);
      if (localMap == null) {}
      do
      {
        return null;
        paramJSONObject = a(paramJSONObject.optJSONObject("buttons"), a.class);
      } while (paramJSONObject == null);
      if ((locale2 != null) && (localInteger != null) && (!w.a(paramJSONObject))) {}
      for (paramJSONObject = new a(str1, str2, k, locale1, locale2, paramJSONObject).a(m).b(localInteger.intValue()).a(localMap).a();; paramJSONObject = null) {
        return paramJSONObject;
      }
    }
  }
  
  private static Map<String, ? extends Object> a(JSONObject paramJSONObject, Class<?> paramClass)
  {
    HashMap localHashMap = new HashMap();
    if (!w.a(paramJSONObject))
    {
      Iterator localIterator = paramJSONObject.keys();
      while (localIterator.hasNext())
      {
        String str = (String)localIterator.next();
        Object localObject = paramJSONObject.optJSONObject(str);
        if (paramClass == b.class)
        {
          localObject = b.a((JSONObject)localObject);
          if (localObject == null) {
            return null;
          }
          localHashMap.put(str, localObject);
        }
        else if (paramClass == a.class)
        {
          localObject = a.a(str, (JSONObject)localObject);
          if (localObject == null) {
            return null;
          }
          localHashMap.put(str, localObject);
        }
      }
    }
    return localHashMap;
  }
  
  String a()
  {
    return a;
  }
  
  String b()
  {
    return b;
  }
  
  int c()
  {
    return c;
  }
  
  int d()
  {
    return d;
  }
  
  e e()
  {
    return e;
  }
  
  e f()
  {
    return f;
  }
  
  int g()
  {
    return g;
  }
  
  Map<String, a> h()
  {
    return i;
  }
  
  Map<String, b> i()
  {
    return h;
  }
  
  static class a
  {
    private String a;
    private String b;
    private int c;
    private int d;
    private e e;
    private e f;
    private int g;
    private Map<String, b> h;
    private Map<String, a> i;
    private Map<String, String> j;
    
    a(String paramString1, String paramString2, int paramInt, e parame1, e parame2, Map<String, a> paramMap)
    {
      a = paramString1;
      b = paramString2;
      c = paramInt;
      e = parame1;
      f = parame2;
      i = paramMap;
    }
    
    a a(int paramInt)
    {
      d = paramInt;
      return this;
    }
    
    a a(Map<String, b> paramMap)
    {
      h = paramMap;
      return this;
    }
    
    d a()
    {
      return new d(a, b, c, d, e, f, i, g, h, j);
    }
    
    a b(int paramInt)
    {
      g = paramInt;
      return this;
    }
  }
}

/* Location:
 * Qualified Name:     com.kahuna.sdk.inapp.d
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */