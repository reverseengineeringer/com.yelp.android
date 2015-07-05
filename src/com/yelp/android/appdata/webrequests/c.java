package com.yelp.android.appdata.webrequests;

import android.text.TextUtils;
import com.yelp.android.appdata.LocationService.Accuracies;
import com.yelp.android.appdata.LocationService.AccuracyUnit;
import com.yelp.android.appdata.LocationService.Recentness;
import com.yelp.android.serializable.en;
import com.yelp.android.serializable.ep;
import com.yelp.android.serializable.eq;
import com.yelp.android.util.m;
import com.yelp.android.util.p;
import com.yelp.android.util.q;
import java.io.File;
import java.io.FileInputStream;
import java.util.Collections;
import java.util.Locale;
import org.apache.http.HttpEntity;
import org.json.JSONObject;

public class c
  extends h<Void, Void, eq>
{
  private final HttpEntity a;
  private final String b;
  private final String c;
  private final String d;
  
  public c(String paramString1, String paramString2, String paramString3, String paramString4, String paramString5, String paramString6, String paramString7, String paramString8, String paramString9, boolean paramBoolean, Locale paramLocale, j<eq> paramj)
  {
    super(ApiRequest.RequestType.POST, "account/create_secure", LocationService.Accuracies.COARSE, LocationService.Recentness.HOUR, paramj, LocationService.AccuracyUnit.METERS);
    addPostParam("first_name", paramString1);
    addPostParam("last_name", paramString2);
    addPostParam("email", paramString3);
    addPostParam("password", paramString4);
    addPostParam("user_country_code", paramLocale.getCountry());
    if (!TextUtils.isEmpty(paramString6))
    {
      addPostParam("zip", paramString6);
      if (!paramBoolean) {
        break label166;
      }
    }
    label166:
    for (int i = 1;; i = 0)
    {
      addPostParam("confirmed", i);
      if (paramString7 != null) {
        addPostParam("gender", paramString7);
      }
      if (paramString8 != null) {
        addPostParam("birthdate", paramString8);
      }
      c = paramString1;
      d = paramString2;
      b = paramString3;
      if (!TextUtils.isEmpty(paramString9)) {
        break label172;
      }
      a = null;
      return;
      if (TextUtils.isEmpty(paramString5)) {
        break;
      }
      addPostParam("city", paramString5);
      break;
    }
    label172:
    paramString1 = new File(paramString9);
    paramString1 = new q(m.i, m.i, null, new FileInputStream(paramString1), paramString1.length());
    a = new p(getPostParameters(), Collections.singleton(paramString1), null);
  }
  
  public eq a(JSONObject paramJSONObject)
  {
    eq localeq = en.a(paramJSONObject);
    if ((TextUtils.isEmpty(localeq.e())) || (TextUtils.isEmpty(localeq.a())) || (TextUtils.isEmpty(localeq.b()))) {
      return new eq(c, d, localeq.c(), localeq.d(), localeq.h(), b, localeq.f(), new ep(paramJSONObject.getJSONObject("message")), localeq.g(), localeq.i());
    }
    return localeq;
  }
  
  protected HttpEntity getPostEntity()
  {
    if (a == null) {
      return super.getPostEntity();
    }
    return a;
  }
  
  public boolean isLocationAbsolutelyRequired()
  {
    return false;
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.appdata.webrequests.c
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */