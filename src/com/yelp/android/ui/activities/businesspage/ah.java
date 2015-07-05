package com.yelp.android.ui.activities.businesspage;

import android.net.Uri;
import android.view.View;
import android.view.View.OnClickListener;
import com.yelp.android.analytics.iris.EventIri;
import com.yelp.android.analytics.iris.ViewIri;
import com.yelp.android.appdata.AppData;
import com.yelp.android.ui.activities.support.WebViewActivity;
import com.yelp.android.ui.activities.support.WebViewActivity.Feature;
import java.util.EnumSet;

class ah
  implements View.OnClickListener
{
  ah(BusinessPageFragment paramBusinessPageFragment) {}
  
  public void onClick(View paramView)
  {
    AppData.a(EventIri.BusinessCantBuyReviewsMoreInfo);
    paramView = Uri.parse(a.getString(2131165355));
    a.startActivity(WebViewActivity.getWebIntent(a.getActivity(), paramView, "", ViewIri.OpenURL, EnumSet.noneOf(WebViewActivity.Feature.class), false));
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.ui.activities.businesspage.ah
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */