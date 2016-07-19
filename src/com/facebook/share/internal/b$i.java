package com.facebook.share.internal;

import android.os.Bundle;
import com.facebook.AccessToken;
import com.facebook.FacebookRequestError;
import com.facebook.GraphRequest;
import com.facebook.GraphResponse;
import com.facebook.HttpMethod;
import com.facebook.LoggingBehavior;
import com.facebook.internal.n;
import com.facebook.internal.u;
import com.facebook.share.widget.LikeView.ObjectType;

class b$i
  extends b.a
{
  String e;
  
  b$i(b paramb, String paramString, LikeView.ObjectType paramObjectType)
  {
    super(paramb, paramString, paramObjectType);
    paramb = new Bundle();
    paramb.putString("object", paramString);
    a(new GraphRequest(AccessToken.a(), "me/og.likes", paramb, HttpMethod.POST));
  }
  
  protected void a(FacebookRequestError paramFacebookRequestError)
  {
    if (paramFacebookRequestError.b() == 3501)
    {
      c = null;
      return;
    }
    n.a(LoggingBehavior.REQUESTS, b.f(), "Error liking object '%s' with type '%s' : %s", new Object[] { a, b, paramFacebookRequestError });
    b.a(f, "publish_like", paramFacebookRequestError);
  }
  
  protected void a(GraphResponse paramGraphResponse)
  {
    e = u.a(paramGraphResponse.b(), "id");
  }
}

/* Location:
 * Qualified Name:     com.facebook.share.internal.b.i
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */