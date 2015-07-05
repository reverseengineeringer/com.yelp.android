package com.yelp.android.ui.activities.reservations;

import com.yelp.android.appdata.AppData;
import com.yelp.android.appdata.webrequests.ApiRequest;
import com.yelp.android.appdata.webrequests.YelpException;
import com.yelp.android.av.i;
import com.yelp.android.ui.util.cr;

class l
  implements i
{
  l(ReservationDetails paramReservationDetails) {}
  
  public void a(ApiRequest<?, ?, ?> paramApiRequest, Void paramVoid)
  {
    ReservationDetails.e(a);
    a.finish();
  }
  
  public void onError(ApiRequest<?, ?, ?> paramApiRequest, YelpException paramYelpException)
  {
    a.hideLoadingDialog();
    cr.a(paramYelpException.getMessage(AppData.b()), 1);
    a.finish();
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.ui.activities.reservations.l
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */