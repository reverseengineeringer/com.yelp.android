package com.yelp.android.ui.activities.bookmarks;

import android.view.KeyEvent;
import android.widget.TextView;
import android.widget.TextView.OnEditorActionListener;
import com.yelp.android.ui.util.ar;
import com.yelp.android.ui.widgets.EditTextAndClearButton;

class ActivityBookmarks$2
  implements TextView.OnEditorActionListener
{
  ActivityBookmarks$2(ActivityBookmarks paramActivityBookmarks) {}
  
  public boolean onEditorAction(TextView paramTextView, int paramInt, KeyEvent paramKeyEvent)
  {
    if ((paramInt == 0) && (ar.a(paramKeyEvent)))
    {
      ActivityBookmarks.a(a, ActivityBookmarks.q(a).getText().toString());
      ActivityBookmarks.a(ActivityBookmarks.d(a));
      ActivityBookmarks.u(a);
      return true;
    }
    return false;
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.ui.activities.bookmarks.ActivityBookmarks.2
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */