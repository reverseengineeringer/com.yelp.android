package com.yelp.android.ui.activities.localissue;

import android.view.View;
import android.view.View.OnClickListener;
import com.yelp.android.serializable.YelpBusiness;
import com.yelp.android.ui.activities.reviewpage.ActivityReviewPager;
import com.yelp.android.ui.panels.businesssearch.BusinessAdapter;

class ActivityLocalIssue$7
  implements View.OnClickListener
{
  ActivityLocalIssue$7(ActivityLocalIssue paramActivityLocalIssue) {}
  
  public void onClick(View paramView)
  {
    paramView = ActivityLocalIssue.d(a).a(((Integer)paramView.getTag()).intValue());
    a.startActivity(ActivityReviewPager.a(a, paramView.Y(), paramView.z(), paramView.aD(), paramView.aw()));
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.ui.activities.localissue.ActivityLocalIssue.7
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */