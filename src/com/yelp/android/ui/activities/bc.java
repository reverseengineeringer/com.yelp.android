package com.yelp.android.ui.activities;

import android.widget.CompoundButton;
import android.widget.CompoundButton.OnCheckedChangeListener;
import android.widget.EditText;

class bc
  implements CompoundButton.OnCheckedChangeListener
{
  bc(ActivityConfig paramActivityConfig) {}
  
  public void onCheckedChanged(CompoundButton paramCompoundButton, boolean paramBoolean)
  {
    if (paramBoolean)
    {
      ActivityConfig.a(a).setEnabled(true);
      return;
    }
    ActivityConfig.a(a).setEnabled(false);
    ActivityConfig.a(a).setText("");
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.ui.activities.bc
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */