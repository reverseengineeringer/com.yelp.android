package com.yelp.android.appdata.webrequests;

import android.text.TextUtils;
import com.yelp.android.appdata.LocaleSettings.b;
import com.yelp.android.appdata.webrequests.core.b;
import com.yelp.android.serializable.YelpBusinessReview;
import com.yelp.parcelgen.JsonUtil;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.Locale;
import java.util.Map;
import java.util.TreeMap;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

public class dy
  extends b<Void, Void, a>
{
  public final Locale a;
  
  public dy(String paramString1, int paramInt1, int paramInt2, String paramString2, Locale paramLocale, ApiRequest.b<a> paramb)
  {
    this(paramString1, paramInt1, paramInt2, paramString2, paramLocale, null, paramb);
  }
  
  public dy(String paramString1, int paramInt1, int paramInt2, String paramString2, Locale paramLocale, String paramString3, ApiRequest.b<a> paramb)
  {
    super(ApiRequest.RequestType.GET, "reviews", paramb);
    a("business_id", paramString1);
    a("limit", paramInt2);
    a("offset", paramInt1);
    if (!TextUtils.isEmpty(paramString2)) {
      a("selected_review_id", paramString2);
    }
    if (!TextUtils.isEmpty(paramString3)) {
      a("translate_to_lang", paramString3);
    }
    a("lang", paramLocale.getLanguage());
    a = paramLocale;
  }
  
  public dy(String paramString, int paramInt1, int paramInt2, Locale paramLocale, ApiRequest.b<a> paramb)
  {
    this(paramString, paramInt1, paramInt2, null, paramLocale, null, paramb);
  }
  
  public dy(String paramString1, int paramInt1, int paramInt2, Locale paramLocale, String paramString2, ApiRequest.b<a> paramb)
  {
    this(paramString1, paramInt1, paramInt2, null, paramLocale, paramString2, paramb);
  }
  
  public a a(JSONObject paramJSONObject)
    throws YelpException, JSONException
  {
    int j = 0;
    JSONArray localJSONArray1 = paramJSONObject.getJSONArray("reviews");
    Object localObject = paramJSONObject.optJSONObject("language_review_counts");
    JSONArray localJSONArray2 = paramJSONObject.optJSONArray("languages");
    if (paramJSONObject.has("not_recommended_review_count")) {}
    for (int i = paramJSONObject.getInt("not_recommended_review_count");; i = 0)
    {
      paramJSONObject = new TreeMap(new LocaleSettings.b());
      if (localObject != null)
      {
        Iterator localIterator = ((JSONObject)localObject).keys();
        while (localIterator.hasNext())
        {
          String str = (String)localIterator.next();
          paramJSONObject.put(new Locale(str, a.getCountry()), Integer.valueOf(((JSONObject)localObject).optInt(str)));
        }
      }
      localObject = new ArrayList();
      if (localJSONArray2 != null) {
        while (j < localJSONArray2.length())
        {
          ((List)localObject).add(new Locale(localJSONArray2.getString(j), a.getCountry()));
          j += 1;
        }
      }
      return new a(JsonUtil.parseJsonList(localJSONArray1, YelpBusinessReview.CREATOR), a, paramJSONObject, (List)localObject, i);
    }
  }
  
  public void a(String paramString)
  {
    if ((v()) || (l())) {
      throw new IllegalStateException("Cannot change a completed request");
    }
    a("selected_review_id", paramString);
  }
  
  public static class a
  {
    public final List<YelpBusinessReview> a;
    public final Map<Locale, Integer> b;
    public final Locale c;
    public final List<Locale> d;
    public final int e;
    
    public a(List<YelpBusinessReview> paramList, Locale paramLocale, Map<Locale, Integer> paramMap, List<Locale> paramList1, int paramInt)
    {
      a = paramList;
      c = paramLocale;
      b = paramMap;
      d = paramList1;
      e = paramInt;
    }
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.appdata.webrequests.dy
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */