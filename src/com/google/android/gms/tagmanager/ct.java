package com.google.android.gms.tagmanager;

import android.content.Context;
import com.google.android.gms.internal.c.i;
import com.google.android.gms.internal.d.a;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Map.Entry;
import java.util.Set;

class ct
{
  private static final bz<d.a> atb = new bz(di.rb(), true);
  private final DataLayer aqn;
  private final cr.c atc;
  private final ag atd;
  private final Map<String, aj> ate;
  private final Map<String, aj> atf;
  private final Map<String, aj> atg;
  private final k<cr.a, bz<d.a>> ath;
  private final k<String, ct.b> ati;
  private final Set<cr.e> atj;
  private final Map<String, ct.c> atk;
  private volatile String atl;
  private int atm;
  
  public ct(Context paramContext, cr.c paramc, DataLayer paramDataLayer, s.a parama1, s.a parama2, ag paramag)
  {
    if (paramc == null) {
      throw new NullPointerException("resource cannot be null");
    }
    atc = paramc;
    atj = new HashSet(paramc.qp());
    aqn = paramDataLayer;
    atd = paramag;
    paramc = new ct.1(this);
    ath = new l().a(1048576, paramc);
    paramc = new ct.2(this);
    ati = new l().a(1048576, paramc);
    ate = new HashMap();
    b(new i(paramContext));
    b(new s(parama2));
    b(new w(paramDataLayer));
    b(new dj(paramContext, paramDataLayer));
    atf = new HashMap();
    c(new q());
    c(new ad());
    c(new ae());
    c(new al());
    c(new am());
    c(new bd());
    c(new be());
    c(new ci());
    c(new dc());
    atg = new HashMap();
    a(new b(paramContext));
    a(new c(paramContext));
    a(new e(paramContext));
    a(new f(paramContext));
    a(new g(paramContext));
    a(new h(paramContext));
    a(new m());
    a(new p(atc.getVersion()));
    a(new s(parama1));
    a(new u(paramDataLayer));
    a(new z(paramContext));
    a(new aa());
    a(new ac());
    a(new ah(this));
    a(new an());
    a(new ao());
    a(new ax(paramContext));
    a(new az());
    a(new bc());
    a(new bj());
    a(new bl(paramContext));
    a(new ca());
    a(new cc());
    a(new cf());
    a(new ch());
    a(new cj(paramContext));
    a(new cu());
    a(new cv());
    a(new de());
    a(new dk());
    atk = new HashMap();
    paramDataLayer = atj.iterator();
    while (paramDataLayer.hasNext())
    {
      parama1 = (cr.e)paramDataLayer.next();
      if (paramag.pH())
      {
        a(parama1.qx(), parama1.qy(), "add macro");
        a(parama1.qC(), parama1.qz(), "remove macro");
        a(parama1.qv(), parama1.qA(), "add tag");
        a(parama1.qw(), parama1.qB(), "remove tag");
      }
      int i = 0;
      while (i < parama1.qx().size())
      {
        parama2 = (cr.a)parama1.qx().get(i);
        paramc = "Unknown";
        paramContext = paramc;
        if (paramag.pH())
        {
          paramContext = paramc;
          if (i < parama1.qy().size()) {
            paramContext = (String)parama1.qy().get(i);
          }
        }
        paramc = e(atk, h(parama2));
        paramc.b(parama1);
        paramc.a(parama1, parama2);
        paramc.a(parama1, paramContext);
        i += 1;
      }
      i = 0;
      while (i < parama1.qC().size())
      {
        parama2 = (cr.a)parama1.qC().get(i);
        paramc = "Unknown";
        paramContext = paramc;
        if (paramag.pH())
        {
          paramContext = paramc;
          if (i < parama1.qz().size()) {
            paramContext = (String)parama1.qz().get(i);
          }
        }
        paramc = e(atk, h(parama2));
        paramc.b(parama1);
        paramc.b(parama1, parama2);
        paramc.b(parama1, paramContext);
        i += 1;
      }
    }
    paramContext = atc.qq().entrySet().iterator();
    while (paramContext.hasNext())
    {
      paramc = (Map.Entry)paramContext.next();
      paramDataLayer = ((List)paramc.getValue()).iterator();
      while (paramDataLayer.hasNext())
      {
        parama1 = (cr.a)paramDataLayer.next();
        if (!di.n((d.a)parama1.ql().get(com.google.android.gms.internal.b.dG.toString())).booleanValue()) {
          e(atk, (String)paramc.getKey()).i(parama1);
        }
      }
    }
  }
  
  private bz<d.a> a(d.a parama, Set<String> paramSet, dl paramdl)
  {
    if (!gF) {
      return new bz(parama, true);
    }
    bz localbz1;
    switch (type)
    {
    case 5: 
    case 6: 
    default: 
      bh.T("Unknown type: " + type);
      return atb;
    case 2: 
      locala = cr.g(parama);
      gw = new d.a[gw.length];
      i = 0;
      while (i < gw.length)
      {
        localbz1 = a(gw[i], paramSet, paramdl.fK(i));
        if (localbz1 == atb) {
          return atb;
        }
        gw[i] = ((d.a)localbz1.getObject());
        i += 1;
      }
      return new bz(locala, false);
    case 3: 
      locala = cr.g(parama);
      if (gx.length != gy.length)
      {
        bh.T("Invalid serving value: " + parama.toString());
        return atb;
      }
      gx = new d.a[gx.length];
      gy = new d.a[gx.length];
      i = 0;
      while (i < gx.length)
      {
        localbz1 = a(gx[i], paramSet, paramdl.fL(i));
        bz localbz2 = a(gy[i], paramSet, paramdl.fM(i));
        if ((localbz1 == atb) || (localbz2 == atb)) {
          return atb;
        }
        gx[i] = ((d.a)localbz1.getObject());
        gy[i] = ((d.a)localbz2.getObject());
        i += 1;
      }
      return new bz(locala, false);
    case 4: 
      if (paramSet.contains(gz))
      {
        bh.T("Macro cycle detected.  Current macro reference: " + gz + "." + "  Previous macro references: " + paramSet.toString() + ".");
        return atb;
      }
      paramSet.add(gz);
      paramdl = dm.a(a(gz, paramSet, paramdl.pW()), gE);
      paramSet.remove(gz);
      return paramdl;
    }
    d.a locala = cr.g(parama);
    gD = new d.a[gD.length];
    int i = 0;
    while (i < gD.length)
    {
      localbz1 = a(gD[i], paramSet, paramdl.fN(i));
      if (localbz1 == atb) {
        return atb;
      }
      gD[i] = ((d.a)localbz1.getObject());
      i += 1;
    }
    return new bz(locala, false);
  }
  
  private bz<d.a> a(String paramString, Set<String> paramSet, bk parambk)
  {
    atm += 1;
    Object localObject = (ct.b)ati.get(paramString);
    if ((localObject != null) && (!atd.pH()))
    {
      a(((ct.b)localObject).qm(), paramSet);
      atm -= 1;
      return ((ct.b)localObject).qG();
    }
    localObject = (ct.c)atk.get(paramString);
    if (localObject == null)
    {
      bh.T(qF() + "Invalid macro: " + paramString);
      atm -= 1;
      return atb;
    }
    bz localbz = a(paramString, ((ct.c)localObject).qH(), ((ct.c)localObject).qI(), ((ct.c)localObject).qJ(), ((ct.c)localObject).qL(), ((ct.c)localObject).qK(), paramSet, parambk.py());
    if (((Set)localbz.getObject()).isEmpty()) {}
    for (localObject = ((ct.c)localObject).qM(); localObject == null; localObject = (cr.a)((Set)localbz.getObject()).iterator().next())
    {
      atm -= 1;
      return atb;
      if (((Set)localbz.getObject()).size() > 1) {
        bh.W(qF() + "Multiple macros active for macroName " + paramString);
      }
    }
    parambk = a(atg, (cr.a)localObject, paramSet, parambk.pN());
    boolean bool;
    if ((localbz.pX()) && (parambk.pX()))
    {
      bool = true;
      if (parambk != atb) {
        break label392;
      }
    }
    label392:
    for (parambk = atb;; parambk = new bz(parambk.getObject(), bool))
    {
      localObject = ((cr.a)localObject).qm();
      if (parambk.pX()) {
        ati.e(paramString, new ct.b(parambk, (d.a)localObject));
      }
      a((d.a)localObject, paramSet);
      atm -= 1;
      return parambk;
      bool = false;
      break;
    }
  }
  
  private bz<d.a> a(Map<String, aj> paramMap, cr.a parama, Set<String> paramSet, ck paramck)
  {
    boolean bool = true;
    Object localObject1 = (d.a)parama.ql().get(com.google.android.gms.internal.b.cU.toString());
    if (localObject1 == null)
    {
      bh.T("No function id in properties");
      paramMap = atb;
    }
    aj localaj;
    do
    {
      return paramMap;
      localObject1 = gA;
      localaj = (aj)paramMap.get(localObject1);
      if (localaj == null)
      {
        bh.T((String)localObject1 + " has no backing implementation.");
        return atb;
      }
      paramMap = (bz)ath.get(parama);
    } while ((paramMap != null) && (!atd.pH()));
    paramMap = new HashMap();
    Iterator localIterator = parama.ql().entrySet().iterator();
    int i = 1;
    if (localIterator.hasNext())
    {
      Map.Entry localEntry = (Map.Entry)localIterator.next();
      Object localObject2 = paramck.cJ((String)localEntry.getKey());
      localObject2 = a((d.a)localEntry.getValue(), paramSet, ((cm)localObject2).e((d.a)localEntry.getValue()));
      if (localObject2 == atb) {
        return atb;
      }
      if (((bz)localObject2).pX()) {
        parama.a((String)localEntry.getKey(), (d.a)((bz)localObject2).getObject());
      }
      for (;;)
      {
        paramMap.put(localEntry.getKey(), ((bz)localObject2).getObject());
        break;
        i = 0;
      }
    }
    if (!localaj.a(paramMap.keySet()))
    {
      bh.T("Incorrect keys for function " + (String)localObject1 + " required " + localaj.pJ() + " had " + paramMap.keySet());
      return atb;
    }
    if ((i != 0) && (localaj.pe())) {}
    for (;;)
    {
      paramMap = new bz(localaj.B(paramMap), bool);
      if (bool) {
        ath.e(parama, paramMap);
      }
      paramck.d((d.a)paramMap.getObject());
      return paramMap;
      bool = false;
    }
  }
  
  private bz<Set<cr.a>> a(Set<cr.e> paramSet, Set<String> paramSet1, ct.a parama, cs paramcs)
  {
    HashSet localHashSet1 = new HashSet();
    HashSet localHashSet2 = new HashSet();
    paramSet = paramSet.iterator();
    boolean bool = true;
    if (paramSet.hasNext())
    {
      cr.e locale = (cr.e)paramSet.next();
      cn localcn = paramcs.pV();
      bz localbz = a(locale, paramSet1, localcn);
      if (((Boolean)localbz.getObject()).booleanValue()) {
        parama.a(locale, localHashSet1, localHashSet2, localcn);
      }
      if ((bool) && (localbz.pX())) {}
      for (bool = true;; bool = false) {
        break;
      }
    }
    localHashSet1.removeAll(localHashSet2);
    paramcs.b(localHashSet1);
    return new bz(localHashSet1, bool);
  }
  
  private void a(d.a parama, Set<String> paramSet)
  {
    if (parama == null) {}
    for (;;)
    {
      return;
      parama = a(parama, paramSet, new bx());
      if (parama != atb)
      {
        parama = di.o((d.a)parama.getObject());
        if ((parama instanceof Map))
        {
          parama = (Map)parama;
          aqn.push(parama);
          return;
        }
        if (!(parama instanceof List)) {
          break;
        }
        parama = ((List)parama).iterator();
        while (parama.hasNext())
        {
          paramSet = parama.next();
          if ((paramSet instanceof Map))
          {
            paramSet = (Map)paramSet;
            aqn.push(paramSet);
          }
          else
          {
            bh.W("pushAfterEvaluate: value not a Map");
          }
        }
      }
    }
    bh.W("pushAfterEvaluate: value not a Map or List");
  }
  
  private static void a(List<cr.a> paramList, List<String> paramList1, String paramString)
  {
    if (paramList.size() != paramList1.size()) {
      bh.U("Invalid resource: imbalance of rule names of functions for " + paramString + " operation. Using default rule name instead");
    }
  }
  
  private static void a(Map<String, aj> paramMap, aj paramaj)
  {
    if (paramMap.containsKey(paramaj.pI())) {
      throw new IllegalArgumentException("Duplicate function type name: " + paramaj.pI());
    }
    paramMap.put(paramaj.pI(), paramaj);
  }
  
  private static ct.c e(Map<String, ct.c> paramMap, String paramString)
  {
    ct.c localc2 = (ct.c)paramMap.get(paramString);
    ct.c localc1 = localc2;
    if (localc2 == null)
    {
      localc1 = new ct.c();
      paramMap.put(paramString, localc1);
    }
    return localc1;
  }
  
  private static String h(cr.a parama)
  {
    return di.j((d.a)parama.ql().get(com.google.android.gms.internal.b.df.toString()));
  }
  
  private String qF()
  {
    if (atm <= 1) {
      return "";
    }
    StringBuilder localStringBuilder = new StringBuilder();
    localStringBuilder.append(Integer.toString(atm));
    int i = 2;
    while (i < atm)
    {
      localStringBuilder.append(' ');
      i += 1;
    }
    localStringBuilder.append(": ");
    return localStringBuilder.toString();
  }
  
  bz<Boolean> a(cr.a parama, Set<String> paramSet, ck paramck)
  {
    parama = a(atf, parama, paramSet, paramck);
    paramSet = di.n((d.a)parama.getObject());
    paramck.d(di.u(paramSet));
    return new bz(paramSet, parama.pX());
  }
  
  bz<Boolean> a(cr.e parame, Set<String> paramSet, cn paramcn)
  {
    Object localObject = parame.qu().iterator();
    boolean bool = true;
    if (((Iterator)localObject).hasNext())
    {
      bz localbz = a((cr.a)((Iterator)localObject).next(), paramSet, paramcn.pP());
      if (((Boolean)localbz.getObject()).booleanValue())
      {
        paramcn.f(di.u(Boolean.valueOf(false)));
        return new bz(Boolean.valueOf(false), localbz.pX());
      }
      if ((bool) && (localbz.pX())) {}
      for (bool = true;; bool = false) {
        break;
      }
    }
    parame = parame.qt().iterator();
    while (parame.hasNext())
    {
      localObject = a((cr.a)parame.next(), paramSet, paramcn.pQ());
      if (!((Boolean)((bz)localObject).getObject()).booleanValue())
      {
        paramcn.f(di.u(Boolean.valueOf(false)));
        return new bz(Boolean.valueOf(false), ((bz)localObject).pX());
      }
      if ((bool) && (((bz)localObject).pX())) {
        bool = true;
      } else {
        bool = false;
      }
    }
    paramcn.f(di.u(Boolean.valueOf(true)));
    return new bz(Boolean.valueOf(true), bool);
  }
  
  bz<Set<cr.a>> a(String paramString, Set<cr.e> paramSet, Map<cr.e, List<cr.a>> paramMap1, Map<cr.e, List<String>> paramMap2, Map<cr.e, List<cr.a>> paramMap3, Map<cr.e, List<String>> paramMap4, Set<String> paramSet1, cs paramcs)
  {
    return a(paramSet, paramSet1, new ct.3(this, paramMap1, paramMap2, paramMap3, paramMap4), paramcs);
  }
  
  bz<Set<cr.a>> a(Set<cr.e> paramSet, cs paramcs)
  {
    return a(paramSet, new HashSet(), new ct.4(this), paramcs);
  }
  
  void a(aj paramaj)
  {
    a(atg, paramaj);
  }
  
  void b(aj paramaj)
  {
    a(ate, paramaj);
  }
  
  void c(aj paramaj)
  {
    a(atf, paramaj);
  }
  
  public bz<d.a> cT(String paramString)
  {
    atm = 0;
    af localaf = atd.cC(paramString);
    paramString = a(paramString, new HashSet(), localaf.pE());
    localaf.pG();
    return paramString;
  }
  
  void cU(String paramString)
  {
    try
    {
      atl = paramString;
      return;
    }
    finally
    {
      paramString = finally;
      throw paramString;
    }
  }
  
  public void cr(String paramString)
  {
    try
    {
      cU(paramString);
      paramString = atd.cD(paramString);
      t localt = paramString.pF();
      Iterator localIterator = ((Set)a(atj, localt.py()).getObject()).iterator();
      while (localIterator.hasNext())
      {
        cr.a locala = (cr.a)localIterator.next();
        a(ate, locala, new HashSet(), localt.px());
      }
      paramString.pG();
    }
    finally {}
    cU(null);
  }
  
  public void l(List<c.i> paramList)
  {
    for (;;)
    {
      try
      {
        paramList = paramList.iterator();
        if (!paramList.hasNext()) {
          break;
        }
        c.i locali = (c.i)paramList.next();
        if ((name == null) || (!name.startsWith("gaExperiment:"))) {
          bh.V("Ignored supplemental: " + locali);
        } else {
          ai.a(aqn, locali);
        }
      }
      finally {}
    }
  }
  
  String qE()
  {
    try
    {
      String str = atl;
      return str;
    }
    finally
    {
      localObject = finally;
      throw ((Throwable)localObject);
    }
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.tagmanager.ct
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */