package com.yelp.android.ui.dialogs;

import android.os.Bundle;
import android.view.View;
import android.view.View.OnClickListener;
import android.view.animation.Animation;
import android.view.animation.AnimationUtils;
import android.widget.ImageView;
import com.yelp.android.appdata.AppData;
import com.yelp.android.appdata.webrequests.MarkOfferRequest;
import com.yelp.android.appdata.webrequests.MarkOfferRequest.MarkOfferRequestType;
import com.yelp.android.serializable.Offer;
import com.yelp.android.serializable.Offer.OfferState;

class h
  implements View.OnClickListener
{
  h(CheckInOfferDialog paramCheckInOfferDialog) {}
  
  public void onClick(View paramView)
  {
    new MarkOfferRequest(MarkOfferRequest.MarkOfferRequestType.MARK_USED, CheckInOfferDialog.e(a).getId(), null).execute(new Void[0]);
    CheckInOfferDialog.e(a).setState(Offer.OfferState.USED);
    CheckInOfferDialog.a(a.getActivity(), CheckInOfferDialog.e(a), a.getArguments().getString("business_id"));
    CheckInOfferDialog.f(a).setVisibility(0);
    paramView = AnimationUtils.loadAnimation(AppData.b(), 2130968597);
    paramView.setAnimationListener(new i(this));
    CheckInOfferDialog.f(a).startAnimation(paramView);
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.ui.dialogs.h
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */