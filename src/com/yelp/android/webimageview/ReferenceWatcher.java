package com.yelp.android.webimageview;

import java.lang.ref.Reference;
import java.lang.ref.ReferenceQueue;
import java.lang.ref.SoftReference;
import java.util.HashSet;
import java.util.Iterator;
import java.util.Set;
import java.util.concurrent.atomic.AtomicInteger;

public class ReferenceWatcher<T>
{
  private final AtomicInteger mCount;
  private final ReferenceQueue<? super T> mQueue = new ReferenceQueue();
  private HashSet<Reference<T>> mRefs = new HashSet();
  private final int mThreshold;
  
  public ReferenceWatcher()
  {
    this(20);
  }
  
  public ReferenceWatcher(int paramInt)
  {
    mThreshold = paramInt;
    mCount = new AtomicInteger();
  }
  
  private final void clean()
  {
    for (;;)
    {
      Object localObject = mQueue.poll();
      if (localObject == null) {
        break;
      }
      localObject = ((Reference)localObject).get();
      if (localObject != null) {
        mRefs.remove(localObject);
      }
    }
  }
  
  public Set<T> getSnapShotAndClean()
  {
    clean();
    HashSet localHashSet = new HashSet();
    Iterator localIterator = mRefs.iterator();
    while (localIterator.hasNext())
    {
      Object localObject = ((Reference)localIterator.next()).get();
      if (localObject != null) {
        localHashSet.add(localObject);
      }
    }
    mCount.set(mRefs.size());
    return localHashSet;
  }
  
  public void watch(T paramT)
  {
    mRefs.add(new SoftReference(paramT, mQueue));
    if (mCount.incrementAndGet() >= mThreshold) {
      clean();
    }
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.webimageview.ReferenceWatcher
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */