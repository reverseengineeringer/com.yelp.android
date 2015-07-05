package com.yelp.android.ui.activities.reviews;

import android.support.v4.app.FragmentActivity;
import android.view.View;
import android.view.View.OnClickListener;
import android.view.inputmethod.InputMethodManager;
import android.widget.EditText;
import com.yelp.android.analytics.iris.ReviewEventIri;
import com.yelp.android.appdata.AppData;

class ac
  implements View.OnClickListener
{
  ac(ReviewComposeFragment paramReviewComposeFragment) {}
  
  public void onClick(View paramView)
  {
    if (!ReviewComposeFragment.a(a))
    {
      if (a.getActivity() != null)
      {
        paramView = (InputMethodManager)a.getActivity().getSystemService("input_method");
        AppData.a(ReviewEventIri.ReviewKeyboard);
        ReviewComposeFragment.b(a).requestFocus();
        paramView.showSoftInput(ReviewComposeFragment.b(a), 0);
      }
      return;
    }
    AppData.a(ReviewEventIri.PreviousReviews);
    a.d.e();
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.ui.activities.reviews.ac
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */