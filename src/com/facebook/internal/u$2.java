package com.facebook.internal;

import com.facebook.FacebookRequestError;
import com.facebook.GraphRequest.b;
import com.facebook.GraphResponse;

final class u$2
  implements GraphRequest.b
{
  u$2(u.c paramc, String paramString) {}
  
  public void a(GraphResponse paramGraphResponse)
  {
    if (paramGraphResponse.a() != null)
    {
      a.a(paramGraphResponse.a().f());
      return;
    }
    r.a(b, paramGraphResponse.b());
    a.a(paramGraphResponse.b());
  }
}

/* Location:
 * Qualified Name:     com.facebook.internal.u.2
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */