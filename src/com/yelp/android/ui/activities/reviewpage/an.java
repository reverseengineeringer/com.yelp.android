package com.yelp.android.ui.activities.reviewpage;

import android.view.View;
import android.view.View.OnClickListener;
import com.yelp.android.serializable.YelpBusinessReview;
import com.yelp.android.ui.activities.profile.ActivityUserProfile;

class an
  implements View.OnClickListener
{
  an(ReviewFragment paramReviewFragment) {}
  
  public void onClick(View paramView)
  {
    a.startActivity(ActivityUserProfile.a(paramView.getContext(), ReviewFragment.a(a).getUserId()));
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.ui.activities.reviewpage.an
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */