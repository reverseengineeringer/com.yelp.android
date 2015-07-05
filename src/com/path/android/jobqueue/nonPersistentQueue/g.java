package com.path.android.jobqueue.nonPersistentQueue;

import com.path.android.jobqueue.b;
import java.util.Comparator;

class g
  implements Comparator<b>
{
  g(f paramf) {}
  
  public int a(b paramb1, b paramb2)
  {
    int i = f.a(paramb1.c(), paramb2.c());
    if (i != 0) {}
    int j;
    do
    {
      return i;
      j = -f.a(paramb1.e(), paramb2.e());
      i = j;
    } while (j != 0);
    return -f.a(paramb1.a().longValue(), paramb2.a().longValue());
  }
}

/* Location:
 * Qualified Name:     com.path.android.jobqueue.nonPersistentQueue.g
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */