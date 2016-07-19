package com.yelp.android.ui.activities.reservations;

import com.yelp.android.appdata.AppData;
import com.yelp.android.appdata.webrequests.ApiRequest;
import com.yelp.android.appdata.webrequests.YelpException;
import com.yelp.android.appdata.webrequests.core.c.a;
import com.yelp.android.ui.util.as;

class ReservationDetails$3
  implements c.a
{
  ReservationDetails$3(ReservationDetails paramReservationDetails) {}
  
  public void a(ApiRequest<?, ?, ?> paramApiRequest, Void paramVoid)
  {
    ReservationDetails.e(a);
    a.finish();
  }
  
  public void onError(ApiRequest<?, ?, ?> paramApiRequest, YelpException paramYelpException)
  {
    a.hideLoadingDialog();
    as.a(paramYelpException.getMessage(AppData.b()), 1);
    a.finish();
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.ui.activities.reservations.ReservationDetails.3
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */