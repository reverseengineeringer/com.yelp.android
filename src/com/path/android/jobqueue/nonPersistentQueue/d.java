package com.path.android.jobqueue.nonPersistentQueue;

import java.util.Collection;
import java.util.Comparator;

public class d
  extends MergedQueue
{
  public d(int paramInt, Comparator<com.path.android.jobqueue.b> paramComparator)
  {
    super(paramInt, paramComparator, new h(paramComparator));
  }
  
  public com.path.android.jobqueue.b a(boolean paramBoolean, Collection<String> paramCollection)
  {
    if (paramBoolean) {
      return super.a(paramCollection);
    }
    return super.a(MergedQueue.SetId.S1, paramCollection);
  }
  
  public b a(long paramLong, Collection<String> paramCollection)
  {
    throw new UnsupportedOperationException("cannot call network aware priority queue count w/o providing network status");
  }
  
  protected c a(MergedQueue.SetId paramSetId, int paramInt, Comparator<com.path.android.jobqueue.b> paramComparator)
  {
    return new i(paramInt, paramComparator);
  }
  
  public b b(Collection<String> paramCollection)
  {
    throw new UnsupportedOperationException("cannot call network aware priority queue count w/o providing network status");
  }
  
  public b b(boolean paramBoolean, Collection<String> paramCollection)
  {
    long l = System.nanoTime();
    if (paramBoolean) {
      return super.a(MergedQueue.SetId.S0, l, paramCollection).a(super.a(MergedQueue.SetId.S1, l, paramCollection));
    }
    return super.a(MergedQueue.SetId.S1, l, paramCollection);
  }
  
  protected MergedQueue.SetId c(com.path.android.jobqueue.b paramb)
  {
    if (paramb.b()) {
      return MergedQueue.SetId.S0;
    }
    return MergedQueue.SetId.S1;
  }
}

/* Location:
 * Qualified Name:     com.path.android.jobqueue.nonPersistentQueue.d
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */