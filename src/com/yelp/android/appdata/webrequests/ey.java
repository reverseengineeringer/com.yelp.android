package com.yelp.android.appdata.webrequests;

import android.text.TextUtils;
import com.yelp.android.appdata.z;
import com.yelp.android.av.g;
import com.yelp.android.serializable.YelpBusinessReview;
import com.yelp.parcelgen.JsonUtil;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.Locale;
import java.util.TreeMap;
import org.json.JSONArray;
import org.json.JSONObject;

public class ey
  extends g<String, Void, ez>
{
  public final Locale a;
  
  public ey(String paramString1, int paramInt1, int paramInt2, String paramString2, Locale paramLocale, m<ez> paramm)
  {
    this(paramString1, paramInt1, paramInt2, paramString2, paramLocale, null, paramm);
  }
  
  public ey(String paramString1, int paramInt1, int paramInt2, String paramString2, Locale paramLocale, String paramString3, m<ez> paramm)
  {
    super(ApiRequest.RequestType.GET, "reviews", paramm);
    addUrlParam("business_id", paramString1);
    addUrlParam("limit", paramInt2);
    addUrlParam("offset", paramInt1);
    if (!TextUtils.isEmpty(paramString2)) {
      addUrlParam("selected_review_id", paramString2);
    }
    if (!TextUtils.isEmpty(paramString3)) {
      addUrlParam("translate_to_lang", paramString3);
    }
    addUrlParam("lang", paramLocale.getLanguage());
    a = paramLocale;
  }
  
  public ey(String paramString, int paramInt1, int paramInt2, Locale paramLocale, m<ez> paramm)
  {
    this(paramString, paramInt1, paramInt2, null, paramLocale, null, paramm);
  }
  
  public ey(String paramString1, int paramInt1, int paramInt2, Locale paramLocale, String paramString2, m<ez> paramm)
  {
    this(paramString1, paramInt1, paramInt2, null, paramLocale, paramString2, paramm);
  }
  
  public ez a(JSONObject paramJSONObject)
  {
    int j = 0;
    JSONArray localJSONArray1 = paramJSONObject.getJSONArray("reviews");
    Object localObject = paramJSONObject.optJSONObject("language_review_counts");
    JSONArray localJSONArray2 = paramJSONObject.optJSONArray("languages");
    if (paramJSONObject.has("not_recommended_review_count")) {}
    for (int i = paramJSONObject.getInt("not_recommended_review_count");; i = 0)
    {
      paramJSONObject = new TreeMap(new z());
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
      return new ez(JsonUtil.parseJsonList(localJSONArray1, YelpBusinessReview.CREATOR), a, paramJSONObject, (List)localObject, i);
    }
  }
  
  public void a(String paramString)
  {
    if ((isCompleted()) || (isCancelled())) {
      throw new IllegalStateException("Cannot change a completed request");
    }
    addUrlParam("selected_review_id", paramString);
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.appdata.webrequests.ey
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */