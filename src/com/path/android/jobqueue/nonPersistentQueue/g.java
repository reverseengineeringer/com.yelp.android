package com.path.android.jobqueue.nonPersistentQueue;

import com.path.android.jobqueue.a;
import java.util.Comparator;

public class g
  implements Comparator<a>
{
  final Comparator<a> a;
  
  public g(Comparator<a> paramComparator)
  {
    a = paramComparator;
  }
  
  public int a(a parama1, a parama2)
  {
    int j = 0;
    int k = 1;
    long l = System.nanoTime();
    int i;
    if (parama1.g() <= l)
    {
      i = 1;
      if (parama2.g() <= l) {
        j = 1;
      }
      if (i == 0) {
        break label73;
      }
      if (j == 0) {
        break label68;
      }
      i = a.compare(parama1, parama2);
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
      return a.compare(parama1, parama2);
      if (parama1.g() < parama2.g()) {
        return -1;
      }
      j = k;
    } while (parama1.g() > parama2.g());
    return a.compare(parama1, parama2);
  }
}

/* Location:
 * Qualified Name:     com.path.android.jobqueue.nonPersistentQueue.g
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */