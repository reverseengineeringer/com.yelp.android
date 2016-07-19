package com.yelp.android.ui.activities;

import android.view.KeyEvent;
import android.widget.TextView;
import android.widget.TextView.OnEditorActionListener;
import com.yelp.android.ui.util.ar;

class ActivityLogin$1
  implements TextView.OnEditorActionListener
{
  ActivityLogin$1(ActivityLogin paramActivityLogin) {}
  
  public boolean onEditorAction(TextView paramTextView, int paramInt, KeyEvent paramKeyEvent)
  {
    if (((paramInt == 0) && (ar.a(paramKeyEvent))) || (paramInt == 6))
    {
      ActivityLogin.a(a);
      return true;
    }
    return false;
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.ui.activities.ActivityLogin.1
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */