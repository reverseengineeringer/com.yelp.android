package com.yelp.android.ui.activities.businesspage;

import android.content.res.Resources;
import android.support.v4.app.FragmentActivity;
import android.view.Display;
import android.view.WindowManager;
import com.google.android.gms.ads.AdListener;
import com.google.android.gms.ads.doubleclick.PublisherAdView;
import com.yelp.android.analytics.iris.AutoIri;
import com.yelp.android.appdata.AppData;
import com.yelp.android.appdata.ao;
import com.yelp.android.ui.util.ScrollToLoadListView;
import com.yelp.android.ui.util.h;

class bg
  extends AdListener
{
  bg(BusinessPageFragment paramBusinessPageFragment) {}
  
  public void onAdFailedToLoad(int paramInt)
  {
    AppData.a(AutoIri.DFPFailed, "reason", Integer.valueOf(paramInt));
    BusinessPageFragment.s(a).clear();
  }
  
  public void onAdLoaded()
  {
    AppData.a(AutoIri.DFPSucceeded);
    if (BusinessPageFragment.s(a).isEmpty()) {
      BusinessPageFragment.s(a).b(BusinessPageFragment.t(a));
    }
    if (BusinessPageFragment.u(a).getVisibility() == 8)
    {
      int[] arrayOfInt = new int[2];
      BusinessPageFragment.u(a).getLocationOnScreen(arrayOfInt);
      int i = arrayOfInt[1];
      int j = a.getActivity().getWindowManager().getDefaultDisplay().getHeight();
      int k = a.getResources().getInteger(2131558411);
      if ((i != 0) && (i < j / 2)) {
        a.m().scrollBy(0, ao.a(17) + k);
      }
    }
    BusinessPageFragment.u(a).setVisibility(0);
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.ui.activities.businesspage.bg
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */