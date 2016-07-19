package com.yelp.android.ui.activities.reviewpage;

import android.text.TextUtils;
import android.view.KeyEvent;
import android.view.inputmethod.InputMethodManager;
import android.widget.TextView;
import android.widget.TextView.OnEditorActionListener;

class ActivityAbstractReviewPage$3
  implements TextView.OnEditorActionListener
{
  ActivityAbstractReviewPage$3(ActivityAbstractReviewPage paramActivityAbstractReviewPage, InputMethodManager paramInputMethodManager) {}
  
  public boolean onEditorAction(TextView paramTextView, int paramInt, KeyEvent paramKeyEvent)
  {
    if ((paramInt != 3) || (TextUtils.isEmpty(paramTextView.getText()))) {
      return false;
    }
    b.j = paramTextView.getText().toString();
    ActivityAbstractReviewPage.a(b);
    a.hideSoftInputFromWindow(paramTextView.getWindowToken(), 0);
    return true;
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.ui.activities.reviewpage.ActivityAbstractReviewPage.3
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */