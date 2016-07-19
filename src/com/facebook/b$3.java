package com.facebook;

import org.json.JSONObject;

class b$3
  implements GraphRequest.b
{
  b$3(b paramb, b.a parama) {}
  
  public void a(GraphResponse paramGraphResponse)
  {
    paramGraphResponse = paramGraphResponse.b();
    if (paramGraphResponse == null) {
      return;
    }
    a.a = paramGraphResponse.optString("access_token");
    a.b = paramGraphResponse.optInt("expires_at");
  }
}

/* Location:
 * Qualified Name:     com.facebook.b.3
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */