package com.yelp.android.ui.activities.reservations;

import com.yelp.android.appdata.webrequests.ApiException;
import com.yelp.android.appdata.webrequests.ApiRequest;
import com.yelp.android.appdata.webrequests.ApiRequest.b;
import com.yelp.android.appdata.webrequests.YelpException;
import com.yelp.android.appdata.webrequests.by;
import com.yelp.android.appdata.webrequests.by.a;
import com.yelp.android.serializable.YelpBusiness;
import com.yelp.android.ui.dialogs.CallNumberDialog;
import com.yelp.android.ui.util.as;

class ActivityReservationFlow$1
  implements ApiRequest.b<by.a>
{
  ActivityReservationFlow$1(ActivityReservationFlow paramActivityReservationFlow) {}
  
  public void a(ApiRequest<?, ?, ?> paramApiRequest, by.a parama)
  {
    paramApiRequest = (by)paramApiRequest;
    if (ActivityReservationFlow.a(parama.b()))
    {
      a.hideLoadingDialog();
      paramApiRequest = CallNumberDialog.a(ActivityReservationFlow.a(a).ao());
      paramApiRequest.a(ActivityReservationFlow.b(a));
      paramApiRequest.show(a.getSupportFragmentManager(), "call_number_dialog");
    }
    do
    {
      return;
      paramApiRequest = paramApiRequest.b();
    } while (a.a(paramApiRequest, parama));
    a.hideLoadingDialog();
  }
  
  public void onError(ApiRequest<?, ?, ?> paramApiRequest, YelpException paramYelpException)
  {
    a.hideLoadingDialog();
    if (!(paramYelpException instanceof ApiException))
    {
      as.a(paramYelpException.getMessage(), 0);
      a.finish();
    }
    do
    {
      return;
      paramApiRequest = (ApiException)paramYelpException;
      a.a(ActivityReservationFlow.c(a));
    } while (a.a(paramApiRequest));
    as.a(paramYelpException.getMessage(), 0);
    a.finish();
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.ui.activities.reservations.ActivityReservationFlow.1
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */