package com.facebook;

import android.content.Context;
import android.content.SharedPreferences;
import android.content.SharedPreferences.Editor;
import com.facebook.internal.v;
import org.json.JSONException;
import org.json.JSONObject;

final class k
{
  private final SharedPreferences a = g.f().getSharedPreferences("com.facebook.AccessTokenManager.SharedPreferences", 0);
  
  Profile a()
  {
    Object localObject = a.getString("com.facebook.ProfileManager.CachedProfile", null);
    if (localObject != null) {
      try
      {
        localObject = new Profile(new JSONObject((String)localObject));
        return (Profile)localObject;
      }
      catch (JSONException localJSONException) {}
    }
    return null;
  }
  
  void a(Profile paramProfile)
  {
    v.a(paramProfile, "profile");
    paramProfile = paramProfile.d();
    if (paramProfile != null) {
      a.edit().putString("com.facebook.ProfileManager.CachedProfile", paramProfile.toString()).apply();
    }
  }
  
  void b()
  {
    a.edit().remove("com.facebook.ProfileManager.CachedProfile").apply();
  }
}

/* Location:
 * Qualified Name:     com.facebook.k
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */