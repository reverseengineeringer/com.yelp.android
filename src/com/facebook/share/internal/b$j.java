package com.facebook.share.internal;

import com.facebook.AccessToken;
import com.facebook.FacebookRequestError;
import com.facebook.GraphRequest;
import com.facebook.GraphResponse;
import com.facebook.HttpMethod;
import com.facebook.LoggingBehavior;
import com.facebook.internal.n;

class b$j
  extends b.a
{
  private String f;
  
  b$j(b paramb, String paramString)
  {
    super(paramb, null, null);
    f = paramString;
    a(new GraphRequest(AccessToken.a(), paramString, null, HttpMethod.DELETE));
  }
  
  protected void a(FacebookRequestError paramFacebookRequestError)
  {
    n.a(LoggingBehavior.REQUESTS, b.f(), "Error unliking object with unlike token '%s' : %s", new Object[] { f, paramFacebookRequestError });
    b.a(e, "publish_unlike", paramFacebookRequestError);
  }
  
  protected void a(GraphResponse paramGraphResponse) {}
}

/* Location:
 * Qualified Name:     com.facebook.share.internal.b.j
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */