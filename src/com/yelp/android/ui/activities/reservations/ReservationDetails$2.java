package com.yelp.android.ui.activities.reservations;

import android.content.DialogInterface;
import android.content.DialogInterface.OnClickListener;
import com.yelp.android.analytics.iris.EventIri;
import com.yelp.android.appdata.AppData;
import com.yelp.android.appdata.webrequests.aj;
import com.yelp.android.appdata.webrequests.core.c;
import com.yelp.android.serializable.YelpBusiness;
import java.util.Map;
import java.util.TreeMap;

class ReservationDetails$2
  implements DialogInterface.OnClickListener
{
  ReservationDetails$2(ReservationDetails paramReservationDetails) {}
  
  public void onClick(DialogInterface paramDialogInterface, int paramInt)
  {
    paramDialogInterface = new TreeMap();
    paramDialogInterface.put("business_id", ReservationDetails.b(a).aD());
    paramDialogInterface.put("provider", ReservationDetails.b(a).ae());
    AppData.a(EventIri.ReservationCancelConfirm, paramDialogInterface);
    ReservationDetails.a(a, new aj(ReservationDetails.b(a), ReservationDetails.c(a)));
    a.enableLoading(ReservationDetails.d(a));
    ReservationDetails.d(a).f(new Void[0]);
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.ui.activities.reservations.ReservationDetails.2
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */