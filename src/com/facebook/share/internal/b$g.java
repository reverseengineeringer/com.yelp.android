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
import org.json.JSONObject;

class b$g
  extends b.a
{
  String e;
  boolean f;
  
  b$g(b paramb, String paramString, LikeView.ObjectType paramObjectType)
  {
    super(paramb, paramString, paramObjectType);
    paramb = new Bundle();
    paramb.putString("fields", "id");
    paramb.putString("ids", paramString);
    a(new GraphRequest(AccessToken.a(), "", paramb, HttpMethod.GET));
  }
  
  protected void a(FacebookRequestError paramFacebookRequestError)
  {
    n.a(LoggingBehavior.REQUESTS, b.f(), "Error getting the FB id for object '%s' with type '%s' : %s", new Object[] { a, b, paramFacebookRequestError });
  }
  
  protected void a(GraphResponse paramGraphResponse)
  {
    paramGraphResponse = u.b(paramGraphResponse.b(), a);
    if (paramGraphResponse != null)
    {
      e = paramGraphResponse.optString("id");
      if (u.a(e)) {
        break label44;
      }
    }
    label44:
    for (boolean bool = true;; bool = false)
    {
      f = bool;
      return;
    }
  }
}

/* Location:
 * Qualified Name:     com.facebook.share.internal.b.g
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */