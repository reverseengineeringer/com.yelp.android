package com.yelp.android.ui.activities.tips;

import android.widget.CompoundButton;
import android.widget.CompoundButton.OnCheckedChangeListener;
import com.yelp.android.appdata.webrequests.ShareRequest.ShareType;
import com.yelp.android.util.p;

class WriteTip$3
  implements CompoundButton.OnCheckedChangeListener
{
  WriteTip$3(WriteTip paramWriteTip) {}
  
  public void onCheckedChanged(CompoundButton paramCompoundButton, boolean paramBoolean)
  {
    p.a(a, ShareRequest.ShareType.TWITTER, paramBoolean);
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.ui.activities.tips.WriteTip.3
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */