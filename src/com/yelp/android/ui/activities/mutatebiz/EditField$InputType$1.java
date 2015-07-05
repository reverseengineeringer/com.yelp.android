package com.yelp.android.ui.activities.mutatebiz;

import android.telephony.PhoneNumberFormattingTextWatcher;
import android.widget.TextView;

 enum EditField$InputType$1
{
  EditField$InputType$1(int paramInt2, int paramInt3)
  {
    super(paramString, paramInt1, paramInt2, paramInt3, null);
  }
  
  public void setup(TextView paramTextView)
  {
    super.setup(paramTextView);
    paramTextView.addTextChangedListener(new PhoneNumberFormattingTextWatcher());
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.ui.activities.mutatebiz.EditField.InputType.1
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */