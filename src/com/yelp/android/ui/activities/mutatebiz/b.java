package com.yelp.android.ui.activities.mutatebiz;

import android.view.View;
import android.view.View.OnClickListener;
import com.yelp.android.appdata.AppData;
import com.yelp.android.appdata.LocationService;
import com.yelp.android.ui.activities.support.YelpActivity;
import com.yelp.android.ui.util.BackgroundTaskFragment;

class b
  implements View.OnClickListener
{
  b(AddAddressFragment paramAddAddressFragment) {}
  
  public void onClick(View paramView)
  {
    if (!AppData.b().n().a()) {
      ((YelpActivity)a.getActivity()).onProvidersRequired(a, true, 2131166195);
    }
    a.a(null);
    if (!AddAddressFragment.a(a).a()) {
      AddAddressFragment.a(a).b();
    }
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.ui.activities.mutatebiz.b
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */