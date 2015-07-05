package android.support.v7.widget;

import java.util.ArrayList;
import java.util.Iterator;

class x
  implements Runnable
{
  x(u paramu, ArrayList paramArrayList) {}
  
  public void run()
  {
    Iterator localIterator = a.iterator();
    while (localIterator.hasNext())
    {
      ce localce = (ce)localIterator.next();
      u.a(b, localce);
    }
    a.clear();
    u.c(b).remove(a);
  }
}

/* Location:
 * Qualified Name:     android.support.v7.widget.x
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */