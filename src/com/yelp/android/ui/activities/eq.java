package com.yelp.android.ui.activities;

import android.widget.CompoundButton;
import android.widget.CompoundButton.OnCheckedChangeListener;
import com.yelp.android.appdata.webrequests.ShareRequest.ShareType;
import com.yelp.android.util.z;

class eq
  implements CompoundButton.OnCheckedChangeListener
{
  eq(CheckInDialog paramCheckInDialog) {}
  
  public void onCheckedChanged(CompoundButton paramCompoundButton, boolean paramBoolean)
  {
    z.a(a.getActivity(), ShareRequest.ShareType.FACEBOOK, paramBoolean);
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.ui.activities.eq
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */