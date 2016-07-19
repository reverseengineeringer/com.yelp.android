package com.yelp.android.ui.activities.messaging;

import android.content.Intent;
import android.content.res.Resources;
import com.yelp.android.appdata.Features;
import com.yelp.android.appdata.webrequests.ApiException;
import com.yelp.android.appdata.webrequests.ApiRequest;
import com.yelp.android.appdata.webrequests.ApiRequest.b;
import com.yelp.android.appdata.webrequests.YelpException;
import com.yelp.android.appdata.webrequests.messaging.l.a;
import com.yelp.android.serializable.MessageTheBusiness;
import com.yelp.android.serializable.YelpBusiness;
import com.yelp.android.ui.activities.businesspage.ActivityBusinessPage;
import com.yelp.android.ui.util.as;

class ActivityMessageTheBusiness$2
  implements ApiRequest.b<l.a>
{
  ActivityMessageTheBusiness$2(ActivityMessageTheBusiness paramActivityMessageTheBusiness) {}
  
  public void a(ApiRequest<?, ?, ?> paramApiRequest, l.a parama)
  {
    a.disableLoading();
    paramApiRequest = new Intent();
    paramApiRequest.putExtra("confirmation_main", a.getResources().getString(2131166879));
    paramApiRequest.putExtra("confirmation_sub", a);
    paramApiRequest.putExtra("original_message_id", b);
    a.setResult(-1, paramApiRequest);
    if ((Features.request_a_quote_multibiz.isEnabled()) && (ActivityMessageTheBusiness.c(a).aK().f().equals(MessageTheBusinessType.REQUEST_A_QUOTE.getTypeName())))
    {
      a.startActivityForResult(ActivityMessageTheBusinessBulk.a(a, ActivityMessageTheBusiness.c(a), paramApiRequest), 1035);
      return;
    }
    if (ActivityMessageTheBusiness.b(a)) {
      a.startActivity(ActivityBusinessPage.a(a, ActivityMessageTheBusiness.c(a), paramApiRequest));
    }
    a.finish();
    a.a();
  }
  
  public void onError(ApiRequest<?, ?, ?> paramApiRequest, YelpException paramYelpException)
  {
    a.disableLoading();
    if (ApiException.isUserBlocked(paramYelpException))
    {
      ActivityMessageTheBusiness.b(a, true);
      a.supportInvalidateOptionsMenu();
    }
    as.a(paramYelpException.getMessage(a), 1);
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.ui.activities.messaging.ActivityMessageTheBusiness.2
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */