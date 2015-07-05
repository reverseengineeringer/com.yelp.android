package com.yelp.android.ui.activities.reviewpage;

import android.os.Bundle;
import android.view.View;
import android.view.View.OnClickListener;
import com.yelp.android.analytics.iris.ViewIri;
import com.yelp.android.appdata.AppData;

class ar
  implements View.OnClickListener
{
  ar(ReviewFragment paramReviewFragment) {}
  
  public void onClick(View paramView)
  {
    if (paramView.getTag() != null)
    {
      AppData.a(ViewIri.BusinessPreviousReviewsBrowse);
      Bundle localBundle = a.getArguments();
      a.startActivity(ActivityReviewPager.a(a.getActivity(), (String)paramView.getTag(), localBundle.getString("business_id"), localBundle.getString("business_name")));
    }
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.ui.activities.reviewpage.ar
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */