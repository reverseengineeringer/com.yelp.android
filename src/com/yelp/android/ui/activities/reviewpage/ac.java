package com.yelp.android.ui.activities.reviewpage;

import android.content.Context;
import android.view.View;
import android.view.View.OnClickListener;
import com.yelp.android.analytics.iris.EventIri;
import com.yelp.android.appdata.AppData;
import com.yelp.android.av.a;
import com.yelp.android.serializable.LocalAd;
import com.yelp.android.serializable.LocalAdType;
import com.yelp.android.serializable.YelpBusinessReview;
import com.yelp.android.ui.activities.businesspage.ActivityBusinessPage;

class ac
  implements View.OnClickListener
{
  ac(ab paramab, LocalAd paramLocalAd) {}
  
  public void onClick(View paramView)
  {
    AppData.b().k().a(EventIri.AdBusinessClick, a.getIriParams(ab.a(b), false));
    if (a.getLocalAdType() == LocalAdType.REVIEW)
    {
      paramView.getContext().startActivity(ActivityBusinessPage.a(paramView.getContext(), a.getBusiness(), a.getReview().getId()));
      return;
    }
    paramView.getContext().startActivity(ActivityBusinessPage.b(paramView.getContext(), a.getBusiness()));
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.ui.activities.reviewpage.ac
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */