package com.yelp.android.ui.activities.compliments;

import com.yelp.android.appdata.webrequests.ApiRequest;
import com.yelp.android.appdata.webrequests.ApiRequest.b;
import com.yelp.android.appdata.webrequests.YelpException;
import com.yelp.android.serializable.Compliment;
import com.yelp.android.ui.activities.profile.ActivityUserProfile.a;
import com.yelp.android.ui.util.as;

class ActivityCompliments$1
  implements ApiRequest.b<Compliment>
{
  ActivityCompliments$1(ActivityCompliments paramActivityCompliments) {}
  
  public void a(ApiRequest<?, ?, ?> paramApiRequest, Compliment paramCompliment)
  {
    ActivityCompliments.a(a).c(paramCompliment);
    paramApiRequest = new ActivityUserProfile.a();
    if (Mode.APPROVE == ActivityCompliments.b(a)) {
      a = paramCompliment;
    }
    for (;;)
    {
      paramApiRequest.a(a);
      return;
      b = -1;
    }
  }
  
  public void onError(ApiRequest<?, ?, ?> paramApiRequest, YelpException paramYelpException)
  {
    as.a(paramYelpException.getMessage(a), 0);
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.ui.activities.compliments.ActivityCompliments.1
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */