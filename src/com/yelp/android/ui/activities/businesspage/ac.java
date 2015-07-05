package com.yelp.android.ui.activities.businesspage;

import android.view.View;
import com.yelp.android.analytics.iris.EventIri;
import com.yelp.android.appdata.webrequests.BusinessMediaRequest;
import com.yelp.android.serializable.YelpBusiness;
import com.yelp.android.ui.activities.ActivityMediaBrowser;
import java.util.ArrayList;

class ac
  extends cc
{
  ac(BusinessPageFragment paramBusinessPageFragment, EventIri paramEventIri, boolean paramBoolean1, boolean paramBoolean2)
  {
    super(paramBusinessPageFragment, paramEventIri);
  }
  
  public void a(View paramView)
  {
    paramView = new BusinessMediaRequest(BusinessPageFragment.c(c).getId(), 0, 20);
    int i;
    if ((a) && (b)) {
      i = 2131166331;
    }
    for (;;)
    {
      paramView = ActivityMediaBrowser.a(c.getActivity(), c.getText(i), BusinessPageFragment.c(c), paramView, new ArrayList(), false);
      c.startActivity(paramView);
      return;
      if (a) {
        i = 2131166828;
      } else {
        i = 2131165447;
      }
    }
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.ui.activities.businesspage.ac
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */