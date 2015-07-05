package com.yelp.android.ui.activities.reviewpage;

import android.net.Uri;
import android.view.View;
import android.view.View.OnClickListener;
import com.yelp.android.analytics.iris.EventIri;
import com.yelp.android.analytics.iris.ViewIri;
import com.yelp.android.appdata.AppData;
import com.yelp.android.serializable.MoreInfoAction;
import com.yelp.android.ui.activities.support.WebViewActivity;
import com.yelp.android.ui.activities.support.WebViewActivity.Feature;
import java.util.EnumSet;

class o
  implements View.OnClickListener
{
  o(ActivityReviewsFilteredByHighlightPage paramActivityReviewsFilteredByHighlightPage, String paramString, MoreInfoAction paramMoreInfoAction) {}
  
  public void onClick(View paramView)
  {
    AppData.a(EventIri.BusinessHighlightReviewsMoreInfo);
    paramView = WebViewActivity.getWebIntent(c, Uri.parse(a), b.getTitle(), ViewIri.BusinessMenu, EnumSet.noneOf(WebViewActivity.Feature.class));
    c.startActivity(paramView);
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.ui.activities.reviewpage.o
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */