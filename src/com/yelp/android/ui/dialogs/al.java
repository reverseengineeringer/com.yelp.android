package com.yelp.android.ui.dialogs;

import android.text.Editable;
import android.text.TextUtils;
import android.text.TextWatcher;
import android.widget.Button;
import com.yelp.android.util.StringUtils;

class al
  implements TextWatcher
{
  al(FlagContentDialog paramFlagContentDialog) {}
  
  public void afterTextChanged(Editable paramEditable)
  {
    Button localButton = FlagContentDialog.b(a);
    if ((paramEditable != null) && (!TextUtils.isEmpty(StringUtils.a(paramEditable.toString())))) {}
    for (boolean bool = true;; bool = false)
    {
      localButton.setEnabled(bool);
      return;
    }
  }
  
  public void beforeTextChanged(CharSequence paramCharSequence, int paramInt1, int paramInt2, int paramInt3) {}
  
  public void onTextChanged(CharSequence paramCharSequence, int paramInt1, int paramInt2, int paramInt3) {}
}

/* Location:
 * Qualified Name:     com.yelp.android.ui.dialogs.al
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */