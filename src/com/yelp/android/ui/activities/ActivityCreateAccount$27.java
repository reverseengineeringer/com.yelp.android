package com.yelp.android.ui.activities;

import android.view.KeyEvent;
import android.widget.TextView;
import android.widget.TextView.OnEditorActionListener;
import com.yelp.android.ui.widgets.SelectionSpinner;

class ActivityCreateAccount$27
  implements TextView.OnEditorActionListener
{
  ActivityCreateAccount$27(ActivityCreateAccount paramActivityCreateAccount) {}
  
  public boolean onEditorAction(TextView paramTextView, int paramInt, KeyEvent paramKeyEvent)
  {
    if (paramInt == 5)
    {
      ActivityCreateAccount.c(a).performClick();
      return true;
    }
    return false;
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.ui.activities.ActivityCreateAccount.27
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */