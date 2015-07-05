package com.google.android.gms.tagmanager;

import com.google.android.gms.internal.b;
import com.google.android.gms.internal.d.a;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;
import org.json.JSONArray;
import org.json.JSONObject;

class ba
{
  public static cr.c cI(String paramString)
  {
    paramString = n(new JSONObject(paramString));
    cr.d locald = cr.c.qo();
    int i = 0;
    while (i < gx.length)
    {
      locald.a(cr.a.qk().b(b.df.toString(), gx[i]).b(b.cU.toString(), di.cZ(m.ph())).b(m.pi(), gy[i]).qn());
      i += 1;
    }
    return locald.qr();
  }
  
  private static d.a n(Object paramObject)
  {
    return di.u(o(paramObject));
  }
  
  static Object o(Object paramObject)
  {
    if ((paramObject instanceof JSONArray)) {
      throw new RuntimeException("JSONArrays are not supported");
    }
    if (JSONObject.NULL.equals(paramObject)) {
      throw new RuntimeException("JSON nulls are not supported");
    }
    Object localObject = paramObject;
    if ((paramObject instanceof JSONObject))
    {
      paramObject = (JSONObject)paramObject;
      localObject = new HashMap();
      Iterator localIterator = ((JSONObject)paramObject).keys();
      while (localIterator.hasNext())
      {
        String str = (String)localIterator.next();
        ((Map)localObject).put(str, o(((JSONObject)paramObject).get(str)));
      }
    }
    return localObject;
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.tagmanager.ba
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */