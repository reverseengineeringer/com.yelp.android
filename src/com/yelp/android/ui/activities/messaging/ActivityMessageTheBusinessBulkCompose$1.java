package com.yelp.android.ui.activities.messaging;

import android.widget.TextView;
import com.yelp.android.appdata.webrequests.ApiRequest;
import com.yelp.android.appdata.webrequests.ApiRequest.b;
import com.yelp.android.appdata.webrequests.YelpException;
import com.yelp.android.appdata.webrequests.messaging.k.a;

class ActivityMessageTheBusinessBulkCompose$1
  implements ApiRequest.b<k.a>
{
  ActivityMessageTheBusinessBulkCompose$1(ActivityMessageTheBusinessBulkCompose paramActivityMessageTheBusinessBulkCompose) {}
  
  public void a(ApiRequest<?, ?, ?> paramApiRequest, k.a parama)
  {
    a.disableLoading();
    ((TextView)a.findViewById(2131690366)).setHint(a);
  }
  
  public void onError(ApiRequest<?, ?, ?> paramApiRequest, YelpException paramYelpException)
  {
    a.disableLoading();
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.ui.activities.messaging.ActivityMessageTheBusinessBulkCompose.1
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */