package com.yelp.android.ui.activities;

import android.view.KeyEvent;
import android.widget.TextView;
import android.widget.TextView.OnEditorActionListener;
import com.yelp.android.ui.util.cp;

class cg
  implements TextView.OnEditorActionListener
{
  cg(ActivityLogin paramActivityLogin) {}
  
  public boolean onEditorAction(TextView paramTextView, int paramInt, KeyEvent paramKeyEvent)
  {
    if (((paramInt == 0) && (cp.a(paramKeyEvent))) || (paramInt == 6))
    {
      ActivityLogin.a(a);
      return true;
    }
    return false;
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.ui.activities.cg
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */