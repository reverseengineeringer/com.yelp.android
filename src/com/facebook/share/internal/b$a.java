package com.facebook.share.internal;

import com.facebook.FacebookRequestError;
import com.facebook.GraphRequest;
import com.facebook.GraphRequest.b;
import com.facebook.GraphResponse;
import com.facebook.LoggingBehavior;
import com.facebook.i;
import com.facebook.internal.n;
import com.facebook.share.widget.LikeView.ObjectType;

abstract class b$a
{
  protected String a;
  protected LikeView.ObjectType b;
  FacebookRequestError c;
  private GraphRequest e;
  
  protected b$a(b paramb, String paramString, LikeView.ObjectType paramObjectType)
  {
    a = paramString;
    b = paramObjectType;
  }
  
  protected void a(FacebookRequestError paramFacebookRequestError)
  {
    n.a(LoggingBehavior.REQUESTS, b.f(), "Error running request for object '%s' with type '%s' : %s", new Object[] { a, b, paramFacebookRequestError });
  }
  
  protected void a(GraphRequest paramGraphRequest)
  {
    e = paramGraphRequest;
    paramGraphRequest.a("v2.3");
    paramGraphRequest.a(new GraphRequest.b()
    {
      public void a(GraphResponse paramAnonymousGraphResponse)
      {
        c = paramAnonymousGraphResponse.a();
        if (c != null)
        {
          a(c);
          return;
        }
        b.a.this.a(paramAnonymousGraphResponse);
      }
    });
  }
  
  protected abstract void a(GraphResponse paramGraphResponse);
  
  void a(i parami)
  {
    parami.a(e);
  }
}

/* Location:
 * Qualified Name:     com.facebook.share.internal.b.a
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */