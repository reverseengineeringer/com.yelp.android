package com.yelp.android.ui.dialogs;

import android.widget.RadioGroup;
import android.widget.RadioGroup.OnCheckedChangeListener;

class bd
  implements RadioGroup.OnCheckedChangeListener
{
  bd(PrivacyPolicyDialog.SelectPrivacyLevelDialog paramSelectPrivacyLevelDialog) {}
  
  public void onCheckedChanged(RadioGroup paramRadioGroup, int paramInt)
  {
    if (PrivacyPolicyDialog.SelectPrivacyLevelDialog.a(a) != null) {
      PrivacyPolicyDialog.SelectPrivacyLevelDialog.a(a).a(paramInt);
    }
    a.dismiss();
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.ui.dialogs.bd
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */