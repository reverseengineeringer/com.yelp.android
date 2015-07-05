package com.yelp.android.ui.widgets;

import android.text.Editable;
import android.text.TextWatcher;
import android.widget.ImageView;

class g
  implements TextWatcher
{
  g(EditTextAndClearButton paramEditTextAndClearButton) {}
  
  public void afterTextChanged(Editable paramEditable) {}
  
  public void beforeTextChanged(CharSequence paramCharSequence, int paramInt1, int paramInt2, int paramInt3) {}
  
  public void onTextChanged(CharSequence paramCharSequence, int paramInt1, int paramInt2, int paramInt3)
  {
    ImageView localImageView = EditTextAndClearButton.a(a);
    if (paramCharSequence.length() == 0) {}
    for (paramInt1 = 4;; paramInt1 = 0)
    {
      localImageView.setVisibility(paramInt1);
      return;
    }
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.ui.widgets.g
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */