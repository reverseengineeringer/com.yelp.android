package com.yelp.android.ui.activities.reviews;

import android.support.v4.app.FragmentActivity;
import android.view.inputmethod.InputMethodManager;
import android.widget.EditText;

class af
  implements Runnable
{
  af(ReviewComposeFragment paramReviewComposeFragment) {}
  
  public void run()
  {
    ReviewComposeFragment.a(a, true);
    ReviewComposeFragment.b(a).requestFocus();
    ((InputMethodManager)a.getActivity().getSystemService("input_method")).showSoftInput(ReviewComposeFragment.b(a), 0);
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.ui.activities.reviews.af
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */