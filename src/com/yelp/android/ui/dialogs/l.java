package com.yelp.android.ui.dialogs;

import android.os.Bundle;
import android.os.Handler;
import android.os.Looper;
import com.yelp.android.appdata.AppData;
import com.yelp.android.appdata.webrequests.ApiException;
import com.yelp.android.appdata.webrequests.ApiRequest;
import com.yelp.android.appdata.webrequests.YelpException;
import com.yelp.android.serializable.Offer;
import com.yelp.android.serializable.Offer.OfferState;
import com.yelp.android.ui.activities.support.YelpActivity;

class l
  implements com.yelp.android.appdata.webrequests.m<Offer>
{
  l(CheckInOfferDialog paramCheckInOfferDialog) {}
  
  public void a(ApiRequest<?, ?, ?> paramApiRequest, Offer paramOffer)
  {
    ((YelpActivity)a.getActivity()).hideLoadingDialog();
    new Handler(Looper.getMainLooper()).post(new m(this, paramOffer));
    CheckInOfferDialog.a(a.getActivity(), paramOffer, a.getArguments().getString("business_id"));
  }
  
  public void onError(ApiRequest<?, ?, ?> paramApiRequest, YelpException paramYelpException)
  {
    ((YelpActivity)a.getActivity()).hideLoadingDialog();
    if (((paramYelpException instanceof ApiException)) && (((ApiException)paramYelpException).getResultCode() == 1018))
    {
      CheckInOfferDialog.e(a).setState(Offer.OfferState.USED);
      CheckInOfferDialog.a(AppData.b(), CheckInOfferDialog.e(a), a.getArguments().getString("business_id"));
      a.dismiss();
      return;
    }
    paramApiRequest = TwoButtonDialog.a("", paramYelpException.getMessage(AppData.b()), a.getString(2131166492), a.getString(2131166464));
    CheckInOfferDialog.b(a, paramApiRequest);
    paramApiRequest.show(a.getChildFragmentManager(), "dialog_retry_request");
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.ui.dialogs.l
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */