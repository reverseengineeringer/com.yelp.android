package com.yelp.android.ac;

import android.content.Context;
import com.yelp.android.aa.d;
import com.yelp.android.aa.k;
import com.yelp.android.aa.l;
import com.yelp.android.aa.m;
import com.yelp.android.w.g;
import java.io.InputStream;

public class a
  implements l<d, InputStream>
{
  private final k<d, d> a;
  
  public a()
  {
    this(null);
  }
  
  public a(k<d, d> paramk)
  {
    a = paramk;
  }
  
  public com.yelp.android.w.c<InputStream> a(d paramd, int paramInt1, int paramInt2)
  {
    d locald = paramd;
    if (a != null)
    {
      locald = (d)a.a(paramd, 0, 0);
      if (locald != null) {
        break label54;
      }
      a.a(paramd, 0, 0, paramd);
      locald = paramd;
    }
    label54:
    for (;;)
    {
      return new g(locald);
    }
  }
  
  public static class a
    implements m<d, InputStream>
  {
    private final k<d, d> a = new k(500);
    
    public l<d, InputStream> a(Context paramContext, com.yelp.android.aa.c paramc)
    {
      return new a(a);
    }
    
    public void a() {}
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.ac.a
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */