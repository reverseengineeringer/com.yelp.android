package com.yelp.android.ui.util;

import android.content.Context;
import android.location.Location;
import com.yelp.android.analytics.iris.EventIri;
import com.yelp.android.analytics.iris.ViewIri;
import com.yelp.android.appdata.AppData;
import com.yelp.android.appdata.webrequests.ApiRequest.b;
import com.yelp.android.appdata.webrequests.core.MetricsManager;
import com.yelp.android.appdata.webrequests.eg;
import com.yelp.android.appdata.webrequests.ep;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;

public class af<T>
  extends SuggestionFilter<T>
{
  public af(List<CharSequence> paramList, ArrayList<CharSequence> paramArrayList1, ArrayList<CharSequence> paramArrayList2, boolean paramBoolean, SuggestionFilter.SuggestionType paramSuggestionType, SuggestionFilter.b<T> paramb)
  {
    super(paramList, paramArrayList1, paramArrayList2, paramBoolean, true, paramSuggestionType, paramb);
  }
  
  protected ViewIri a()
  {
    return ViewIri.SearchBarSuggestRichDisplay;
  }
  
  protected ep<T> a(String paramString1, ApiRequest.b<List<T>> paramb, Location paramLocation, String paramString2)
  {
    if (paramLocation != null) {
      return new eg(paramString1, d(), paramLocation, paramString2, paramb);
    }
    return new eg(paramString1, d(), paramb);
  }
  
  protected void a(Context paramContext, HashMap<String, Object> paramHashMap)
  {
    AppData.b().k().a(EventIri.SearchBarSuggestRich, paramHashMap);
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.ui.util.af
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */