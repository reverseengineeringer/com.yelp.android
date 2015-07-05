package com.yelp.android.ui.activities.reservations;

import com.yelp.android.appdata.webrequests.ApiRequest;
import com.yelp.android.appdata.webrequests.YelpException;
import com.yelp.android.serializable.YelpBusiness;
import com.yelp.android.ui.util.cr;
import com.yelp.android.util.ErrorType;
import java.util.List;

class m
  implements com.yelp.android.appdata.webrequests.m<List<YelpBusiness>>
{
  m(ReservationDetails paramReservationDetails) {}
  
  public void a(ApiRequest<?, ?, ?> paramApiRequest, List<YelpBusiness> paramList)
  {
    if (paramList.size() > 0)
    {
      ReservationDetails.a(a, (YelpBusiness)paramList.get(0));
      if (ReservationDetails.b(a).getReservation() == null) {
        break label69;
      }
      a.startActivity(ReservationDetails.a(a, ReservationDetails.b(a)));
    }
    for (;;)
    {
      a.finish();
      return;
      label69:
      ReservationDetails.e(a);
    }
  }
  
  public void onError(ApiRequest<?, ?, ?> paramApiRequest, YelpException paramYelpException)
  {
    cr.a(a.getString(ErrorType.getTypeFromException(paramYelpException).getTextId()), 1);
    a.finish();
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.ui.activities.reservations.m
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */