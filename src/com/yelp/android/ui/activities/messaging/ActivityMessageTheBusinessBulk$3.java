package com.yelp.android.ui.activities.messaging;

import com.yelp.android.appdata.webrequests.ApiRequest;
import com.yelp.android.appdata.webrequests.ApiRequest.b;
import com.yelp.android.appdata.webrequests.YelpException;
import com.yelp.android.appdata.webrequests.messaging.i.a;
import com.yelp.android.serializable.YelpBusiness;
import java.util.ArrayList;
import java.util.HashSet;
import java.util.Set;

class ActivityMessageTheBusinessBulk$3
  implements ApiRequest.b<i.a>
{
  ActivityMessageTheBusinessBulk$3(ActivityMessageTheBusinessBulk paramActivityMessageTheBusinessBulk) {}
  
  public void a(ApiRequest<?, ?, ?> paramApiRequest, i.a parama)
  {
    a.disableLoading();
    ActivityMessageTheBusinessBulk.a(a, new ArrayList(a));
    if (ActivityMessageTheBusinessBulk.d(a).isEmpty())
    {
      a.setResult(-1, ActivityMessageTheBusinessBulk.e(a));
      a.finish();
    }
    ActivityMessageTheBusinessBulk.a(a, new HashSet());
    int i = 0;
    while ((i < b) && (i < ActivityMessageTheBusinessBulk.d(a).size()))
    {
      ActivityMessageTheBusinessBulk.f(a).add(((YelpBusiness)ActivityMessageTheBusinessBulk.d(a).get(i)).aD());
      i += 1;
    }
    ActivityMessageTheBusinessBulk.g(a);
  }
  
  public void onError(ApiRequest<?, ?, ?> paramApiRequest, YelpException paramYelpException)
  {
    a.disableLoading();
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.ui.activities.messaging.ActivityMessageTheBusinessBulk.3
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */