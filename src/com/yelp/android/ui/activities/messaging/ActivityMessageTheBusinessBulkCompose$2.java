package com.yelp.android.ui.activities.messaging;

import android.content.Intent;
import com.yelp.android.analytics.iris.EventIri;
import com.yelp.android.appdata.AppData;
import com.yelp.android.appdata.webrequests.ApiRequest;
import com.yelp.android.appdata.webrequests.ApiRequest.b;
import com.yelp.android.appdata.webrequests.YelpException;
import com.yelp.android.appdata.webrequests.messaging.j.a;
import com.yelp.android.ui.util.as;
import java.util.Collections;

class ActivityMessageTheBusinessBulkCompose$2
  implements ApiRequest.b<j.a>
{
  ActivityMessageTheBusinessBulkCompose$2(ActivityMessageTheBusinessBulkCompose paramActivityMessageTheBusinessBulkCompose) {}
  
  public void a(ApiRequest<?, ?, ?> paramApiRequest, j.a parama)
  {
    a.disableLoading();
    paramApiRequest = new Intent();
    paramApiRequest.putExtra("confirmation_main", a);
    paramApiRequest.putExtra("confirmation_sub", b);
    a.setResult(-1, paramApiRequest);
    a.finish();
    paramApiRequest = Collections.singletonMap("source", "unclaimed_widget");
    AppData.a(EventIri.BusinessMessageTheBusinessSend, paramApiRequest);
    AppData.a(EventIri.BusinessMessageTheBusinessMultibizSend, paramApiRequest);
  }
  
  public void onError(ApiRequest<?, ?, ?> paramApiRequest, YelpException paramYelpException)
  {
    as.a(paramYelpException.getMessageResource(), 0);
    a.disableLoading();
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.ui.activities.messaging.ActivityMessageTheBusinessBulkCompose.2
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */