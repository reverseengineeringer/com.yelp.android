package rx.internal.util;

import java.util.Queue;

class a$1
  implements com.yelp.android.dg.a
{
  a$1(a parama) {}
  
  public void call()
  {
    int j = 0;
    int i = 0;
    int k = a.a.size();
    if (k < a.b)
    {
      j = a.c;
      while (i < j - k)
      {
        a.a.add(a.b());
        i += 1;
      }
    }
    if (k > a.c)
    {
      int m = a.c;
      i = j;
      while (i < k - m)
      {
        a.a.poll();
        i += 1;
      }
    }
  }
}

/* Location:
 * Qualified Name:     rx.internal.util.a.1
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */