package com.yelp.android.ui.activities.search;

import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import com.yelp.android.appdata.o;
import com.yelp.android.appdata.webrequests.SearchRequest.SearchResponse;
import com.yelp.android.serializable.BusinessSearchResult;
import com.yelp.android.serializable.YelpBusiness;
import com.yelp.android.util.BasicBroadcastReceiver;
import com.yelp.android.util.ObjectDirtyEvent;

class SearchBusinessesByMap$3
  extends BasicBroadcastReceiver
{
  SearchBusinessesByMap$3(SearchBusinessesByMap paramSearchBusinessesByMap, IntentFilter... paramVarArgs)
  {
    super(paramVarArgs);
  }
  
  public void onReceive(Context paramContext, Intent paramIntent)
  {
    paramContext = (YelpBusiness)ObjectDirtyEvent.a(paramIntent);
    if ((paramContext != null) && (a.a != null) && (a.a.k() != null) && (a.a.k().b() != null)) {
      BusinessSearchResult.a(a.a.k().b(), paramContext);
    }
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.ui.activities.search.SearchBusinessesByMap.3
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */