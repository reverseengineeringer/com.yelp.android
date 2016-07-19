package com.yelp.android.ui.activities;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import com.yelp.android.ui.widgets.InstantAutoCompleteTextView;

class ActivityCreateAccount$22
  extends AnimatorListenerAdapter
{
  ActivityCreateAccount$22(ActivityCreateAccount paramActivityCreateAccount) {}
  
  public void onAnimationEnd(Animator paramAnimator)
  {
    ActivityCreateAccount.C(a).setIsDropDownEnabled(true);
    if (ActivityCreateAccount.D(a))
    {
      ActivityCreateAccount.C(a).showDropDown();
      ActivityCreateAccount.c(a, false);
    }
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.ui.activities.ActivityCreateAccount.22
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */