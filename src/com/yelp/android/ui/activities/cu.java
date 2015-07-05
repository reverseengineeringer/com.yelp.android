package com.yelp.android.ui.activities;

import com.yelp.android.appdata.AppData;
import com.yelp.android.appdata.webrequests.ApiRequest;
import com.yelp.android.appdata.webrequests.MediaRequest;
import com.yelp.android.appdata.webrequests.YelpException;
import com.yelp.android.appdata.webrequests.dm;
import com.yelp.android.appdata.webrequests.m;
import com.yelp.android.ui.util.cr;
import java.util.ArrayList;

class cu
  implements m<dm>
{
  cu(ActivityMediaBrowser paramActivityMediaBrowser) {}
  
  public void a(ApiRequest<?, ?, ?> paramApiRequest, dm paramdm)
  {
    a.hideLoadingDialog();
    ActivityMediaBrowser.d(a).addAll(paramdm.c());
    ActivityMediaBrowser.f(a).notifyDataSetChanged();
    if (ActivityMediaBrowser.c(a).isAllMediaFetched(ActivityMediaBrowser.d(a), paramdm.d())) {
      ActivityMediaBrowser.a(a, null);
    }
  }
  
  public void onError(ApiRequest<?, ?, ?> paramApiRequest, YelpException paramYelpException)
  {
    a.hideLoadingDialog();
    ActivityMediaBrowser.a(a, null);
    cr.a(paramYelpException.getMessage(AppData.b()), 0);
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.ui.activities.cu
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */