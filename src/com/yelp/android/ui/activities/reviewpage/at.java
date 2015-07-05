package com.yelp.android.ui.activities.reviewpage;

import android.content.Intent;
import android.view.View;
import android.view.View.OnClickListener;
import com.yelp.android.serializable.YelpBusinessReview;
import com.yelp.android.ui.activities.ActivityLogin;
import com.yelp.android.ui.activities.compliments.SendCompliment;

class at
  implements View.OnClickListener
{
  at(ReviewFragment paramReviewFragment, YelpBusinessReview paramYelpBusinessReview) {}
  
  public void onClick(View paramView)
  {
    Intent localIntent = SendCompliment.a(paramView.getContext(), a);
    paramView = ActivityLogin.a(paramView.getContext(), 2131166057, localIntent);
    b.startActivity(paramView);
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.ui.activities.reviewpage.at
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */