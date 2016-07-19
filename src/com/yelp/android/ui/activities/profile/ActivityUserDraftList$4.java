package com.yelp.android.ui.activities.profile;

import com.yelp.android.analytics.iris.EventIri;
import com.yelp.android.appdata.AppData;
import com.yelp.android.appdata.webrequests.ApiRequest;
import com.yelp.android.appdata.webrequests.YelpException;
import com.yelp.android.appdata.webrequests.co;
import com.yelp.android.appdata.webrequests.core.c.a;
import com.yelp.android.serializable.User;
import com.yelp.android.ui.util.as;

class ActivityUserDraftList$4
  implements c.a
{
  ActivityUserDraftList$4(ActivityUserDraftList paramActivityUserDraftList) {}
  
  public void a(ApiRequest<?, ?, ?> paramApiRequest, Void paramVoid)
  {
    ActivityUserDraftList.a(a).c(ActivityUserDraftList.c(a));
    ActivityUserDraftList.a(a).notifyDataSetChanged();
    if (ActivityUserDraftList.a(a).isEmpty()) {
      ActivityUserDraftList.f(a);
    }
    ActivityUserDraftList.a(a, null);
    AppData.a(EventIri.ReviewDraftDelete, "source", "draft_list");
    AppData.b().q().p().m();
    a.hideLoadingDialog();
  }
  
  public void onError(ApiRequest<?, ?, ?> paramApiRequest, YelpException paramYelpException)
  {
    a.hideLoadingDialog();
    as.a(2131165770, 0);
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.ui.activities.profile.ActivityUserDraftList.4
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */