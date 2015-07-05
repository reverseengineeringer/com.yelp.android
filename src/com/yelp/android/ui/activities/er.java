package com.yelp.android.ui.activities;

import android.widget.CompoundButton;
import android.widget.CompoundButton.OnCheckedChangeListener;
import com.yelp.android.appdata.webrequests.ShareRequest.ShareType;
import com.yelp.android.util.z;

class er
  implements CompoundButton.OnCheckedChangeListener
{
  er(CheckInDialog paramCheckInDialog) {}
  
  public void onCheckedChanged(CompoundButton paramCompoundButton, boolean paramBoolean)
  {
    z.a(a.getActivity(), ShareRequest.ShareType.YELP, paramBoolean);
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.ui.activities.er
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */