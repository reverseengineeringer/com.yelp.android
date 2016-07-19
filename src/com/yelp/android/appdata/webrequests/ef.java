package com.yelp.android.appdata.webrequests;

import com.yelp.android.appdata.webrequests.core.b;
import com.yelp.android.serializable.TranslatedReview;
import com.yelp.parcelgen.JsonParser.DualCreator;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Locale;
import java.util.Map;
import org.json.JSONException;
import org.json.JSONObject;

public class ef
  extends b<String, Void, Map<String, TranslatedReview>>
{
  public ef(Iterable<String> paramIterable, Locale paramLocale, ApiRequest.b<Map<String, TranslatedReview>> paramb)
  {
    super(ApiRequest.RequestType.GET, "review/translate", paramb);
    a("review_ids", paramIterable);
    a("translate_to_lang", paramLocale.getLanguage());
  }
  
  public Map<String, TranslatedReview> a(JSONObject paramJSONObject)
    throws YelpException, JSONException
  {
    paramJSONObject = paramJSONObject.getJSONObject("translated_reviews");
    HashMap localHashMap = new HashMap();
    Iterator localIterator = paramJSONObject.keys();
    while (localIterator.hasNext())
    {
      String str = (String)localIterator.next();
      localHashMap.put(str, TranslatedReview.CREATOR.parse(paramJSONObject.getJSONObject(str)));
    }
    return localHashMap;
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.appdata.webrequests.ef
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */