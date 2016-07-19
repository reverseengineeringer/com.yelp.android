package com.yelp.android.cz;

import java.util.Iterator;
import java.util.List;
import jp.line.android.sdk.login.c;

final class f
  implements Runnable
{
  f(d paramd, List paramList) {}
  
  public final void run()
  {
    Iterator localIterator = a.iterator();
    while (localIterator.hasNext())
    {
      c localc = (c)localIterator.next();
      b.b(localc);
    }
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.cz.f
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */