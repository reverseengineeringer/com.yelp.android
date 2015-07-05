package com.yelp.android.webimageview;

import java.util.Comparator;
import java.util.LinkedList;
import java.util.concurrent.PriorityBlockingQueue;

final class ImageLoader$BoundPriorityBlockingQueue<T>
  extends PriorityBlockingQueue<T>
{
  private final int mMaxSize;
  
  public ImageLoader$BoundPriorityBlockingQueue(int paramInt1, int paramInt2, Comparator<? super T> paramComparator)
  {
    super(paramInt2, paramComparator);
    mMaxSize = paramInt1;
  }
  
  public boolean offer(T paramT)
  {
    boolean bool = super.offer(paramT);
    if (size() > mMaxSize)
    {
      paramT = new LinkedList();
      drainTo(paramT, mMaxSize / 2);
      super.clear();
      super.addAll(paramT);
    }
    return bool;
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.webimageview.ImageLoader.BoundPriorityBlockingQueue
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */