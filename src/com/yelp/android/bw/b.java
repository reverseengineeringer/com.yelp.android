package com.yelp.android.bw;

import com.yelp.android.bx.c;
import rx.d;
import rx.e;
import rx.f;

public abstract class b<V extends com.yelp.android.bx.b, M extends c>
  extends a<V, M>
  implements com.yelp.android.bx.a
{
  private final com.yelp.android.dm.b c;
  private final d d;
  private final d e;
  
  public b(com.yelp.android.by.b paramb, V paramV, M paramM)
  {
    super(paramV, paramM);
    d = a;
    e = b;
    c = new com.yelp.android.dm.b();
  }
  
  protected <T> f a(rx.a<T> parama, e<T> parame)
  {
    parama = parama.b(d).a(e).b(parame);
    c.a(parama);
    return parama;
  }
  
  public void c()
  {
    super.c();
    c.a();
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.bw.b
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */