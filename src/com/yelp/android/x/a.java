package com.yelp.android.x;

import com.yelp.android.r.c;
import com.yelp.android.r.f;
import com.yelp.android.v.e;
import com.yelp.android.v.j;
import com.yelp.android.v.m;
import java.io.InputStream;

public class a
  implements m<e, InputStream>
{
  private final j<e, e> a;
  
  public a()
  {
    this(null);
  }
  
  public a(j<e, e> paramj)
  {
    a = paramj;
  }
  
  public c<InputStream> a(e parame, int paramInt1, int paramInt2)
  {
    e locale = parame;
    if (a != null)
    {
      locale = (e)a.a(parame, 0, 0);
      if (locale != null) {
        break label54;
      }
      a.a(parame, 0, 0, parame);
      locale = parame;
    }
    label54:
    for (;;)
    {
      return new f(locale);
    }
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.x.a
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */