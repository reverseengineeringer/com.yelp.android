package com.yelp.android.ui.activities.reviews;

import android.support.v4.app.FragmentActivity;
import android.view.View;
import android.view.View.OnClickListener;
import android.widget.TextView;
import com.yelp.android.analytics.iris.ReviewEventIri;
import com.yelp.android.appdata.AppData;
import com.yelp.android.ui.util.ScrollToLoadListView;
import com.yelp.android.ui.util.cw;

class aj
  implements View.OnClickListener
{
  aj(ReviewComposeFragment paramReviewComposeFragment) {}
  
  public void onClick(View paramView)
  {
    if (ReviewComposeFragment.c(a).getVisibility() == 8)
    {
      AppData.a(ReviewEventIri.PreviousReviews);
      ReviewComposeFragment.c(a).setVisibility(0);
      ReviewComposeFragment.d(a).setVisibility(0);
      ReviewComposeFragment.e(a).setCompoundDrawablesWithIntrinsicBounds(2130838307, 0, 0, 0);
      ReviewComposeFragment.e(a).setText(a.getActivity().getString(2131165912));
    }
    for (;;)
    {
      cw.c(ReviewComposeFragment.e(a), cw.a);
      return;
      ReviewComposeFragment.c(a).setVisibility(8);
      ReviewComposeFragment.e(a).setCompoundDrawablesWithIntrinsicBounds(2130838308, 0, 0, 0);
      ReviewComposeFragment.e(a).setText(ReviewComposeFragment.f(a));
    }
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.ui.activities.reviews.aj
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */