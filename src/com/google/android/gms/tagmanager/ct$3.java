package com.google.android.gms.tagmanager;

import java.util.List;
import java.util.Map;
import java.util.Set;

class ct$3
  implements ct.a
{
  ct$3(ct paramct, Map paramMap1, Map paramMap2, Map paramMap3, Map paramMap4) {}
  
  public void a(cr.e parame, Set<cr.a> paramSet1, Set<cr.a> paramSet2, cn paramcn)
  {
    List localList1 = (List)ato.get(parame);
    List localList2 = (List)atp.get(parame);
    if (localList1 != null)
    {
      paramSet1.addAll(localList1);
      paramcn.pR().c(localList1, localList2);
    }
    paramSet1 = (List)atq.get(parame);
    parame = (List)atr.get(parame);
    if (paramSet1 != null)
    {
      paramSet2.addAll(paramSet1);
      paramcn.pS().c(paramSet1, parame);
    }
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.tagmanager.ct.3
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */