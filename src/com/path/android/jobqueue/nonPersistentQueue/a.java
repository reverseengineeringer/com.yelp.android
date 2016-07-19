package com.path.android.jobqueue.nonPersistentQueue;

import java.util.Comparator;

public class a
  implements Comparator<com.path.android.jobqueue.a>
{
  final Comparator<com.path.android.jobqueue.a> a;
  
  public a(Comparator<com.path.android.jobqueue.a> paramComparator)
  {
    a = paramComparator;
  }
  
  public int a(com.path.android.jobqueue.a parama1, com.path.android.jobqueue.a parama2)
  {
    if (parama1.g() < parama2.g()) {
      return -1;
    }
    if (parama1.g() > parama2.g()) {
      return 1;
    }
    return a.compare(parama1, parama2);
  }
}

/* Location:
 * Qualified Name:     com.path.android.jobqueue.nonPersistentQueue.a
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */