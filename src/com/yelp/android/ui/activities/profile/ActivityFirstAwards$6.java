package com.yelp.android.ui.activities.profile;

import com.yelp.android.appdata.webrequests.ApiRequest;
import com.yelp.android.appdata.webrequests.YelpException;
import com.yelp.android.appdata.webrequests.core.c.a;
import com.yelp.android.appdata.webrequests.em;
import com.yelp.android.serializable.Feedback;
import com.yelp.android.serializable.Tip;
import com.yelp.android.util.ObjectDirtyEvent;
import com.yelp.android.util.YelpLog;

class ActivityFirstAwards$6
  implements c.a
{
  ActivityFirstAwards$6(ActivityFirstAwards paramActivityFirstAwards) {}
  
  public void a(ApiRequest<?, ?, ?> paramApiRequest, Void paramVoid)
  {
    if (ActivityFirstAwards.a(a) == null) {
      return;
    }
    paramApiRequest = (em)paramApiRequest;
    paramVoid = (Tip)ActivityFirstAwards.a(a).a(paramApiRequest.b());
    if (paramApiRequest.d()) {
      paramVoid.g().a();
    }
    for (;;)
    {
      new ObjectDirtyEvent(paramVoid, "com.yelp.android.tips.update").a(a);
      return;
      paramVoid.g().b();
    }
  }
  
  public void onError(ApiRequest<?, ?, ?> paramApiRequest, YelpException paramYelpException)
  {
    YelpLog.remoteError(paramYelpException);
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.ui.activities.profile.ActivityFirstAwards.6
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */