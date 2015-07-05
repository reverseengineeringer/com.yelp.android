package com.yelp.android.ui.activities;

import android.view.KeyEvent;
import android.widget.Spinner;
import android.widget.TextView;
import android.widget.TextView.OnEditorActionListener;

class bx
  implements TextView.OnEditorActionListener
{
  bx(ActivityCreateAccount paramActivityCreateAccount) {}
  
  public boolean onEditorAction(TextView paramTextView, int paramInt, KeyEvent paramKeyEvent)
  {
    if (paramInt == 5)
    {
      ActivityCreateAccount.d(a).performClick();
      return true;
    }
    return false;
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.ui.activities.bx
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */