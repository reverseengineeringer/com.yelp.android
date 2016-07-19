package com.yelp.android.ui.activities.bookmarks;

import android.text.Editable;
import android.text.TextWatcher;
import android.widget.EditText;
import com.yelp.android.ui.util.af;
import com.yelp.android.ui.widgets.EditTextAndClearButton;

class ActivityBookmarks$9
  implements TextWatcher
{
  ActivityBookmarks$9(ActivityBookmarks paramActivityBookmarks) {}
  
  public void afterTextChanged(Editable paramEditable) {}
  
  public void beforeTextChanged(CharSequence paramCharSequence, int paramInt1, int paramInt2, int paramInt3) {}
  
  public void onTextChanged(CharSequence paramCharSequence, int paramInt1, int paramInt2, int paramInt3)
  {
    paramCharSequence = ActivityBookmarks.q(a).getEditText();
    if (paramCharSequence.isFocused()) {
      ActivityBookmarks.r(a).filter(paramCharSequence.getText().toString());
    }
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.ui.activities.bookmarks.ActivityBookmarks.9
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */