package com.yelp.android.ui.activities.mutatebiz;

import android.view.KeyEvent;
import android.widget.TextView;
import android.widget.TextView.OnEditorActionListener;

class EditName$1
  implements TextView.OnEditorActionListener
{
  EditName$1(EditName paramEditName) {}
  
  public boolean onEditorAction(TextView paramTextView, int paramInt, KeyEvent paramKeyEvent)
  {
    if (paramInt == 6)
    {
      EditName.a(a);
      return true;
    }
    return false;
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.ui.activities.mutatebiz.EditName.1
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */