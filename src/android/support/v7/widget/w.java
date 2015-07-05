package android.support.v7.widget;

import java.util.ArrayList;
import java.util.Iterator;

class w
  implements Runnable
{
  w(u paramu, ArrayList paramArrayList) {}
  
  public void run()
  {
    Iterator localIterator = a.iterator();
    while (localIterator.hasNext())
    {
      ad localad = (ad)localIterator.next();
      u.a(b, localad);
    }
    a.clear();
    u.b(b).remove(a);
  }
}

/* Location:
 * Qualified Name:     android.support.v7.widget.w
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */