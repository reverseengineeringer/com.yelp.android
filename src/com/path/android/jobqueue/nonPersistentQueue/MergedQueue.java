package com.path.android.jobqueue.nonPersistentQueue;

import com.path.android.jobqueue.a;
import java.util.Collection;
import java.util.Comparator;

public abstract class MergedQueue
  implements c
{
  c a;
  c b;
  final Comparator<a> c;
  final Comparator<a> d;
  
  public MergedQueue(int paramInt, Comparator<a> paramComparator1, Comparator<a> paramComparator2)
  {
    c = paramComparator1;
    d = paramComparator2;
    a = a(SetId.S0, paramInt, paramComparator1);
    b = a(SetId.S1, paramInt, paramComparator1);
  }
  
  public int a()
  {
    return a.a() + b.a();
  }
  
  protected a a(SetId paramSetId, Collection<String> paramCollection)
  {
    if (paramSetId == SetId.S0) {
      return a.a(paramCollection);
    }
    return b.a(paramCollection);
  }
  
  public a a(Collection<String> paramCollection)
  {
    a locala1;
    a locala2;
    for (;;)
    {
      locala1 = a.a(paramCollection);
      if ((locala1 != null) && (c(locala1) != SetId.S0))
      {
        b.a(locala1);
        a.b(locala1);
      }
      else
      {
        locala2 = b.a(paramCollection);
        if ((locala2 == null) || (c(locala2) == SetId.S1)) {
          break;
        }
        a.a(locala2);
        b.b(locala2);
      }
    }
    if (locala1 == null) {}
    do
    {
      return locala2;
      if (locala2 == null) {
        return locala1;
      }
    } while (d.compare(locala1, locala2) != -1);
    return locala1;
  }
  
  public b a(SetId paramSetId, long paramLong, Collection<String> paramCollection)
  {
    if (paramSetId == SetId.S0) {
      return a.a(paramLong, paramCollection);
    }
    return b.a(paramLong, paramCollection);
  }
  
  protected abstract c a(SetId paramSetId, int paramInt, Comparator<a> paramComparator);
  
  public boolean a(a parama)
  {
    if (c(parama) == SetId.S0) {
      return a.a(parama);
    }
    return b.a(parama);
  }
  
  public b b(SetId paramSetId, Collection<String> paramCollection)
  {
    if (paramSetId == SetId.S0) {
      return a.b(paramCollection);
    }
    return b.b(paramCollection);
  }
  
  public boolean b(a parama)
  {
    return (b.b(parama)) || (a.b(parama));
  }
  
  protected abstract SetId c(a parama);
  
  protected static enum SetId
  {
    S0,  S1;
    
    private SetId() {}
  }
}

/* Location:
 * Qualified Name:     com.path.android.jobqueue.nonPersistentQueue.MergedQueue
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */