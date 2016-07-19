package com.path.android.jobqueue.nonPersistentQueue;

import com.path.android.jobqueue.a;
import java.util.Comparator;

class f$1
  implements Comparator<a>
{
  f$1(f paramf) {}
  
  public int a(a parama1, a parama2)
  {
    int i = f.a(parama1.c(), parama2.c());
    if (i != 0) {}
    int j;
    do
    {
      return i;
      j = -f.a(parama1.e(), parama2.e());
      i = j;
    } while (j != 0);
    return -f.a(parama1.a().longValue(), parama2.a().longValue());
  }
}

/* Location:
 * Qualified Name:     com.path.android.jobqueue.nonPersistentQueue.f.1
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */