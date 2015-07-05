package com.yelp.android.ui.widgets;

import android.text.Editable;
import android.text.TextWatcher;

class w
  implements TextWatcher
{
  w(RecipientBoxView paramRecipientBoxView) {}
  
  public void afterTextChanged(Editable paramEditable) {}
  
  public void beforeTextChanged(CharSequence paramCharSequence, int paramInt1, int paramInt2, int paramInt3) {}
  
  public void onTextChanged(CharSequence paramCharSequence, int paramInt1, int paramInt2, int paramInt3)
  {
    if (RecipientBoxView.a(a)) {
      RecipientBoxView.b(a).a(paramCharSequence);
    }
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.ui.widgets.w
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */