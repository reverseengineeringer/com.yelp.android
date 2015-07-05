package com.yelp.android.ui.activities;

import android.widget.CompoundButton;
import android.widget.CompoundButton.OnCheckedChangeListener;
import com.yelp.android.appdata.AppData;
import com.yelp.android.debug.Debug;

class av
  implements CompoundButton.OnCheckedChangeListener
{
  av(ActivityConfig paramActivityConfig) {}
  
  public void onCheckedChanged(CompoundButton paramCompoundButton, boolean paramBoolean)
  {
    AppData.b().o().d(paramBoolean);
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.ui.activities.av
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */