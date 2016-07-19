package com.google.android.gms.tagmanager;

import com.google.android.gms.internal.zzrs.a;
import com.google.android.gms.internal.zzrs.b;
import java.util.List;
import java.util.Map;
import java.util.Set;

class ab$1
  implements ab.a
{
  ab$1(ab paramab, Map paramMap1, Map paramMap2, Map paramMap3, Map paramMap4) {}
  
  public void a(zzrs.b paramb, Set<zzrs.a> paramSet1, Set<zzrs.a> paramSet2, z paramz)
  {
    List localList1 = (List)a.get(paramb);
    List localList2 = (List)b.get(paramb);
    if (localList1 != null)
    {
      paramSet1.addAll(localList1);
      paramz.c().a(localList1, localList2);
    }
    paramSet1 = (List)c.get(paramb);
    paramb = (List)d.get(paramb);
    if (paramSet1 != null)
    {
      paramSet2.addAll(paramSet1);
      paramz.d().a(paramSet1, paramb);
    }
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.tagmanager.ab.1
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */