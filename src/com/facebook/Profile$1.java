package com.facebook;

import android.net.Uri;
import com.facebook.internal.u.c;
import org.json.JSONObject;

final class Profile$1
  implements u.c
{
  public void a(FacebookException paramFacebookException) {}
  
  public void a(JSONObject paramJSONObject)
  {
    String str1 = paramJSONObject.optString("id");
    if (str1 == null) {
      return;
    }
    String str6 = paramJSONObject.optString("link");
    String str2 = paramJSONObject.optString("first_name");
    String str3 = paramJSONObject.optString("middle_name");
    String str4 = paramJSONObject.optString("last_name");
    String str5 = paramJSONObject.optString("name");
    if (str6 != null) {}
    for (paramJSONObject = Uri.parse(str6);; paramJSONObject = null)
    {
      Profile.a(new Profile(str1, str2, str3, str4, str5, paramJSONObject));
      return;
    }
  }
}

/* Location:
 * Qualified Name:     com.facebook.Profile.1
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */