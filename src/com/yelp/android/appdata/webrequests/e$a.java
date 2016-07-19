package com.yelp.android.appdata.webrequests;

import org.json.JSONException;
import org.json.JSONObject;

public class e$a
{
  public final String a;
  public final String b;
  public final String c;
  
  public e$a(JSONObject paramJSONObject)
    throws JSONException
  {
    a = paramJSONObject.getString("first_name");
    b = paramJSONObject.getString("last_name");
    c = paramJSONObject.getString("email");
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.appdata.webrequests.e.a
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */