package com.yelp.android.ui.dialogs;

import android.view.View;
import android.view.animation.Animation;
import android.view.animation.AnimationUtils;
import com.yelp.android.appdata.AppData;
import com.yelp.android.ui.util.cw;
import com.yelp.android.ui.util.dd;

class n
  extends dd
{
  n(CheckInOfferDialog paramCheckInOfferDialog) {}
  
  public void onAnimationEnd(Animation paramAnimation)
  {
    CheckInOfferDialog.g(a);
    CheckInOfferDialog.h(a).startAnimation(AnimationUtils.loadAnimation(AppData.b(), 2130968598));
    cw.c(CheckInOfferDialog.i(a), cw.b);
    cw.c(CheckInOfferDialog.j(a), cw.b);
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.ui.dialogs.n
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */