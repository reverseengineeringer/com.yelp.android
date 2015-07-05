package com.google.android.gms.tagmanager;

import com.google.android.gms.internal.a;
import com.google.android.gms.internal.b;
import com.google.android.gms.internal.d.a;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;
import java.util.Map.Entry;
import java.util.Set;

class s
  extends aj
{
  private static final String ID = a.L.toString();
  private static final String aqO = b.cV.toString();
  private static final String aqf = b.bl.toString();
  private final s.a aqP;
  
  public s(s.a parama)
  {
    super(ID, new String[] { aqO });
    aqP = parama;
  }
  
  public d.a B(Map<String, d.a> paramMap)
  {
    String str = di.j((d.a)paramMap.get(aqO));
    HashMap localHashMap = new HashMap();
    paramMap = (d.a)paramMap.get(aqf);
    if (paramMap != null)
    {
      paramMap = di.o(paramMap);
      if (!(paramMap instanceof Map))
      {
        bh.W("FunctionCallMacro: expected ADDITIONAL_PARAMS to be a map.");
        return di.rb();
      }
      paramMap = ((Map)paramMap).entrySet().iterator();
      while (paramMap.hasNext())
      {
        Map.Entry localEntry = (Map.Entry)paramMap.next();
        localHashMap.put(localEntry.getKey().toString(), localEntry.getValue());
      }
    }
    try
    {
      paramMap = di.u(aqP.b(str, localHashMap));
      return paramMap;
    }
    catch (Exception paramMap)
    {
      bh.W("Custom macro/tag " + str + " threw exception " + paramMap.getMessage());
    }
    return di.rb();
  }
  
  public boolean pe()
  {
    return false;
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.tagmanager.s
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */