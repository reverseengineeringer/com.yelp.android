package com.yelp.android.ui.activities.businesspage;

import android.view.View;
import android.view.View.OnClickListener;
import com.yelp.android.analytics.iris.EventIri;
import com.yelp.android.appdata.AppData;
import com.yelp.android.appdata.i;
import com.yelp.android.ui.util.h;

class ai
  implements View.OnClickListener
{
  ai(BusinessPageFragment paramBusinessPageFragment, h paramh, View paramView) {}
  
  public void onClick(View paramView)
  {
    AppData.a(EventIri.BusinessCantBuyReviewsDismiss);
    AppData.b().f().F();
    a.b(new View(c.getActivity()));
    a.a(b);
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.ui.activities.businesspage.ai
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */