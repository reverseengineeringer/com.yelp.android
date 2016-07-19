package com.yelp.android.ui.util;

import android.content.Context;
import android.location.Location;
import com.yelp.android.analytics.iris.EventIri;
import com.yelp.android.appdata.AppData;
import com.yelp.android.appdata.webrequests.ApiRequest.b;
import com.yelp.android.appdata.webrequests.cn;
import com.yelp.android.appdata.webrequests.core.MetricsManager;
import com.yelp.android.appdata.webrequests.ep;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;

public class y<T>
  extends SuggestionFilter<T>
{
  public y(List<CharSequence> paramList, ArrayList<CharSequence> paramArrayList1, ArrayList<CharSequence> paramArrayList2, boolean paramBoolean, SuggestionFilter.SuggestionType paramSuggestionType, SuggestionFilter.b<T> paramb)
  {
    super(paramList, paramArrayList1, paramArrayList2, paramBoolean, false, paramSuggestionType, paramb);
  }
  
  protected ep a(String paramString1, ApiRequest.b<List<T>> paramb, Location paramLocation, String paramString2)
  {
    return new cn(paramString1, paramLocation, paramb);
  }
  
  protected void a(Context paramContext, HashMap<String, Object> paramHashMap)
  {
    AppData.b().k().a(EventIri.SearchBarSuggestLocation, paramHashMap);
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.ui.util.y
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */