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

class b$e
  extends b.a
{
  String e;
  
  b$e(b paramb, String paramString, LikeView.ObjectType paramObjectType)
  {
    super(paramb, paramString, paramObjectType);
    paramb = new Bundle();
    paramb.putString("fields", "og_object.fields(id)");
    paramb.putString("ids", paramString);
    a(new GraphRequest(AccessToken.a(), "", paramb, HttpMethod.GET));
  }
  
  protected void a(FacebookRequestError paramFacebookRequestError)
  {
    if (paramFacebookRequestError.d().contains("og_object"))
    {
      c = null;
      return;
    }
    n.a(LoggingBehavior.REQUESTS, b.f(), "Error getting the FB id for object '%s' with type '%s' : %s", new Object[] { a, b, paramFacebookRequestError });
  }
  
  protected void a(GraphResponse paramGraphResponse)
  {
    paramGraphResponse = u.b(paramGraphResponse.b(), a);
    if (paramGraphResponse != null)
    {
      paramGraphResponse = paramGraphResponse.optJSONObject("og_object");
      if (paramGraphResponse != null) {
        e = paramGraphResponse.optString("id");
      }
    }
  }
}

/* Location:
 * Qualified Name:     com.facebook.share.internal.b.e
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */