package com.path.android.jobqueue.nonPersistentQueue;

import com.path.android.jobqueue.a;
import java.util.Collection;
import java.util.Comparator;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.LinkedList;
import java.util.List;
import java.util.Map;
import java.util.Set;
import java.util.TreeSet;

public class e
  implements c
{
  private final TreeSet<a> a;
  private final Map<String, Integer> b;
  private final Map<Long, a> c;
  private final Map<String, List<a>> d;
  
  public e(Comparator<a> paramComparator)
  {
    a = new TreeSet(paramComparator);
    b = new HashMap();
    c = new HashMap();
    d = new HashMap();
  }
  
  private void a(String paramString)
  {
    if (!b.containsKey(paramString))
    {
      b.put(paramString, Integer.valueOf(1));
      return;
    }
    b.put(paramString, Integer.valueOf(((Integer)b.get(paramString)).intValue() + 1));
  }
  
  private a b()
  {
    if (a.size() < 1) {
      return null;
    }
    return (a)a.first();
  }
  
  private void b(String paramString)
  {
    Integer localInteger = (Integer)b.get(paramString);
    if ((localInteger == null) || (localInteger.intValue() <= 0))
    {
      com.yelp.android.bp.b.b("detected inconsistency in NonPersistentJobSet's group id hash. Please report a bug", new Object[0]);
      b.remove(paramString);
      return;
    }
    localInteger = Integer.valueOf(localInteger.intValue() - 1);
    if (localInteger.intValue() == 0)
    {
      b.remove(paramString);
      return;
    }
    b.put(paramString, localInteger);
  }
  
  private void c(a parama)
  {
    Object localObject = parama.j();
    if ((localObject == null) || (((Set)localObject).size() == 0)) {}
    for (;;)
    {
      return;
      Iterator localIterator = ((Set)localObject).iterator();
      while (localIterator.hasNext())
      {
        String str = (String)localIterator.next();
        List localList = (List)d.get(str);
        localObject = localList;
        if (localList == null)
        {
          localObject = new LinkedList();
          d.put(str, localObject);
        }
        ((List)localObject).add(parama);
      }
    }
  }
  
  private void d(a parama)
  {
    Object localObject = parama.j();
    if ((localObject == null) || (((Set)localObject).size() == 0)) {}
    for (;;)
    {
      return;
      localObject = ((Set)localObject).iterator();
      while (((Iterator)localObject).hasNext())
      {
        String str = (String)((Iterator)localObject).next();
        List localList = (List)d.get(str);
        if (localList == null)
        {
          com.yelp.android.bp.b.b("trying to remove job from tag cache but cannot find the tag cache", new Object[0]);
          return;
        }
        if (!localList.remove(parama)) {
          com.yelp.android.bp.b.b("trying to remove job from tag cache but cannot find it in the cache", new Object[0]);
        } else if (localList.size() == 0) {
          d.remove(str);
        }
      }
    }
  }
  
  public int a()
  {
    return a.size();
  }
  
  public a a(Collection<String> paramCollection)
  {
    Object localObject;
    if ((paramCollection == null) || (paramCollection.size() == 0))
    {
      localObject = b();
      return (a)localObject;
    }
    Iterator localIterator = a.iterator();
    for (;;)
    {
      if (!localIterator.hasNext()) {
        break label77;
      }
      a locala = (a)localIterator.next();
      localObject = locala;
      if (locala.i() == null) {
        break;
      }
      localObject = locala;
      if (!paramCollection.contains(locala.i())) {
        break;
      }
    }
    label77:
    return null;
  }
  
  public b a(long paramLong, Collection<String> paramCollection)
  {
    int i = 0;
    int j = b.keySet().size();
    if (j > 0) {}
    for (HashSet localHashSet = new HashSet();; localHashSet = null)
    {
      Iterator localIterator = a.iterator();
      for (;;)
      {
        if (localIterator.hasNext())
        {
          a locala = (a)localIterator.next();
          if (locala.g() >= paramLong) {
            break label150;
          }
          if (locala.i() != null)
          {
            if ((paramCollection != null) && (paramCollection.contains(locala.i()))) {
              continue;
            }
            if ((j <= 0) || (!localHashSet.add(locala.i()))) {
              break label150;
            }
            i += 1;
          }
        }
      }
      label150:
      for (;;)
      {
        break;
        i += 1;
        continue;
        return new b(i, localHashSet);
      }
    }
  }
  
  public boolean a(a parama)
  {
    if (parama.a() == null) {
      throw new RuntimeException("cannot add job holder w/o an ID");
    }
    boolean bool2 = a.add(parama);
    boolean bool1 = bool2;
    if (!bool2)
    {
      b(parama);
      bool1 = a.add(parama);
    }
    if (bool1)
    {
      c.put(parama.a(), parama);
      c(parama);
      if (parama.i() != null) {
        a(parama.i());
      }
    }
    return bool1;
  }
  
  public b b(Collection<String> paramCollection)
  {
    HashSet localHashSet = null;
    if (b.size() == 0) {
      return new b(a.size(), null);
    }
    Iterator localIterator = a.iterator();
    int i = 0;
    while (localIterator.hasNext())
    {
      a locala = (a)localIterator.next();
      if (locala.i() != null)
      {
        if ((paramCollection != null) && (paramCollection.contains(locala.i()))) {
          continue;
        }
        if (localHashSet == null)
        {
          localHashSet = new HashSet();
          localHashSet.add(locala.i());
        }
      }
      for (;;)
      {
        i += 1;
        break;
        if (!localHashSet.add(locala.i())) {
          break;
        }
      }
    }
    return new b(i, localHashSet);
  }
  
  public boolean b(a parama)
  {
    boolean bool = a.remove(parama);
    if (bool)
    {
      c.remove(parama.a());
      d(parama);
      if (parama.i() != null) {
        b(parama.i());
      }
    }
    return bool;
  }
}

/* Location:
 * Qualified Name:     com.path.android.jobqueue.nonPersistentQueue.e
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */