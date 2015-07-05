package com.path.android.jobqueue.nonPersistentQueue;

import com.path.android.jobqueue.b;
import java.util.Comparator;

public class a
  implements Comparator<b>
{
  final Comparator<b> a;
  
  public a(Comparator<b> paramComparator)
  {
    a = paramComparator;
  }
  
  public int a(b paramb1, b paramb2)
  {
    if (paramb1.g() < paramb2.g()) {
      return -1;
    }
    if (paramb1.g() > paramb2.g()) {
      return 1;
    }
    return a.compare(paramb1, paramb2);
  }
}

/* Location:
 * Qualified Name:     com.path.android.jobqueue.nonPersistentQueue.a
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */