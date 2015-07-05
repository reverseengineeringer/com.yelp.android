package com.yelp.android.ui.map;

import com.yelp.android.serializable.by;
import java.util.Iterator;
import java.util.List;

class w
  implements Runnable
{
  w(YelpMap paramYelpMap, List paramList, a parama) {}
  
  public void run()
  {
    Iterator localIterator = a.iterator();
    while (localIterator.hasNext())
    {
      by localby = (by)localIterator.next();
      YelpMap.a(c, localby, b);
    }
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.ui.map.w
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */