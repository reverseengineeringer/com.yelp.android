package com.yelp.android.ui.activities.reviewpage;

import android.net.Uri;
import android.view.View;
import android.view.View.OnClickListener;
import com.yelp.android.analytics.iris.EventIri;
import com.yelp.android.analytics.iris.ViewIri;
import com.yelp.android.appdata.AppData;
import com.yelp.android.serializable.MoreInfoAction;
import com.yelp.android.ui.activities.support.WebViewActivity;
import com.yelp.android.ui.activities.support.WebViewActivity.BackBehavior;
import com.yelp.android.ui.activities.support.WebViewActivity.Feature;
import java.util.EnumSet;

class ActivityReviewsFilteredByHighlightPage$1
  implements View.OnClickListener
{
  ActivityReviewsFilteredByHighlightPage$1(ActivityReviewsFilteredByHighlightPage paramActivityReviewsFilteredByHighlightPage, String paramString, MoreInfoAction paramMoreInfoAction) {}
  
  public void onClick(View paramView)
  {
    AppData.a(EventIri.BusinessHighlightReviewsMoreInfo);
    paramView = WebViewActivity.getWebIntent(c, Uri.parse(a), b.c(), ViewIri.BusinessMenu, EnumSet.noneOf(WebViewActivity.Feature.class), WebViewActivity.BackBehavior.NONE);
    c.startActivity(paramView);
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.ui.activities.reviewpage.ActivityReviewsFilteredByHighlightPage.1
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */