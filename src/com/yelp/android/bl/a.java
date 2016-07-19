package com.yelp.android.bl;

import com.path.android.jobqueue.c;
import java.util.Collection;
import java.util.Iterator;

public class a
  implements c
{
  c a;
  private a b;
  
  public a(c paramc)
  {
    a = paramc;
    b = new a(null);
  }
  
  public int a()
  {
    if (b.a == null) {
      b.a = Integer.valueOf(a.a());
    }
    return b.a.intValue();
  }
  
  public int a(boolean paramBoolean, Collection<String> paramCollection)
  {
    int i;
    if ((b.a != null) && (b.a.intValue() < 1)) {
      i = 0;
    }
    int j;
    do
    {
      return i;
      j = a.a(paramBoolean, paramCollection);
      i = j;
    } while (j != 0);
    a();
    return j;
  }
  
  public long a(com.path.android.jobqueue.a parama)
  {
    b.a();
    return a.a(parama);
  }
  
  public long b(com.path.android.jobqueue.a parama)
  {
    b.a();
    return a.b(parama);
  }
  
  public com.path.android.jobqueue.a b(boolean paramBoolean, Collection<String> paramCollection)
  {
    if ((b.a != null) && (b.a.intValue() < 1)) {
      paramCollection = null;
    }
    com.path.android.jobqueue.a locala;
    do
    {
      return paramCollection;
      locala = a.b(paramBoolean, paramCollection);
      if (locala == null)
      {
        a();
        return locala;
      }
      paramCollection = locala;
    } while (b.a == null);
    paramCollection = b;
    Integer localInteger = a;
    a = Integer.valueOf(a.intValue() - 1);
    return locala;
  }
  
  public Long c(boolean paramBoolean, Collection<String> paramCollection)
  {
    if (b.b == null) {
      b.b = new a.a.a(paramBoolean, a.c(paramBoolean, paramCollection), paramCollection, null);
    }
    for (;;)
    {
      return b.b.a;
      if (!a.a.a.a(b.b, paramBoolean, paramCollection)) {
        b.b.a(paramBoolean, a.c(paramBoolean, paramCollection), paramCollection);
      }
    }
  }
  
  public void c(com.path.android.jobqueue.a parama)
  {
    b.a();
    a.c(parama);
  }
  
  private static class a
  {
    Integer a;
    a b;
    
    public void a()
    {
      a = null;
      b = null;
    }
    
    private static class a
    {
      Long a;
      boolean b;
      Collection<String> c;
      
      private a(boolean paramBoolean, Long paramLong, Collection<String> paramCollection)
      {
        a = paramLong;
        b = paramBoolean;
        c = paramCollection;
      }
      
      private boolean a(Collection<String> paramCollection)
      {
        if (c == paramCollection) {
          return true;
        }
        if ((c == null) || (paramCollection == null)) {
          return false;
        }
        if (c.size() != paramCollection.size()) {
          return false;
        }
        Iterator localIterator = c.iterator();
        paramCollection = paramCollection.iterator();
        while (localIterator.hasNext()) {
          if (!((String)localIterator.next()).equals(paramCollection.next())) {
            return false;
          }
        }
        return true;
      }
      
      private boolean a(boolean paramBoolean, Collection<String> paramCollection)
      {
        return (b == paramBoolean) && (a(paramCollection));
      }
      
      public void a(boolean paramBoolean, Long paramLong, Collection<String> paramCollection)
      {
        a = paramLong;
        b = paramBoolean;
        c = paramCollection;
      }
    }
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.bl.a
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */