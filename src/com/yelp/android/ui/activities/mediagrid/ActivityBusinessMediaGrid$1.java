package com.yelp.android.ui.activities.mediagrid;

import com.yelp.android.appdata.webrequests.ApiRequest;
import com.yelp.android.appdata.webrequests.ApiRequest.b;
import com.yelp.android.appdata.webrequests.YelpException;
import com.yelp.android.serializable.YelpBusiness;
import java.util.List;

class ActivityBusinessMediaGrid$1
  implements ApiRequest.b<List<YelpBusiness>>
{
  ActivityBusinessMediaGrid$1(ActivityBusinessMediaGrid paramActivityBusinessMediaGrid) {}
  
  public void a(ApiRequest<?, ?, ?> paramApiRequest, List<YelpBusiness> paramList)
  {
    a.disableLoading();
    ActivityBusinessMediaGrid.a(a, (YelpBusiness)paramList.get(0), ActivityBusinessMediaGrid.a(a), ActivityBusinessMediaGrid.b(a));
  }
  
  public void onError(ApiRequest<?, ?, ?> paramApiRequest, YelpException paramYelpException)
  {
    a.disableLoading();
    a.populateError(paramYelpException);
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.ui.activities.mediagrid.ActivityBusinessMediaGrid.1
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */