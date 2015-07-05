package com.yelp.android.ui.activities;

import android.widget.CompoundButton;
import android.widget.CompoundButton.OnCheckedChangeListener;
import com.yelp.android.appdata.AppData;
import com.yelp.android.debug.Debug;

class ao
  implements CompoundButton.OnCheckedChangeListener
{
  ao(ActivityConfig paramActivityConfig) {}
  
  public void onCheckedChanged(CompoundButton paramCompoundButton, boolean paramBoolean)
  {
    AppData.b().o().a(paramBoolean);
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.ui.activities.ao
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */