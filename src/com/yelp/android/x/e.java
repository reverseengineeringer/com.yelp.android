package com.yelp.android.x;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

class e<K extends h, V>
{
  private final a<K, V> a = new a();
  private final Map<K, a<K, V>> b = new HashMap();
  
  private void a(a<K, V> parama)
  {
    d(parama);
    b = a;
    a = a.a;
    c(parama);
  }
  
  private void b(a<K, V> parama)
  {
    d(parama);
    b = a.b;
    a = a;
    c(parama);
  }
  
  private static <K, V> void c(a<K, V> parama)
  {
    a.b = parama;
    b.a = parama;
  }
  
  private static <K, V> void d(a<K, V> parama)
  {
    b.a = a;
    a.b = b;
  }
  
  public V a()
  {
    for (a locala = a.b; !locala.equals(a); locala = b)
    {
      Object localObject = locala.a();
      if (localObject != null) {
        return (V)localObject;
      }
      d(locala);
      b.remove(a.a(locala));
      ((h)a.a(locala)).a();
    }
    return null;
  }
  
  public V a(K paramK)
  {
    a locala = (a)b.get(paramK);
    if (locala == null)
    {
      locala = new a(paramK);
      b.put(paramK, locala);
    }
    for (paramK = locala;; paramK = locala)
    {
      a(paramK);
      return (V)paramK.a();
      paramK.a();
    }
  }
  
  public void a(K paramK, V paramV)
  {
    a locala = (a)b.get(paramK);
    if (locala == null)
    {
      locala = new a(paramK);
      b(locala);
      b.put(paramK, locala);
    }
    for (paramK = locala;; paramK = locala)
    {
      paramK.a(paramV);
      return;
      paramK.a();
    }
  }
  
  public String toString()
  {
    StringBuilder localStringBuilder = new StringBuilder("GroupedLinkedMap( ");
    a locala = a.a;
    int i = 0;
    while (!locala.equals(a))
    {
      i = 1;
      localStringBuilder.append('{').append(a.a(locala)).append(':').append(locala.b()).append("}, ");
      locala = a;
    }
    if (i != 0) {
      localStringBuilder.delete(localStringBuilder.length() - 2, localStringBuilder.length());
    }
    return " )";
  }
  
  private static class a<K, V>
  {
    a<K, V> a = this;
    a<K, V> b = this;
    private final K c;
    private List<V> d;
    
    public a()
    {
      this(null);
    }
    
    public a(K paramK)
    {
      c = paramK;
    }
    
    public V a()
    {
      int i = b();
      if (i > 0) {
        return (V)d.remove(i - 1);
      }
      return null;
    }
    
    public void a(V paramV)
    {
      if (d == null) {
        d = new ArrayList();
      }
      d.add(paramV);
    }
    
    public int b()
    {
      if (d != null) {
        return d.size();
      }
      return 0;
    }
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.x.e
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */