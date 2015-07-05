package com.path.android.jobqueue.nonPersistentQueue;

import com.path.android.jobqueue.b;
import java.util.Comparator;

public class h
  implements Comparator<b>
{
  final Comparator<b> a;
  
  public h(Comparator<b> paramComparator)
  {
    a = paramComparator;
  }
  
  public int a(b paramb1, b paramb2)
  {
    int j = 0;
    int k = 1;
    long l = System.nanoTime();
    int i;
    if (paramb1.g() <= l)
    {
      i = 1;
      if (paramb2.g() <= l) {
        j = 1;
      }
      if (i == 0) {
        break label73;
      }
      if (j == 0) {
        break label68;
      }
      i = a.compare(paramb1, paramb2);
      label57:
      j = i;
    }
    label68:
    label73:
    label98:
    do
    {
      do
      {
        return j;
        i = 0;
        break;
        i = -1;
        break label57;
        if (j == 0) {
          break label98;
        }
        j = k;
      } while (i == 0);
      return a.compare(paramb1, paramb2);
      if (paramb1.g() < paramb2.g()) {
        return -1;
      }
      j = k;
    } while (paramb1.g() > paramb2.g());
    return a.compare(paramb1, paramb2);
  }
}

/* Location:
 * Qualified Name:     com.path.android.jobqueue.nonPersistentQueue.h
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */