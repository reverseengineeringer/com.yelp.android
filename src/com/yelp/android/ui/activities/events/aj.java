package com.yelp.android.ui.activities.events;

import android.view.View;
import android.view.View.OnClickListener;
import com.yelp.android.appdata.AppData;
import com.yelp.android.appdata.webrequests.dc;
import com.yelp.android.ui.activities.ActivityLogin;

class aj
  implements View.OnClickListener
{
  aj(af paramaf) {}
  
  public void onClick(View paramView)
  {
    af.b(a, true);
    if (AppData.b().m().e())
    {
      af.c(a);
      return;
    }
    af.a(a).startActivityForResult(ActivityLogin.a(af.a(a).getActivity(), 2131166052), 1047);
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.ui.activities.events.aj
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */