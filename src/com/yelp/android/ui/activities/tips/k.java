package com.yelp.android.ui.activities.tips;

import android.widget.CompoundButton;
import android.widget.CompoundButton.OnCheckedChangeListener;
import com.yelp.android.appdata.webrequests.ShareRequest.ShareType;
import com.yelp.android.util.z;

class k
  implements CompoundButton.OnCheckedChangeListener
{
  k(WriteTip paramWriteTip) {}
  
  public void onCheckedChanged(CompoundButton paramCompoundButton, boolean paramBoolean)
  {
    z.a(a, ShareRequest.ShareType.FACEBOOK, paramBoolean);
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.ui.activities.tips.k
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */