package com.yelp.android.ui.activities;

import android.support.v4.app.FragmentActivity;
import com.yelp.android.appdata.AppData;
import com.yelp.android.appdata.LocationService;
import com.yelp.android.appdata.RemoteConfigPreferences.NotificationSchedule;
import com.yelp.android.appdata.i;
import com.yelp.android.appdata.webrequests.ApiRequest;
import com.yelp.android.appdata.webrequests.YelpException;
import com.yelp.android.appdata.webrequests.dc;
import com.yelp.android.appdata.webrequests.j;
import com.yelp.android.database.d;
import com.yelp.android.database.q;
import com.yelp.android.serializable.YelpBusiness;
import com.yelp.android.serializable.YelpCheckIn;
import com.yelp.android.services.ShareService;
import com.yelp.android.services.ShareService.ShareObjectType;
import com.yelp.android.ui.activities.support.YelpActivity;
import com.yelp.android.ui.dialogs.AlertDialogFragment;
import com.yelp.android.ui.dialogs.CheckInOfferDialog;
import com.yelp.android.ui.dialogs.TwoButtonDialog;
import com.yelp.android.ui.util.cr;
import java.util.LinkedList;

class eu
  extends j<YelpCheckIn>
{
  eu(CheckInDialog paramCheckInDialog) {}
  
  public void a(ApiRequest<?, ?, ?> paramApiRequest, YelpCheckIn paramYelpCheckIn)
  {
    CheckInDialog.i(a).hideLoadingDialog();
    CheckInDialog.a(a, paramYelpCheckIn);
    if (!CheckInDialog.d(a).isEmpty()) {
      a.getActivity().startService(ShareService.a(a.getActivity(), ShareService.ShareObjectType.CHECKIN, paramYelpCheckIn.getId(), CheckInDialog.d(a), false));
    }
    if (CheckInDialog.j(a) != null) {
      CheckInDialog.j(a).a(paramYelpCheckIn);
    }
    if ((AppData.b().f().o() == 2) && (AppData.b().m().i() == RemoteConfigPreferences.NotificationSchedule.NO_ALERTS))
    {
      paramApiRequest = TwoButtonDialog.a(2131166552, 2131166558, 2131166207, 2131166262);
      paramApiRequest.a(CheckInDialog.k(a));
      paramApiRequest.b(CheckInDialog.l(a));
      paramApiRequest.a(CheckInDialog.m(a));
      paramApiRequest.show(a.getFragmentManager(), "get_notifications");
    }
    for (;;)
    {
      cr.a(a.getString(2131165502, new Object[] { CheckInDialog.h(a).getDisplayName() }), 0);
      if (paramYelpCheckIn.getBusiness() != null) {
        AppData.b().i().f().a(paramYelpCheckIn.getBusiness());
      }
      if (paramYelpCheckIn.getBusiness().getCheckInOffer() != null) {
        CheckInOfferDialog.a(a.getActivity(), paramYelpCheckIn.getBusiness().getCheckInOffer(), paramYelpCheckIn.getBusinessId());
      }
      return;
      a.dismiss();
    }
  }
  
  public boolean a()
  {
    CheckInDialog.q(a).onProvidersRequired(CheckInDialog.p(a), false, 0);
    return false;
  }
  
  public void onError(ApiRequest<?, ?, ?> paramApiRequest, YelpException paramYelpException)
  {
    CheckInDialog.n(a).hideLoadingDialog();
    if ((!AppData.b().n().b()) && (paramYelpException.getMessageResource() == 2131165210))
    {
      CheckInDialog.o(a).onProvidersRequired(null, false, 2131166176);
      return;
    }
    AlertDialogFragment.a(null, paramYelpException.getMessage(AppData.b()), a.getString(2131166233)).a(a.getChildFragmentManager());
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.ui.activities.eu
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */