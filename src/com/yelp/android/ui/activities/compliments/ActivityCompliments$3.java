package com.yelp.android.ui.activities.compliments;

import com.yelp.android.appdata.webrequests.ApiRequest;
import com.yelp.android.appdata.webrequests.ApiRequest.b;
import com.yelp.android.appdata.webrequests.YelpException;
import com.yelp.android.appdata.webrequests.as.b;
import com.yelp.android.serializable.Compliment;
import com.yelp.android.ui.activities.profile.ActivityUserProfile.a;
import com.yelp.android.ui.util.as;
import java.util.ArrayList;

class ActivityCompliments$3
  implements ApiRequest.b<Compliment>
{
  ActivityCompliments$3(ActivityCompliments paramActivityCompliments) {}
  
  public void a(ApiRequest<?, ?, ?> paramApiRequest, Compliment paramCompliment)
  {
    ActivityUserProfile.a locala = new ActivityUserProfile.a();
    a = paramCompliment;
    if (ActivityCompliments.b(a) == Mode.APPROVE) {
      b = 1;
    }
    if ((paramApiRequest instanceof as.b))
    {
      ActivityCompliments.a(a).c(paramCompliment);
      ActivityCompliments.c(a).remove(paramCompliment);
      ActivityCompliments.a(a).notifyDataSetChanged();
      b = 0;
    }
    locala.a(a);
    if (ActivityCompliments.a(a).isEmpty()) {
      a.finish();
    }
  }
  
  public void onError(ApiRequest<?, ?, ?> paramApiRequest, YelpException paramYelpException)
  {
    as.a(paramYelpException.getMessage(a), 0);
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.ui.activities.compliments.ActivityCompliments.3
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */