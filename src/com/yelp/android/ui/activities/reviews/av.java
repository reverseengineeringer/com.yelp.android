package com.yelp.android.ui.activities.reviews;

import android.content.res.Resources;
import android.text.TextUtils;
import android.view.MenuItem;
import android.view.MenuItem.OnMenuItemClickListener;
import com.yelp.android.appdata.AppData;
import com.yelp.android.appdata.webrequests.dc;
import com.yelp.android.appdata.webrequests.fa;
import com.yelp.android.serializable.Review;
import com.yelp.android.serializable.YelpBusiness;
import com.yelp.android.ui.activities.ActivityLogin;
import com.yelp.android.ui.util.cp;

class av
  implements MenuItem.OnMenuItemClickListener
{
  av(ReviewOverviewFragment paramReviewOverviewFragment) {}
  
  public boolean onMenuItemClick(MenuItem paramMenuItem)
  {
    switch (paramMenuItem.getItemId())
    {
    default: 
      return false;
    }
    if (TextUtils.isEmpty(a.d.k()))
    {
      cp.a(a.getActivity(), a.getResources().getString(2131165466));
      return true;
    }
    if (a.d.g() == 0)
    {
      cp.a(a.getActivity(), a.getResources().getString(2131166537));
      return true;
    }
    if ((!a.d.q()) || (a.d.h() == null))
    {
      ReviewOverviewFragment.a(a, new fa(a.d.f().getId(), a.d.k(), a.d.g(), a.d.i(), ReviewOverviewFragment.c(a)));
      if (AppData.b().m().c()) {
        break label339;
      }
      paramMenuItem = ActivityLogin.b(a.getActivity(), 2131166048);
      a.startActivityForResult(paramMenuItem, 1043);
    }
    for (;;)
    {
      return true;
      ReviewOverviewFragment.a(a, new fa(a.d.f().getId(), a.d.k(), a.d.g(), a.d.h().getId(), a.d.i(), ReviewOverviewFragment.c(a)));
      break;
      label339:
      ReviewOverviewFragment.d(a);
    }
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.ui.activities.reviews.av
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */