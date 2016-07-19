package com.yelp.android.appdata.webrequests;

import android.text.TextUtils;
import com.yelp.android.appdata.LocationService.Accuracies;
import com.yelp.android.appdata.LocationService.AccuracyUnit;
import com.yelp.android.appdata.LocationService.Recentness;
import com.yelp.android.serializable.h;
import com.yelp.android.serializable.i;
import com.yelp.android.util.g;
import com.yelp.android.util.j.a;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.util.Collections;
import java.util.Locale;
import org.apache.http.HttpEntity;
import org.json.JSONException;
import org.json.JSONObject;

public class d
  extends k<Void, Void, com.yelp.android.serializable.j>
{
  private final HttpEntity g;
  private final String h;
  private final String i;
  private final String j;
  
  public d(String paramString1, String paramString2, String paramString3, String paramString4, String paramString5, String paramString6, String paramString7, String paramString8, String paramString9, boolean paramBoolean, Locale paramLocale, k.b<com.yelp.android.serializable.j> paramb, String paramString10, String paramString11)
    throws FileNotFoundException
  {}
  
  public d(String paramString1, String paramString2, String paramString3, String paramString4, String paramString5, String paramString6, String paramString7, String paramString8, String paramString9, boolean paramBoolean, Locale paramLocale, k.b<com.yelp.android.serializable.j> paramb, String paramString10, String paramString11, String paramString12)
    throws FileNotFoundException
  {
    super(ApiRequest.RequestType.POST, paramString12, LocationService.Accuracies.COARSE, LocationService.Recentness.HOUR, paramb, LocationService.AccuracyUnit.METERS);
    if ((!TextUtils.isEmpty(paramString10)) && (!TextUtils.isEmpty(paramString11)))
    {
      b("line_user_id", paramString11);
      b("access_token", paramString10);
    }
    b("first_name", paramString1);
    b("last_name", paramString2);
    b("email", paramString3);
    b("password", paramString4);
    b("user_country_code", paramLocale.getCountry());
    if (!TextUtils.isEmpty(paramString6))
    {
      b("zip", paramString6);
      if (!paramBoolean) {
        break label198;
      }
    }
    label198:
    for (int k = 1;; k = 0)
    {
      b("confirmed", k);
      if (paramString7 != null) {
        b("gender", paramString7);
      }
      if (paramString8 != null) {
        b("birthdate", paramString8);
      }
      i = paramString1;
      j = paramString2;
      h = paramString3;
      if (!TextUtils.isEmpty(paramString9)) {
        break label204;
      }
      g = null;
      return;
      if (TextUtils.isEmpty(paramString5)) {
        break;
      }
      b("city", paramString5);
      break;
    }
    label204:
    paramString1 = new File(paramString9);
    paramString1 = new j.a(g.i, g.i, null, new FileInputStream(paramString1), paramString1.length());
    g = new com.yelp.android.util.j(t(), Collections.singleton(paramString1), null);
  }
  
  public com.yelp.android.serializable.j a(JSONObject paramJSONObject)
    throws YelpException, JSONException
  {
    com.yelp.android.serializable.j localj = h.a(paramJSONObject);
    if ((TextUtils.isEmpty(localj.g())) || (TextUtils.isEmpty(localj.a())) || (TextUtils.isEmpty(localj.b()))) {
      return new com.yelp.android.serializable.j(i, j, localj.c(), localj.d(), localj.e(), localj.f(), localj.j(), h, localj.h(), new i(paramJSONObject.getJSONObject("message")), localj.i(), localj.l());
    }
    return localj;
  }
  
  protected HttpEntity a()
    throws YelpException
  {
    if (g == null) {
      return super.a();
    }
    return g;
  }
  
  public boolean b()
  {
    return false;
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.appdata.webrequests.d
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */