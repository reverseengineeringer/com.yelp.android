package com.yelp.android.ui.activities.reservations;

import android.content.DialogInterface;
import android.content.DialogInterface.OnClickListener;
import com.yelp.android.analytics.iris.EventIri;
import com.yelp.android.appdata.AppData;
import com.yelp.android.appdata.webrequests.aj;
import com.yelp.android.av.h;
import com.yelp.android.serializable.YelpBusiness;
import java.util.Map;
import java.util.TreeMap;

class k
  implements DialogInterface.OnClickListener
{
  k(ReservationDetails paramReservationDetails) {}
  
  public void onClick(DialogInterface paramDialogInterface, int paramInt)
  {
    paramDialogInterface = new TreeMap();
    paramDialogInterface.put("business_id", ReservationDetails.b(a).getId());
    paramDialogInterface.put("provider", ReservationDetails.b(a).getReservationProviderString());
    AppData.a(EventIri.ReservationCancelConfirm, paramDialogInterface);
    ReservationDetails.a(a, new aj(ReservationDetails.b(a), ReservationDetails.c(a)));
    a.enableLoading(ReservationDetails.d(a));
    ReservationDetails.d(a).execute(new Void[0]);
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.ui.activities.reservations.k
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */