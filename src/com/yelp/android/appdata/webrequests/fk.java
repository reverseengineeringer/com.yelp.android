package com.yelp.android.appdata.webrequests;

import android.location.Location;
import android.text.Html;
import com.yelp.android.serializable.RichSearchSuggestion;
import com.yelp.android.util.StringUtils;
import com.yelp.parcelgen.JsonParser.DualCreator;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import org.json.JSONObject;

public class fk<T>
  extends fy<T>
{
  public fk(String paramString1, boolean paramBoolean, Location paramLocation, String paramString2, m<List<T>> paramm)
  {
    super(ApiRequest.RequestType.GET, a(paramBoolean), paramm, paramLocation, paramString2);
    addUrlParam("term", paramString1);
    if (!StringUtils.e(i)) {
      addUrlParam("location", i);
    }
    e = paramString1;
  }
  
  public fk(String paramString, boolean paramBoolean, m<List<T>> paramm)
  {
    this(paramString, paramBoolean, a, "", paramm);
  }
  
  private static String a(boolean paramBoolean)
  {
    if (paramBoolean) {
      return "suggest/active_nearby";
    }
    return "suggest/rich";
  }
  
  private List<RichSearchSuggestion> a(List<String> paramList)
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
  {
    return a(super.a(paramJSONObject));
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.appdata.webrequests.fk
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */