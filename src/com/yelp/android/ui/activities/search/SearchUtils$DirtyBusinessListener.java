package com.yelp.android.ui.activities.search;

import android.content.Context;
import android.content.Intent;
import com.yelp.android.appdata.ap;
import com.yelp.android.appdata.webrequests.SearchRequest.SearchResponse;
import com.yelp.android.serializable.BusinessSearchResult;
import com.yelp.android.serializable.YelpBusiness;
import com.yelp.android.util.BasicBroadcastReceiver;
import com.yelp.android.util.ObjectDirtyEvent;
import java.util.Collections;

public class SearchUtils$DirtyBusinessListener
  extends BasicBroadcastReceiver
{
  private final ap a;
  
  public SearchUtils$DirtyBusinessListener(ap paramap)
  {
    super(Collections.singleton(ObjectDirtyEvent.a("com.yelp.android.business.update")));
    a = paramap;
  }
  
  public void onReceive(Context paramContext, Intent paramIntent)
  {
    paramContext = (YelpBusiness)ObjectDirtyEvent.a(paramIntent);
    if ((paramContext != null) && (a != null) && (a.l() != null)) {
      BusinessSearchResult.replaceBusiness(a.l().getBusinessSearchResults(), paramContext);
    }
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.ui.activities.search.SearchUtils.DirtyBusinessListener
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */