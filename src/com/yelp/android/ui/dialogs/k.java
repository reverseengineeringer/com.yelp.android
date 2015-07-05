package com.yelp.android.ui.dialogs;

import android.content.DialogInterface;
import android.content.DialogInterface.OnClickListener;
import android.os.Bundle;
import com.yelp.android.analytics.iris.EventIri;
import com.yelp.android.appdata.AppData;
import com.yelp.android.appdata.webrequests.MarkOfferRequest;
import com.yelp.android.appdata.webrequests.MarkOfferRequest.MarkOfferRequestType;
import com.yelp.android.serializable.Offer;
import com.yelp.android.serializable.Offer.OfferState;

class k
  implements DialogInterface.OnClickListener
{
  k(CheckInOfferDialog paramCheckInOfferDialog) {}
  
  public void onClick(DialogInterface paramDialogInterface, int paramInt)
  {
    AppData.a(EventIri.CheckInOfferDiscard, "check_in_offer_id", CheckInOfferDialog.e(a).getId());
    new MarkOfferRequest(MarkOfferRequest.MarkOfferRequestType.REMOVE, CheckInOfferDialog.e(a).getId(), null).execute(new Void[0]);
    CheckInOfferDialog.e(a).setState(Offer.OfferState.REMOVED);
    CheckInOfferDialog.a(a.getActivity(), CheckInOfferDialog.e(a), a.getArguments().getString("business_id"));
    a.dismiss();
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.ui.dialogs.k
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */