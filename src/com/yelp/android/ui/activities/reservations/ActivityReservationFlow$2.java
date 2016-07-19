package com.yelp.android.ui.activities.reservations;

import android.content.DialogInterface;
import android.content.DialogInterface.OnClickListener;
import android.support.v4.app.l;
import android.support.v4.app.o;
import com.yelp.android.analytics.iris.ViewIri;
import com.yelp.android.appdata.webrequests.ApiRequest;
import com.yelp.android.appdata.webrequests.ApiRequest.b;
import com.yelp.android.appdata.webrequests.YelpException;
import com.yelp.android.serializable.ReservationLeaseResponse;

class ActivityReservationFlow$2
  implements ApiRequest.b<ReservationLeaseResponse>
{
  ActivityReservationFlow$2(ActivityReservationFlow paramActivityReservationFlow) {}
  
  public void a(ApiRequest<?, ?, ?> paramApiRequest, ReservationLeaseResponse paramReservationLeaseResponse)
  {
    a.hideLoadingDialog();
    paramApiRequest = ConfirmReservationFragment.a(paramReservationLeaseResponse.d(), paramReservationLeaseResponse.c(), paramReservationLeaseResponse.b(), paramReservationLeaseResponse.a(), ActivityReservationFlow.a(a));
    a.getSupportFragmentManager().a().b(2131689997, paramApiRequest, "confirm_reservation").a(null).a();
    ActivityReservationFlow.a(a, ViewIri.ReservationConfirmation);
  }
  
  public void onError(ApiRequest<?, ?, ?> paramApiRequest, YelpException paramYelpException)
  {
    a.hideLoadingDialog();
    a.a(new DialogInterface.OnClickListener()
    {
      public void onClick(DialogInterface paramAnonymousDialogInterface, int paramAnonymousInt)
      {
        if (ActivityReservationFlow.d(a) == null)
        {
          a.finish();
          return;
        }
        paramAnonymousDialogInterface.dismiss();
      }
    });
    a.a(paramYelpException);
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.ui.activities.reservations.ActivityReservationFlow.2
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */