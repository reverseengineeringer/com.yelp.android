package android.support.v7.widget;

import java.util.ArrayList;
import java.util.Iterator;

class f$1
  implements Runnable
{
  f$1(f paramf, ArrayList paramArrayList) {}
  
  public void run()
  {
    Iterator localIterator = a.iterator();
    while (localIterator.hasNext())
    {
      f.b localb = (f.b)localIterator.next();
      f.a(b, a, b, c, d, e);
    }
    a.clear();
    f.a(b).remove(a);
  }
}

/* Location:
 * Qualified Name:     android.support.v7.widget.f.1
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */