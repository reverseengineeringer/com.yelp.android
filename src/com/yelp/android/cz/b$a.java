package com.yelp.android.cz;

import com.yelp.android.db.a;
import java.util.Iterator;
import java.util.List;
import jp.line.android.sdk.login.d;

final class b$a
  implements Runnable
{
  private List<d> a;
  private a b;
  
  public b$a(List<d> paramList, a parama)
  {
    a = paramList;
    b = parama;
  }
  
  public final void run()
  {
    Iterator localIterator = a.iterator();
    while (localIterator.hasNext())
    {
      d locald = (d)localIterator.next();
      a locala = b;
      try
      {
        locald.a(locala);
      }
      catch (Throwable localThrowable) {}
    }
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.cz.b.a
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */