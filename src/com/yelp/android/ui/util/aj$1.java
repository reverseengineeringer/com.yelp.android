package com.yelp.android.ui.util;

import java.util.ArrayList;
import java.util.Iterator;

class aj$1
  implements Iterator<g>
{
  Iterator<aj.b<?>> a = aj.a(b).iterator();
  
  aj$1(aj paramaj) {}
  
  public g a()
  {
    return (g)a.next()).a;
  }
  
  public boolean hasNext()
  {
    return a.hasNext();
  }
  
  public void remove()
  {
    a.remove();
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.ui.util.aj.1
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */