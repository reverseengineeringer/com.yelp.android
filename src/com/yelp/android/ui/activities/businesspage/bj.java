package com.yelp.android.ui.activities.businesspage;

import android.support.v4.app.ActivityCompat;
import com.yelp.android.appdata.webrequests.ApiRequest;
import com.yelp.android.appdata.webrequests.YelpException;
import com.yelp.android.appdata.webrequests.m;
import com.yelp.android.serializable.YelpBookmark;
import com.yelp.android.serializable.YelpBusiness;
import com.yelp.android.ui.dialogs.bn;
import com.yelp.android.ui.panels.businesspage.b;

class bj
  implements m<YelpBookmark>
{
  bj(BusinessPageFragment paramBusinessPageFragment) {}
  
  public void a(ApiRequest<?, ?, ?> paramApiRequest, YelpBookmark paramYelpBookmark)
  {
    BusinessPageFragment.x(a).dismiss();
    BusinessPageFragment.c(a).setBookmarked(true);
    BusinessPageFragment.j(a);
    BusinessPageFragment.m(a).setBookmarkChecked(true);
    ActivityCompat.invalidateOptionsMenu(a.getActivity());
  }
  
  public void onError(ApiRequest<?, ?, ?> paramApiRequest, YelpException paramYelpException)
  {
    BusinessPageFragment.x(a).dismiss();
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.ui.activities.businesspage.bj
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */