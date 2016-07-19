package com.path.android.jobqueue.nonPersistentQueue;

import com.path.android.jobqueue.a;
import java.util.Collection;
import java.util.Comparator;

public class d
  extends MergedQueue
{
  public d(int paramInt, Comparator<a> paramComparator)
  {
    super(paramInt, paramComparator, new g(paramComparator));
  }
  
  public a a(boolean paramBoolean, Collection<String> paramCollection)
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
  
  protected c a(MergedQueue.SetId paramSetId, int paramInt, Comparator<a> paramComparator)
  {
    return new h(paramInt, paramComparator);
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
  
  protected MergedQueue.SetId c(a parama)
  {
    if (parama.b()) {
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