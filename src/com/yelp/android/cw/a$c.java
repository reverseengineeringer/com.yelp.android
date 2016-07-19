package com.yelp.android.cw;

import jp.line.android.sdk.api.FutureStatus;
import jp.line.android.sdk.api.b;

final class a$c<RO>
  implements jp.line.android.sdk.api.c<RO>
{
  private final c a;
  private final e b;
  
  a$c(c paramc, e parame)
  {
    a = paramc;
    b = parame;
  }
  
  public final void a(b<RO> paramb)
  {
    if ((paramb.b() == FutureStatus.SUCCESS) && (paramb.c() != null))
    {
      paramb = b;
      paramb = a;
    }
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.cw.a.c
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */