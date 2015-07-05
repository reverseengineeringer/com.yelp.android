package com.yelp.android.ui.activities;

import android.widget.CompoundButton;
import android.widget.CompoundButton.OnCheckedChangeListener;
import android.widget.EditText;
import android.widget.TextView;
import com.yelp.android.appdata.webrequests.ShareRequest.ShareType;
import com.yelp.android.ui.util.ce;
import com.yelp.android.util.z;

class ep
  implements CompoundButton.OnCheckedChangeListener
{
  ep(CheckInDialog paramCheckInDialog, ce paramce) {}
  
  public void onCheckedChanged(CompoundButton paramCompoundButton, boolean paramBoolean)
  {
    if (!paramBoolean) {
      CheckInDialog.b(b).setVisibility(8);
    }
    for (;;)
    {
      z.a(b.getActivity(), ShareRequest.ShareType.TWITTER, paramBoolean);
      return;
      if (a.a() - CheckInDialog.c(b).length() < 0) {
        CheckInDialog.b(b).setVisibility(0);
      }
    }
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.ui.activities.ep
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */