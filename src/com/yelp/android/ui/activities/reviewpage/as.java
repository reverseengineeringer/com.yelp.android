package com.yelp.android.ui.activities.reviewpage;

import android.view.View;
import android.view.View.OnClickListener;
import android.widget.Checkable;
import com.yelp.android.ui.activities.ActivityLogin;

class as
  implements View.OnClickListener
{
  as(ReviewFragment paramReviewFragment) {}
  
  public void onClick(View paramView)
  {
    if ((paramView instanceof Checkable)) {
      ((Checkable)paramView).setChecked(false);
    }
    paramView = paramView.getContext();
    a.startActivityForResult(ActivityLogin.a(paramView, 2131166058), 101);
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.ui.activities.reviewpage.as
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */