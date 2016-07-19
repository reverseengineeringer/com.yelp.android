package com.yelp.android.ui.activities.reservations;

import com.yelp.android.appdata.webrequests.ApiRequest;
import com.yelp.android.appdata.webrequests.ApiRequest.b;
import com.yelp.android.appdata.webrequests.YelpException;
import com.yelp.android.serializable.YelpBusiness;
import com.yelp.android.ui.util.as;
import com.yelp.android.util.ErrorType;
import java.util.List;

class ReservationDetails$4
  implements ApiRequest.b<List<YelpBusiness>>
{
  ReservationDetails$4(ReservationDetails paramReservationDetails) {}
  
  public void a(ApiRequest<?, ?, ?> paramApiRequest, List<YelpBusiness> paramList)
  {
    if (paramList.size() > 0)
    {
      ReservationDetails.a(a, (YelpBusiness)paramList.get(0));
      if (ReservationDetails.b(a).aF() == null) {
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
    as.a(a.getString(ErrorType.getTypeFromException(paramYelpException).getTextId()), 1);
    a.finish();
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.ui.activities.reservations.ReservationDetails.4
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */