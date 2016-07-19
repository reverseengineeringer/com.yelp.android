package com.yelp.android.ui.activities.mutatebiz;

import android.view.KeyEvent;
import android.widget.TextView;
import android.widget.TextView.OnEditorActionListener;
import com.yelp.android.ui.util.ar;

class EditField$1
  implements TextView.OnEditorActionListener
{
  EditField$1(EditField paramEditField) {}
  
  public boolean onEditorAction(TextView paramTextView, int paramInt, KeyEvent paramKeyEvent)
  {
    if (((paramInt == 0) && ((paramTextView.getImeOptions() & 0x1) != 1) && (ar.a(paramKeyEvent))) || (paramInt == 6))
    {
      a.c();
      return true;
    }
    return false;
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.ui.activities.mutatebiz.EditField.1
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */