package com.yelp.android.appdata.webrequests;

import android.location.Location;
import android.text.Html;
import com.yelp.android.serializable.RichSearchSuggestion;
import com.yelp.android.ui.util.SuggestionFilter.SuggestionType;
import com.yelp.android.util.StringUtils;
import com.yelp.parcelgen.JsonParser.DualCreator;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import org.json.JSONException;
import org.json.JSONObject;

public class eg<T>
  extends ep<T>
{
  public eg(String paramString1, SuggestionFilter.SuggestionType paramSuggestionType, Location paramLocation, String paramString2, ApiRequest.b<List<T>> paramb)
  {
    super(ApiRequest.RequestType.GET, a(paramSuggestionType), paramb, paramLocation, paramString2);
    a("term", paramString1);
    if (!StringUtils.d(n)) {
      a("location", n);
    }
    j = paramString1;
  }
  
  public eg(String paramString, SuggestionFilter.SuggestionType paramSuggestionType, ApiRequest.b<List<T>> paramb)
  {
    this(paramString, paramSuggestionType, a, "", paramb);
  }
  
  private static String a(SuggestionFilter.SuggestionType paramSuggestionType)
  {
    if (paramSuggestionType == SuggestionFilter.SuggestionType.CONTRIBUTION) {
      return "suggest/active_nearby";
    }
    if (paramSuggestionType == SuggestionFilter.SuggestionType.BOOKMARK) {
      return "bookmarks/suggest";
    }
    return "suggest/rich";
  }
  
  private List<RichSearchSuggestion> a(List<String> paramList)
    throws JSONException
  {
    ArrayList localArrayList = new ArrayList();
    paramList = paramList.iterator();
    while (paramList.hasNext())
    {
      String str = (String)paramList.next();
      localArrayList.add(RichSearchSuggestion.CREATOR.parse(new JSONObject(Html.fromHtml(str).toString())));
    }
    return localArrayList;
  }
  
  public List<T> a(JSONObject paramJSONObject)
    throws JSONException
  {
    return a(super.a(paramJSONObject));
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.appdata.webrequests.eg
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */