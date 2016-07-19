package android.support.v7.widget;

import java.util.ArrayList;
import java.util.Iterator;

class f$3
  implements Runnable
{
  f$3(f paramf, ArrayList paramArrayList) {}
  
  public void run()
  {
    Iterator localIterator = a.iterator();
    while (localIterator.hasNext())
    {
      RecyclerView.u localu = (RecyclerView.u)localIterator.next();
      f.a(b, localu);
    }
    a.clear();
    f.c(b).remove(a);
  }
}

/* Location:
 * Qualified Name:     android.support.v7.widget.f.3
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */