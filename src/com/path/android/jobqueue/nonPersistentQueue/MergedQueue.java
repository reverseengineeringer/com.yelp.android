package com.path.android.jobqueue.nonPersistentQueue;

import java.util.Collection;
import java.util.Comparator;

public abstract class MergedQueue
  implements c
{
  c a;
  c b;
  final Comparator<com.path.android.jobqueue.b> c;
  final Comparator<com.path.android.jobqueue.b> d;
  
  public MergedQueue(int paramInt, Comparator<com.path.android.jobqueue.b> paramComparator1, Comparator<com.path.android.jobqueue.b> paramComparator2)
  {
    c = paramComparator1;
    d = paramComparator2;
    a = a(MergedQueue.SetId.S0, paramInt, paramComparator1);
    b = a(MergedQueue.SetId.S1, paramInt, paramComparator1);
  }
  
  public int a()
  {
    return a.a() + b.a();
  }
  
  protected com.path.android.jobqueue.b a(MergedQueue.SetId paramSetId, Collection<String> paramCollection)
  {
    if (paramSetId == MergedQueue.SetId.S0) {
      return a.a(paramCollection);
    }
    return b.a(paramCollection);
  }
  
  public com.path.android.jobqueue.b a(Collection<String> paramCollection)
  {
    com.path.android.jobqueue.b localb1;
    com.path.android.jobqueue.b localb2;
    for (;;)
    {
      localb1 = a.a(paramCollection);
      if ((localb1 != null) && (c(localb1) != MergedQueue.SetId.S0))
      {
        b.a(localb1);
        a.b(localb1);
      }
      else
      {
        localb2 = b.a(paramCollection);
        if ((localb2 == null) || (c(localb2) == MergedQueue.SetId.S1)) {
          break;
        }
        a.a(localb2);
        b.b(localb2);
      }
    }
    if (localb1 == null) {}
    do
    {
      return localb2;
      if (localb2 == null) {
        return localb1;
      }
    } while (d.compare(localb1, localb2) != -1);
    return localb1;
  }
  
  public b a(MergedQueue.SetId paramSetId, long paramLong, Collection<String> paramCollection)
  {
    if (paramSetId == MergedQueue.SetId.S0) {
      return a.a(paramLong, paramCollection);
    }
    return b.a(paramLong, paramCollection);
  }
  
  protected abstract c a(MergedQueue.SetId paramSetId, int paramInt, Comparator<com.path.android.jobqueue.b> paramComparator);
  
  public boolean a(com.path.android.jobqueue.b paramb)
  {
    if (c(paramb) == MergedQueue.SetId.S0) {
      return a.a(paramb);
    }
    return b.a(paramb);
  }
  
  public b b(MergedQueue.SetId paramSetId, Collection<String> paramCollection)
  {
    if (paramSetId == MergedQueue.SetId.S0) {
      return a.b(paramCollection);
    }
    return b.b(paramCollection);
  }
  
  public boolean b(com.path.android.jobqueue.b paramb)
  {
    return (b.b(paramb)) || (a.b(paramb));
  }
  
  protected abstract MergedQueue.SetId c(com.path.android.jobqueue.b paramb);
}

/* Location:
 * Qualified Name:     com.path.android.jobqueue.nonPersistentQueue.MergedQueue
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */