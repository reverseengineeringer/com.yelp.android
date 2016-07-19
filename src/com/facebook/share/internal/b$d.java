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

class b$d
  extends b.a
{
  String e = b.b(i);
  String f = b.c(i);
  String g = b.d(i);
  String h = b.e(i);
  
  b$d(b paramb, String paramString, LikeView.ObjectType paramObjectType)
  {
    super(paramb, paramString, paramObjectType);
    paramb = new Bundle();
    paramb.putString("fields", "engagement.fields(count_string_with_like,count_string_without_like,social_sentence_with_like,social_sentence_without_like)");
    a(new GraphRequest(AccessToken.a(), paramString, paramb, HttpMethod.GET));
  }
  
  protected void a(FacebookRequestError paramFacebookRequestError)
  {
    n.a(LoggingBehavior.REQUESTS, b.f(), "Error fetching engagement for object '%s' with type '%s' : %s", new Object[] { a, b, paramFacebookRequestError });
    b.a(i, "get_engagement", paramFacebookRequestError);
  }
  
  protected void a(GraphResponse paramGraphResponse)
  {
    paramGraphResponse = u.b(paramGraphResponse.b(), "engagement");
    if (paramGraphResponse != null)
    {
      e = paramGraphResponse.optString("count_string_with_like", e);
      f = paramGraphResponse.optString("count_string_without_like", f);
      g = paramGraphResponse.optString("social_sentence_with_like", g);
      h = paramGraphResponse.optString("social_sentence_without_like", h);
    }
  }
}

/* Location:
 * Qualified Name:     com.facebook.share.internal.b.d
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */