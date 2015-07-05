package com.yelp.android.ui.activities.mutatebiz;

import android.text.Editable;
import android.text.TextWatcher;

class v
  implements TextWatcher
{
  v(EditName paramEditName) {}
  
  public void afterTextChanged(Editable paramEditable) {}
  
  public void beforeTextChanged(CharSequence paramCharSequence, int paramInt1, int paramInt2, int paramInt3) {}
  
  public void onTextChanged(CharSequence paramCharSequence, int paramInt1, int paramInt2, int paramInt3)
  {
    a.updateOptionsMenu();
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.ui.activities.mutatebiz.v
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */