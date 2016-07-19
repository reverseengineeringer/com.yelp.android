package com.yelp.android.g;

import java.util.Collection;
import java.util.Iterator;
import java.util.Map;
import java.util.Map.Entry;
import java.util.Set;

public class a<K, V>
  extends i<K, V>
  implements Map<K, V>
{
  f<K, V> a;
  
  public a() {}
  
  public a(int paramInt)
  {
    super(paramInt);
  }
  
  private f<K, V> b()
  {
    if (a == null) {
      a = new f()
      {
        protected int a()
        {
          return h;
        }
        
        protected int a(Object paramAnonymousObject)
        {
          return a.this.a(paramAnonymousObject);
        }
        
        protected Object a(int paramAnonymousInt1, int paramAnonymousInt2)
        {
          return g[((paramAnonymousInt1 << 1) + paramAnonymousInt2)];
        }
        
        protected V a(int paramAnonymousInt, V paramAnonymousV)
        {
          return (V)a.this.a(paramAnonymousInt, paramAnonymousV);
        }
        
        protected void a(int paramAnonymousInt)
        {
          d(paramAnonymousInt);
        }
        
        protected void a(K paramAnonymousK, V paramAnonymousV)
        {
          put(paramAnonymousK, paramAnonymousV);
        }
        
        protected int b(Object paramAnonymousObject)
        {
          return a.this.b(paramAnonymousObject);
        }
        
        protected Map<K, V> b()
        {
          return a.this;
        }
        
        protected void c()
        {
          clear();
        }
      };
    }
    return a;
  }
  
  public boolean a(Collection<?> paramCollection)
  {
    return f.c(this, paramCollection);
  }
  
  public Set<Map.Entry<K, V>> entrySet()
  {
    return b().d();
  }
  
  public Set<K> keySet()
  {
    return b().e();
  }
  
  public void putAll(Map<? extends K, ? extends V> paramMap)
  {
    a(h + paramMap.size());
    paramMap = paramMap.entrySet().iterator();
    while (paramMap.hasNext())
    {
      Map.Entry localEntry = (Map.Entry)paramMap.next();
      put(localEntry.getKey(), localEntry.getValue());
    }
  }
  
  public Collection<V> values()
  {
    return b().f();
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.g.a
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */