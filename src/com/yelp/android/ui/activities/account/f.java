package com.yelp.android.ui.activities.account;

import android.text.Editable;
import android.text.TextWatcher;

class f
  implements TextWatcher
{
  f(EditTextNonPopUpError paramEditTextNonPopUpError) {}
  
  public void afterTextChanged(Editable paramEditable) {}
  
  public void beforeTextChanged(CharSequence paramCharSequence, int paramInt1, int paramInt2, int paramInt3) {}
  
  public void onTextChanged(CharSequence paramCharSequence, int paramInt1, int paramInt2, int paramInt3)
  {
    a.setError(null);
    a.removeTextChangedListener(this);
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.ui.activities.account.f
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */