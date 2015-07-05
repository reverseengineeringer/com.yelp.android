package com.yelp.android.ui.activities;

import android.view.KeyEvent;
import android.widget.TextView;
import android.widget.TextView.OnEditorActionListener;
import com.yelp.android.ui.util.cp;
import com.yelp.android.ui.util.cr;

class ek
  implements TextView.OnEditorActionListener
{
  ek(CheckInDialog paramCheckInDialog) {}
  
  public boolean onEditorAction(TextView paramTextView, int paramInt, KeyEvent paramKeyEvent)
  {
    if ((paramInt == 0) && (cp.a(paramKeyEvent)))
    {
      cr.b(paramTextView);
      return true;
    }
    return false;
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.ui.activities.ek
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */