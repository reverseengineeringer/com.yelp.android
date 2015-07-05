package com.path.android.jobqueue.nonPersistentQueue;

import java.util.Collection;
import java.util.Comparator;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.Map;
import java.util.Set;
import java.util.TreeSet;

public class e
  implements c
{
  private final TreeSet<com.path.android.jobqueue.b> a;
  private final Map<String, Integer> b;
  private final Map<Long, com.path.android.jobqueue.b> c;
  
  public e(Comparator<com.path.android.jobqueue.b> paramComparator)
  {
    a = new TreeSet(paramComparator);
    b = new HashMap();
    c = new HashMap();
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
  
  private com.path.android.jobqueue.b b()
  {
    if (a.size() < 1) {
      return null;
    }
    return (com.path.android.jobqueue.b)a.first();
  }
  
  private void b(String paramString)
  {
    Integer localInteger = (Integer)b.get(paramString);
    if ((localInteger == null) || (localInteger.intValue() == 0)) {
      com.yelp.android.at.b.b("detected inconsistency in NonPersistentJobSet's group id hash", new Object[0]);
    }
    while (Integer.valueOf(localInteger.intValue() - 1).intValue() != 0) {
      return;
    }
    b.remove(paramString);
  }
  
  public int a()
  {
    return a.size();
  }
  
  public com.path.android.jobqueue.b a(Collection<String> paramCollection)
  {
    Object localObject;
    if ((paramCollection == null) || (paramCollection.size() == 0))
    {
      localObject = b();
      return (com.path.android.jobqueue.b)localObject;
    }
    Iterator localIterator = a.iterator();
    for (;;)
    {
      if (!localIterator.hasNext()) {
        break label77;
      }
      com.path.android.jobqueue.b localb = (com.path.android.jobqueue.b)localIterator.next();
      localObject = localb;
      if (localb.i() == null) {
        break;
      }
      localObject = localb;
      if (!paramCollection.contains(localb.i())) {
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
          com.path.android.jobqueue.b localb = (com.path.android.jobqueue.b)localIterator.next();
          if (localb.g() >= paramLong) {
            break label150;
          }
          if (localb.i() != null)
          {
            if ((paramCollection != null) && (paramCollection.contains(localb.i()))) {
              continue;
            }
            if ((j <= 0) || (!localHashSet.add(localb.i()))) {
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
  
  public boolean a(com.path.android.jobqueue.b paramb)
  {
    if (paramb.a() == null) {
      throw new RuntimeException("cannot add job holder w/o an ID");
    }
    boolean bool2 = a.add(paramb);
    boolean bool1 = bool2;
    if (!bool2)
    {
      b(paramb);
      bool1 = a.add(paramb);
    }
    if (bool1)
    {
      c.put(paramb.a(), paramb);
      if (paramb.i() != null) {
        a(paramb.i());
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
      com.path.android.jobqueue.b localb = (com.path.android.jobqueue.b)localIterator.next();
      if (localb.i() != null)
      {
        if ((paramCollection != null) && (paramCollection.contains(localb.i()))) {
          continue;
        }
        if (localHashSet == null)
        {
          localHashSet = new HashSet();
          localHashSet.add(localb.i());
        }
      }
      for (;;)
      {
        i += 1;
        break;
        if (!localHashSet.add(localb.i())) {
          break;
        }
      }
    }
    return new b(i, localHashSet);
  }
  
  public boolean b(com.path.android.jobqueue.b paramb)
  {
    boolean bool = a.remove(paramb);
    if (bool)
    {
      c.remove(paramb.a());
      if (paramb.i() != null) {
        b(paramb.i());
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