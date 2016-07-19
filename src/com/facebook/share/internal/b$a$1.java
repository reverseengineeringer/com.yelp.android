package com.facebook.share.internal;

import com.facebook.GraphRequest.b;
import com.facebook.GraphResponse;

class b$a$1
  implements GraphRequest.b
{
  b$a$1(b.a parama) {}
  
  public void a(GraphResponse paramGraphResponse)
  {
    a.c = paramGraphResponse.a();
    if (a.c != null)
    {
      a.a(a.c);
      return;
    }
    a.a(paramGraphResponse);
  }
}

/* Location:
 * Qualified Name:     com.facebook.share.internal.b.a.1
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */