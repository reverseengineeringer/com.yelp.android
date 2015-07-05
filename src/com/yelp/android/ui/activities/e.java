package com.yelp.android.ui.activities;

import com.yelp.android.appdata.webrequests.ApiRequest;
import com.yelp.android.appdata.webrequests.YelpException;
import com.yelp.android.appdata.webrequests.m;
import com.yelp.android.serializable.Badge;
import java.util.ArrayList;

class e
  implements m<ArrayList<Badge>>
{
  e(ActivityBadges paramActivityBadges) {}
  
  public void a(ApiRequest<?, ?, ?> paramApiRequest, ArrayList<Badge> paramArrayList)
  {
    a.disableLoading();
    ActivityBadges.a(a).addAll(paramArrayList);
    ActivityBadges.b(a).notifyDataSetChanged();
  }
  
  public void onError(ApiRequest<?, ?, ?> paramApiRequest, YelpException paramYelpException)
  {
    a.populateError(paramYelpException);
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.ui.activities.e
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */