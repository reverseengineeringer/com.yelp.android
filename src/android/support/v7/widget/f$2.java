package android.support.v7.widget;

import java.util.ArrayList;
import java.util.Iterator;

class f$2
  implements Runnable
{
  f$2(f paramf, ArrayList paramArrayList) {}
  
  public void run()
  {
    Iterator localIterator = a.iterator();
    while (localIterator.hasNext())
    {
      f.a locala = (f.a)localIterator.next();
      f.a(b, locala);
    }
    a.clear();
    f.b(b).remove(a);
  }
}

/* Location:
 * Qualified Name:     android.support.v7.widget.f.2
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */