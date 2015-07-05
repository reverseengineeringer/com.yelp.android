package com.yelp.android.be;

import com.yelp.android.analytics.n;
import java.util.Map;

public class b
  extends a
{
  protected final com.yelp.android.av.a a;
  protected final com.yelp.android.analytics.iris.b b;
  
  public b(com.yelp.android.av.a parama, com.yelp.android.analytics.iris.b paramb)
  {
    a = parama;
    b = paramb;
  }
  
  public void d()
  {
    a.a(g());
  }
  
  public void e()
  {
    a.b(g());
  }
  
  protected Map<String, Object> f()
  {
    return null;
  }
  
  protected n g()
  {
    return new n(b, c(), f());
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.be.b
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */