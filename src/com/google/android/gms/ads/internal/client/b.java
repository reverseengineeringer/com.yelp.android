package com.google.android.gms.ads.internal.client;

import android.content.Context;
import android.location.Location;
import android.os.Bundle;
import com.google.ads.mediation.admob.AdMobAdapter;
import com.google.android.gms.internal.fv;
import com.yelp.android.bc.m;
import java.util.Collections;
import java.util.Date;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Map;
import java.util.Set;

@fv
public final class b
{
  public static final String a = v.a().a("emulator");
  private final Date b;
  private final String c;
  private final int d;
  private final Set<String> e;
  private final Location f;
  private final boolean g;
  private final Bundle h;
  private final Map<Class<? extends m>, m> i;
  private final String j;
  private final String k;
  private final com.google.android.gms.ads.search.a l;
  private final int m;
  private final Set<String> n;
  private final Bundle o;
  private final Set<String> p;
  private final boolean q;
  
  public b(a parama)
  {
    this(parama, null);
  }
  
  public b(a parama, com.google.android.gms.ads.search.a parama1)
  {
    b = a.a(parama);
    c = a.b(parama);
    d = a.c(parama);
    e = Collections.unmodifiableSet(a.d(parama));
    f = a.e(parama);
    g = a.f(parama);
    h = a.g(parama);
    i = Collections.unmodifiableMap(a.h(parama));
    j = a.i(parama);
    k = a.j(parama);
    l = parama1;
    m = a.k(parama);
    n = Collections.unmodifiableSet(a.l(parama));
    o = a.m(parama);
    p = Collections.unmodifiableSet(a.n(parama));
    q = a.o(parama);
  }
  
  public Bundle a(Class<? extends com.yelp.android.bc.b> paramClass)
  {
    return h.getBundle(paramClass.getName());
  }
  
  public Date a()
  {
    return b;
  }
  
  public boolean a(Context paramContext)
  {
    return n.contains(v.a().a(paramContext));
  }
  
  public String b()
  {
    return c;
  }
  
  public int c()
  {
    return d;
  }
  
  public Set<String> d()
  {
    return e;
  }
  
  public Location e()
  {
    return f;
  }
  
  public boolean f()
  {
    return g;
  }
  
  public String g()
  {
    return j;
  }
  
  public String h()
  {
    return k;
  }
  
  public com.google.android.gms.ads.search.a i()
  {
    return l;
  }
  
  public Map<Class<? extends m>, m> j()
  {
    return i;
  }
  
  public Bundle k()
  {
    return h;
  }
  
  public int l()
  {
    return m;
  }
  
  public Bundle m()
  {
    return o;
  }
  
  public Set<String> n()
  {
    return p;
  }
  
  public boolean o()
  {
    return q;
  }
  
  public static final class a
  {
    private final HashSet<String> a = new HashSet();
    private final Bundle b = new Bundle();
    private final HashMap<Class<? extends m>, m> c = new HashMap();
    private final HashSet<String> d = new HashSet();
    private final Bundle e = new Bundle();
    private final HashSet<String> f = new HashSet();
    private Date g;
    private String h;
    private int i = -1;
    private Location j;
    private boolean k = false;
    private String l;
    private String m;
    private int n = -1;
    private boolean o;
    
    public void a(int paramInt)
    {
      i = paramInt;
    }
    
    public void a(Location paramLocation)
    {
      j = paramLocation;
    }
    
    @Deprecated
    public void a(m paramm)
    {
      if ((paramm instanceof com.yelp.android.bd.a))
      {
        a(AdMobAdapter.class, ((com.yelp.android.bd.a)paramm).a());
        return;
      }
      c.put(paramm.getClass(), paramm);
    }
    
    public void a(Class<? extends com.yelp.android.bc.b> paramClass, Bundle paramBundle)
    {
      b.putBundle(paramClass.getName(), paramBundle);
    }
    
    public void a(String paramString)
    {
      a.add(paramString);
    }
    
    public void a(Date paramDate)
    {
      g = paramDate;
    }
    
    public void a(boolean paramBoolean)
    {
      if (paramBoolean) {}
      for (int i1 = 1;; i1 = 0)
      {
        n = i1;
        return;
      }
    }
    
    public void b(String paramString)
    {
      d.add(paramString);
    }
    
    public void b(boolean paramBoolean)
    {
      o = paramBoolean;
    }
    
    public void c(String paramString)
    {
      d.remove(paramString);
    }
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.ads.internal.client.b
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */