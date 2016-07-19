package com.yelp.android.cz;

import java.util.Iterator;
import java.util.List;
import jp.line.android.sdk.login.b;

final class e
  implements Runnable
{
  e(d paramd, List paramList) {}
  
  public final void run()
  {
    Iterator localIterator = a.iterator();
    while (localIterator.hasNext())
    {
      b localb = (b)localIterator.next();
      b.b(localb);
    }
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.cz.e
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */