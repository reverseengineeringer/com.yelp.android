package com.yelp.android.services;

import org.apache.http.conn.params.ConnPerRoute;
import org.apache.http.conn.routing.HttpRoute;

final class c$2
  implements ConnPerRoute
{
  public int getMaxForRoute(HttpRoute paramHttpRoute)
  {
    return 10;
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.services.c.2
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */