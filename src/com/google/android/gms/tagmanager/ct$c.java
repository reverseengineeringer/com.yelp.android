package com.google.android.gms.tagmanager;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.HashSet;
import java.util.List;
import java.util.Map;
import java.util.Set;

class ct$c
{
  private final Set<cr.e> atj = new HashSet();
  private final Map<cr.e, List<cr.a>> att = new HashMap();
  private final Map<cr.e, List<cr.a>> atu = new HashMap();
  private final Map<cr.e, List<String>> atv = new HashMap();
  private final Map<cr.e, List<String>> atw = new HashMap();
  private cr.a atx;
  
  public void a(cr.e parame, cr.a parama)
  {
    List localList = (List)att.get(parame);
    Object localObject = localList;
    if (localList == null)
    {
      localObject = new ArrayList();
      att.put(parame, localObject);
    }
    ((List)localObject).add(parama);
  }
  
  public void a(cr.e parame, String paramString)
  {
    List localList = (List)atv.get(parame);
    Object localObject = localList;
    if (localList == null)
    {
      localObject = new ArrayList();
      atv.put(parame, localObject);
    }
    ((List)localObject).add(paramString);
  }
  
  public void b(cr.e parame)
  {
    atj.add(parame);
  }
  
  public void b(cr.e parame, cr.a parama)
  {
    List localList = (List)atu.get(parame);
    Object localObject = localList;
    if (localList == null)
    {
      localObject = new ArrayList();
      atu.put(parame, localObject);
    }
    ((List)localObject).add(parama);
  }
  
  public void b(cr.e parame, String paramString)
  {
    List localList = (List)atw.get(parame);
    Object localObject = localList;
    if (localList == null)
    {
      localObject = new ArrayList();
      atw.put(parame, localObject);
    }
    ((List)localObject).add(paramString);
  }
  
  public void i(cr.a parama)
  {
    atx = parama;
  }
  
  public Set<cr.e> qH()
  {
    return atj;
  }
  
  public Map<cr.e, List<cr.a>> qI()
  {
    return att;
  }
  
  public Map<cr.e, List<String>> qJ()
  {
    return atv;
  }
  
  public Map<cr.e, List<String>> qK()
  {
    return atw;
  }
  
  public Map<cr.e, List<cr.a>> qL()
  {
    return atu;
  }
  
  public cr.a qM()
  {
    return atx;
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.tagmanager.ct.c
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */