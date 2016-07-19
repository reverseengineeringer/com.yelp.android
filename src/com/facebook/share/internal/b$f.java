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
import org.json.JSONArray;
import org.json.JSONObject;

class b$f
  extends b.a
{
  boolean e = b.k(g);
  String f;
  
  b$f(b paramb, String paramString, LikeView.ObjectType paramObjectType)
  {
    super(paramb, paramString, paramObjectType);
    paramb = new Bundle();
    paramb.putString("fields", "id,application");
    paramb.putString("object", paramString);
    a(new GraphRequest(AccessToken.a(), "me/og.likes", paramb, HttpMethod.GET));
  }
  
  protected void a(FacebookRequestError paramFacebookRequestError)
  {
    n.a(LoggingBehavior.REQUESTS, b.f(), "Error fetching like status for object '%s' with type '%s' : %s", new Object[] { a, b, paramFacebookRequestError });
    b.a(g, "get_og_object_like", paramFacebookRequestError);
  }
  
  protected void a(GraphResponse paramGraphResponse)
  {
    paramGraphResponse = u.c(paramGraphResponse.b(), "data");
    if (paramGraphResponse != null)
    {
      int i = 0;
      while (i < paramGraphResponse.length())
      {
        JSONObject localJSONObject1 = paramGraphResponse.optJSONObject(i);
        if (localJSONObject1 != null)
        {
          e = true;
          JSONObject localJSONObject2 = localJSONObject1.optJSONObject("application");
          AccessToken localAccessToken = AccessToken.a();
          if ((localJSONObject2 != null) && (localAccessToken != null) && (u.a(localAccessToken.h(), localJSONObject2.optString("id")))) {
            f = localJSONObject1.optString("id");
          }
        }
        i += 1;
      }
    }
  }
}

/* Location:
 * Qualified Name:     com.facebook.share.internal.b.f
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */