package com.yelp.android.ui.activities.businesspage;

import android.content.Intent;
import android.net.Uri;
import android.os.Build.VERSION;
import android.view.View;
import android.view.View.OnClickListener;
import com.yelp.android.analytics.iris.EventIri;
import com.yelp.android.analytics.iris.ViewIri;
import com.yelp.android.appdata.AppData;
import com.yelp.android.appdata.n;
import com.yelp.android.serializable.YelpBusiness;
import com.yelp.android.ui.activities.support.WebViewActivity;
import com.yelp.android.ui.activities.support.WebViewActivity.Feature;
import java.util.EnumSet;

class ag
  implements View.OnClickListener
{
  ag(BusinessPageFragment paramBusinessPageFragment) {}
  
  public void onClick(View paramView)
  {
    AppData.a(EventIri.BusinessNotRecommendedReviewsClicked, "business_id", BusinessPageFragment.c(a).getId());
    paramView = Uri.parse(a.getString(2131166216, new Object[] { BusinessPageFragment.c(a).getAlias() }));
    if ((Build.VERSION.SDK_INT == 16) || (n.b(11)))
    {
      paramView = new Intent("android.intent.action.VIEW", paramView);
      paramView.addCategory("android.intent.category.BROWSABLE");
      a.startActivity(paramView);
      return;
    }
    a.startActivity(WebViewActivity.getWebIntent(a.getActivity(), paramView, "", ViewIri.OpenURL, EnumSet.noneOf(WebViewActivity.Feature.class), false));
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.ui.activities.businesspage.ag
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */