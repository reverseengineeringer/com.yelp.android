package com.google.android.gms.tagmanager;

import com.google.android.gms.internal.d.a;
import com.google.android.gms.internal.zzae;
import com.google.android.gms.internal.zzrs;
import com.google.android.gms.internal.zzrs.a;
import com.google.android.gms.internal.zzrs.b;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Map.Entry;
import java.util.Set;

class ab
{
  private static final v<d.a> a = new v(ag.a(), true);
  private final f b;
  private final Map<String, g> c;
  private final Map<String, g> d;
  private final Map<String, g> e;
  private final aj<zzrs.a, v<d.a>> f;
  private final aj<String, b> g;
  private final Set<zzrs.b> h;
  private final c i;
  private final Map<String, c> j;
  private volatile String k;
  private int l;
  
  private v<d.a> a(d.a parama, Set<String> paramSet, ah paramah)
  {
    if (!l) {
      return new v(parama, true);
    }
    v localv1;
    switch (a)
    {
    case 5: 
    case 6: 
    default: 
      m.a("Unknown type: " + a);
      return a;
    case 2: 
      locala = zzrs.a(parama);
      c = new d.a[c.length];
      m = 0;
      while (m < c.length)
      {
        localv1 = a(c[m], paramSet, paramah.a(m));
        if (localv1 == a) {
          return a;
        }
        c[m] = ((d.a)localv1.a());
        m += 1;
      }
      return new v(locala, false);
    case 3: 
      locala = zzrs.a(parama);
      if (d.length != e.length)
      {
        m.a("Invalid serving value: " + parama.toString());
        return a;
      }
      d = new d.a[d.length];
      e = new d.a[d.length];
      m = 0;
      while (m < d.length)
      {
        localv1 = a(d[m], paramSet, paramah.b(m));
        v localv2 = a(e[m], paramSet, paramah.c(m));
        if ((localv1 == a) || (localv2 == a)) {
          return a;
        }
        d[m] = ((d.a)localv1.a());
        e[m] = ((d.a)localv2.a());
        m += 1;
      }
      return new v(locala, false);
    case 4: 
      if (paramSet.contains(f))
      {
        m.a("Macro cycle detected.  Current macro reference: " + f + "." + "  Previous macro references: " + paramSet.toString() + ".");
        return a;
      }
      paramSet.add(f);
      paramah = ai.a(a(f, paramSet, paramah.a()), k);
      paramSet.remove(f);
      return paramah;
    }
    d.a locala = zzrs.a(parama);
    j = new d.a[j.length];
    int m = 0;
    while (m < j.length)
    {
      localv1 = a(j[m], paramSet, paramah.d(m));
      if (localv1 == a) {
        return a;
      }
      j[m] = ((d.a)localv1.a());
      m += 1;
    }
    return new v(locala, false);
  }
  
  private v<d.a> a(String paramString, Set<String> paramSet, o paramo)
  {
    l += 1;
    Object localObject = (b)g.a(paramString);
    if ((localObject != null) && (!b.a()))
    {
      a(((b)localObject).b(), paramSet);
      l -= 1;
      return ((b)localObject).a();
    }
    localObject = (c)j.get(paramString);
    if (localObject == null)
    {
      m.a(a() + "Invalid macro: " + paramString);
      l -= 1;
      return a;
    }
    v localv = a(paramString, ((c)localObject).a(), ((c)localObject).b(), ((c)localObject).c(), ((c)localObject).e(), ((c)localObject).d(), paramSet, paramo.b());
    if (((Set)localv.a()).isEmpty()) {}
    for (localObject = ((c)localObject).f(); localObject == null; localObject = (zzrs.a)((Set)localv.a()).iterator().next())
    {
      l -= 1;
      return a;
      if (((Set)localv.a()).size() > 1) {
        m.b(a() + "Multiple macros active for macroName " + paramString);
      }
    }
    paramo = a(e, (zzrs.a)localObject, paramSet, paramo.a());
    boolean bool;
    if ((localv.b()) && (paramo.b()))
    {
      bool = true;
      if (paramo != a) {
        break label390;
      }
    }
    label390:
    for (paramo = a;; paramo = new v(paramo.a(), bool))
    {
      localObject = ((zzrs.a)localObject).b();
      if (paramo.b()) {
        g.a(paramString, new b(paramo, (d.a)localObject));
      }
      a((d.a)localObject, paramSet);
      l -= 1;
      return paramo;
      bool = false;
      break;
    }
  }
  
  private v<d.a> a(Map<String, g> paramMap, zzrs.a parama, Set<String> paramSet, w paramw)
  {
    boolean bool = true;
    Object localObject1 = (d.a)parama.a().get(zzae.zzfG.toString());
    if (localObject1 == null)
    {
      m.a("No function id in properties");
      paramMap = a;
    }
    g localg;
    do
    {
      return paramMap;
      localObject1 = g;
      localg = (g)paramMap.get(localObject1);
      if (localg == null)
      {
        m.a((String)localObject1 + " has no backing implementation.");
        return a;
      }
      paramMap = (v)f.a(parama);
    } while ((paramMap != null) && (!b.a()));
    paramMap = new HashMap();
    Iterator localIterator = parama.a().entrySet().iterator();
    int m = 1;
    if (localIterator.hasNext())
    {
      Map.Entry localEntry = (Map.Entry)localIterator.next();
      Object localObject2 = paramw.a((String)localEntry.getKey());
      localObject2 = a((d.a)localEntry.getValue(), paramSet, ((y)localObject2).a((d.a)localEntry.getValue()));
      if (localObject2 == a) {
        return a;
      }
      if (((v)localObject2).b()) {
        parama.a((String)localEntry.getKey(), (d.a)((v)localObject2).a());
      }
      for (;;)
      {
        paramMap.put(localEntry.getKey(), ((v)localObject2).a());
        break;
        m = 0;
      }
    }
    if (!localg.a(paramMap.keySet()))
    {
      m.a("Incorrect keys for function " + (String)localObject1 + " required " + localg.b() + " had " + paramMap.keySet());
      return a;
    }
    if ((m != 0) && (localg.a())) {}
    for (;;)
    {
      paramMap = new v(localg.a(paramMap), bool);
      if (bool) {
        f.a(parama, paramMap);
      }
      paramw.a((d.a)paramMap.a());
      return paramMap;
      bool = false;
    }
  }
  
  private v<Set<zzrs.a>> a(Set<zzrs.b> paramSet, Set<String> paramSet1, a parama, aa paramaa)
  {
    HashSet localHashSet1 = new HashSet();
    HashSet localHashSet2 = new HashSet();
    paramSet = paramSet.iterator();
    boolean bool = true;
    if (paramSet.hasNext())
    {
      zzrs.b localb = (zzrs.b)paramSet.next();
      z localz = paramaa.a();
      v localv = a(localb, paramSet1, localz);
      if (((Boolean)localv.a()).booleanValue()) {
        parama.a(localb, localHashSet1, localHashSet2, localz);
      }
      if ((bool) && (localv.b())) {}
      for (bool = true;; bool = false) {
        break;
      }
    }
    localHashSet1.removeAll(localHashSet2);
    paramaa.a(localHashSet1);
    return new v(localHashSet1, bool);
  }
  
  private String a()
  {
    if (l <= 1) {
      return "";
    }
    StringBuilder localStringBuilder = new StringBuilder();
    localStringBuilder.append(Integer.toString(l));
    int m = 2;
    while (m < l)
    {
      localStringBuilder.append(' ');
      m += 1;
    }
    localStringBuilder.append(": ");
    return localStringBuilder.toString();
  }
  
  private void a(d.a parama, Set<String> paramSet)
  {
    if (parama == null) {}
    for (;;)
    {
      return;
      parama = a(parama, paramSet, new u());
      if (parama != a)
      {
        parama = ag.c((d.a)parama.a());
        if ((parama instanceof Map))
        {
          parama = (Map)parama;
          i.a(parama);
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
            i.a(paramSet);
          }
          else
          {
            m.b("pushAfterEvaluate: value not a Map");
          }
        }
      }
    }
    m.b("pushAfterEvaluate: value not a Map or List");
  }
  
  v<Boolean> a(zzrs.a parama, Set<String> paramSet, w paramw)
  {
    parama = a(d, parama, paramSet, paramw);
    paramSet = ag.b((d.a)parama.a());
    paramw.a(ag.c(paramSet));
    return new v(paramSet, parama.b());
  }
  
  v<Boolean> a(zzrs.b paramb, Set<String> paramSet, z paramz)
  {
    Object localObject = paramb.b().iterator();
    boolean bool = true;
    if (((Iterator)localObject).hasNext())
    {
      v localv = a((zzrs.a)((Iterator)localObject).next(), paramSet, paramz.a());
      if (((Boolean)localv.a()).booleanValue())
      {
        paramz.a(ag.c(Boolean.valueOf(false)));
        return new v(Boolean.valueOf(false), localv.b());
      }
      if ((bool) && (localv.b())) {}
      for (bool = true;; bool = false) {
        break;
      }
    }
    paramb = paramb.a().iterator();
    while (paramb.hasNext())
    {
      localObject = a((zzrs.a)paramb.next(), paramSet, paramz.b());
      if (!((Boolean)((v)localObject).a()).booleanValue())
      {
        paramz.a(ag.c(Boolean.valueOf(false)));
        return new v(Boolean.valueOf(false), ((v)localObject).b());
      }
      if ((bool) && (((v)localObject).b())) {
        bool = true;
      } else {
        bool = false;
      }
    }
    paramz.a(ag.c(Boolean.valueOf(true)));
    return new v(Boolean.valueOf(true), bool);
  }
  
  v<Set<zzrs.a>> a(String paramString, Set<zzrs.b> paramSet, final Map<zzrs.b, List<zzrs.a>> paramMap1, final Map<zzrs.b, List<String>> paramMap2, final Map<zzrs.b, List<zzrs.a>> paramMap3, final Map<zzrs.b, List<String>> paramMap4, Set<String> paramSet1, aa paramaa)
  {
    a(paramSet, paramSet1, new a()
    {
      public void a(zzrs.b paramAnonymousb, Set<zzrs.a> paramAnonymousSet1, Set<zzrs.a> paramAnonymousSet2, z paramAnonymousz)
      {
        List localList1 = (List)paramMap1.get(paramAnonymousb);
        List localList2 = (List)paramMap2.get(paramAnonymousb);
        if (localList1 != null)
        {
          paramAnonymousSet1.addAll(localList1);
          paramAnonymousz.c().a(localList1, localList2);
        }
        paramAnonymousSet1 = (List)paramMap3.get(paramAnonymousb);
        paramAnonymousb = (List)paramMap4.get(paramAnonymousb);
        if (paramAnonymousSet1 != null)
        {
          paramAnonymousSet2.addAll(paramAnonymousSet1);
          paramAnonymousz.d().a(paramAnonymousSet1, paramAnonymousb);
        }
      }
    }, paramaa);
  }
  
  v<Set<zzrs.a>> a(Set<zzrs.b> paramSet, aa paramaa)
  {
    a(paramSet, new HashSet(), new a()
    {
      public void a(zzrs.b paramAnonymousb, Set<zzrs.a> paramAnonymousSet1, Set<zzrs.a> paramAnonymousSet2, z paramAnonymousz)
      {
        paramAnonymousSet1.addAll(paramAnonymousb.c());
        paramAnonymousSet2.addAll(paramAnonymousb.d());
        paramAnonymousz.e().a(paramAnonymousb.c(), paramAnonymousb.f());
        paramAnonymousz.f().a(paramAnonymousb.d(), paramAnonymousb.g());
      }
    }, paramaa);
  }
  
  public void a(String paramString)
  {
    try
    {
      b(paramString);
      paramString = b.a(paramString);
      am localam = paramString.a();
      Iterator localIterator = ((Set)a(h, localam.b()).a()).iterator();
      while (localIterator.hasNext())
      {
        zzrs.a locala = (zzrs.a)localIterator.next();
        a(c, locala, new HashSet(), localam.a());
      }
      paramString.b();
    }
    finally {}
    b(null);
  }
  
  void b(String paramString)
  {
    try
    {
      k = paramString;
      return;
    }
    finally
    {
      paramString = finally;
      throw paramString;
    }
  }
  
  static abstract interface a
  {
    public abstract void a(zzrs.b paramb, Set<zzrs.a> paramSet1, Set<zzrs.a> paramSet2, z paramz);
  }
  
  private static class b
  {
    private v<d.a> a;
    private d.a b;
    
    public b(v<d.a> paramv, d.a parama)
    {
      a = paramv;
      b = parama;
    }
    
    public v<d.a> a()
    {
      return a;
    }
    
    public d.a b()
    {
      return b;
    }
  }
  
  private static class c
  {
    private final Set<zzrs.b> a = new HashSet();
    private final Map<zzrs.b, List<zzrs.a>> b = new HashMap();
    private final Map<zzrs.b, List<zzrs.a>> c = new HashMap();
    private final Map<zzrs.b, List<String>> d = new HashMap();
    private final Map<zzrs.b, List<String>> e = new HashMap();
    private zzrs.a f;
    
    public Set<zzrs.b> a()
    {
      return a;
    }
    
    public Map<zzrs.b, List<zzrs.a>> b()
    {
      return b;
    }
    
    public Map<zzrs.b, List<String>> c()
    {
      return d;
    }
    
    public Map<zzrs.b, List<String>> d()
    {
      return e;
    }
    
    public Map<zzrs.b, List<zzrs.a>> e()
    {
      return c;
    }
    
    public zzrs.a f()
    {
      return f;
    }
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.tagmanager.ab
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */