package com.yelp.android.appdata.webrequests;

import com.yelp.android.av.g;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Locale;
import java.util.Map;
import org.json.JSONObject;

public class fj
  extends g<String, Void, Map<String, String>>
{
  public fj(Iterable<String> paramIterable, Locale paramLocale, m<Map<String, String>> paramm)
  {
    super(ApiRequest.RequestType.GET, "review/translate", paramm);
    addUrlParam("review_ids", paramIterable);
    addUrlParam("translate_to_lang", paramLocale.getLanguage());
  }
  
  public Map<String, String> a(JSONObject paramJSONObject)
  {
    paramJSONObject = paramJSONObject.getJSONObject("translated_review_texts");
    HashMap localHashMap = new HashMap();
    Iterator localIterator = paramJSONObject.keys();
    while (localIterator.hasNext())
    {
      String str = (String)localIterator.next();
      localHashMap.put(str, paramJSONObject.getString(str));
    }
    return localHashMap;
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.appdata.webrequests.fj
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */