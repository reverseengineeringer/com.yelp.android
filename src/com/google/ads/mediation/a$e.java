package com.google.ads.mediation;

import com.google.android.gms.ads.formats.c;
import com.google.android.gms.ads.formats.c.a;
import com.google.android.gms.ads.formats.d;
import com.google.android.gms.ads.formats.d.a;
import com.yelp.android.bc.h;

final class a$e
  extends com.google.android.gms.ads.a
  implements c.a, d.a, com.google.android.gms.ads.internal.client.a
{
  final a a;
  final h b;
  
  public a$e(a parama, h paramh)
  {
    a = parama;
    b = paramh;
  }
  
  public void a() {}
  
  public void a(int paramInt)
  {
    b.a(a, paramInt);
  }
  
  public void a(c paramc)
  {
    b.a(a, new a.a(paramc));
  }
  
  public void a(d paramd)
  {
    b.a(a, new a.b(paramd));
  }
  
  public void b()
  {
    b.a(a);
  }
  
  public void c()
  {
    b.b(a);
  }
  
  public void d()
  {
    b.c(a);
  }
  
  public void e()
  {
    b.d(a);
  }
}

/* Location:
 * Qualified Name:     com.google.ads.mediation.a.e
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */