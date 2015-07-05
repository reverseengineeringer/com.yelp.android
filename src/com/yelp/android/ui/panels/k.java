package com.yelp.android.ui.panels;

import android.view.View;
import android.view.View.OnClickListener;
import com.yelp.android.analytics.iris.EventIri;
import com.yelp.android.appdata.AppData;
import com.yelp.android.serializable.YelpBusiness;
import com.yelp.android.ui.activities.addphoto.PhotoTeaser;

class k
  implements View.OnClickListener
{
  k(BizAttributesFragment paramBizAttributesFragment) {}
  
  public void onClick(View paramView)
  {
    if (BizAttributesFragment.i(a) != null) {
      BizAttributesFragment.i(a).a();
    }
    AppData.a(EventIri.CheckInsReceiptAddPhotoVideoButton, "business_id", BizAttributesFragment.c(a).getId());
    a.startActivity(PhotoTeaser.a(a.getActivity(), BizAttributesFragment.c(a)));
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.ui.panels.k
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */