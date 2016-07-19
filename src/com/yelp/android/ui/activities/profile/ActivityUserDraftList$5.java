package com.yelp.android.ui.activities.profile;

import com.yelp.android.appdata.webrequests.ApiRequest;
import com.yelp.android.appdata.webrequests.ApiRequest.b;
import com.yelp.android.appdata.webrequests.YelpException;
import com.yelp.android.serializable.ReviewDraft;
import java.util.List;

class ActivityUserDraftList$5
  implements ApiRequest.b<List<ReviewDraft>>
{
  ActivityUserDraftList$5(ActivityUserDraftList paramActivityUserDraftList) {}
  
  public void a(ApiRequest<?, ?, ?> paramApiRequest, List<ReviewDraft> paramList)
  {
    a.a(paramList);
    a.disableLoading();
    if ((paramList.size() < a.s_()) || (paramList.size() == 0))
    {
      if (ActivityUserDraftList.a(a).isEmpty()) {
        ActivityUserDraftList.f(a);
      }
      a.a();
    }
  }
  
  public void onError(ApiRequest<?, ?, ?> paramApiRequest, YelpException paramYelpException)
  {
    if (ActivityUserDraftList.a(a).isEmpty()) {
      a.populateError(paramYelpException);
    }
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.ui.activities.profile.ActivityUserDraftList.5
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */