package com.yelp.android.ui.activities.messaging;

import android.text.Editable;
import android.text.TextUtils;
import android.text.TextWatcher;
import android.widget.Button;

class i
  implements TextWatcher
{
  i(ConversationThreadFragment paramConversationThreadFragment) {}
  
  public void afterTextChanged(Editable paramEditable)
  {
    Button localButton = ConversationThreadFragment.f(a);
    if (!TextUtils.isEmpty(paramEditable.toString())) {}
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
 * Qualified Name:     com.yelp.android.ui.activities.messaging.i
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */