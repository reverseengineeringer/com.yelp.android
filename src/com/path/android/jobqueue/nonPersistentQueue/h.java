package com.path.android.jobqueue.nonPersistentQueue;

import java.util.Collection;
import java.util.Comparator;

public class h
  extends MergedQueue
{
  public h(int paramInt, Comparator<com.path.android.jobqueue.a> paramComparator)
  {
    super(paramInt, paramComparator, new g(paramComparator));
  }
  
  public b a(long paramLong, Collection<String> paramCollection)
  {
    return super.b(MergedQueue.SetId.S0, paramCollection).a(super.a(MergedQueue.SetId.S1, paramLong, paramCollection));
  }
  
  protected c a(MergedQueue.SetId paramSetId, int paramInt, Comparator<com.path.android.jobqueue.a> paramComparator)
  {
    if (paramSetId == MergedQueue.SetId.S0) {
      return new e(paramComparator);
    }
    return new e(new a(paramComparator));
  }
  
  public b b(Collection<String> paramCollection)
  {
    throw new UnsupportedOperationException("cannot call time aware priority queue's count ready jobs w/o providing a time");
  }
  
  protected MergedQueue.SetId c(com.path.android.jobqueue.a parama)
  {
    if (parama.g() <= System.nanoTime()) {
      return MergedQueue.SetId.S0;
    }
    return MergedQueue.SetId.S1;
  }
}

/* Location:
 * Qualified Name:     com.path.android.jobqueue.nonPersistentQueue.h
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */