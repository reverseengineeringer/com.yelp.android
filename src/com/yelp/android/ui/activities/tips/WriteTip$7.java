package com.yelp.android.ui.activities.tips;

import android.view.View;
import android.view.View.OnClickListener;
import com.yelp.android.appdata.webrequests.ApiRequest;

class WriteTip$7
  implements View.OnClickListener
{
  WriteTip$7(WriteTip paramWriteTip) {}
  
  public void onClick(View paramView)
  {
    if ((WriteTip.d(a) != null) && (WriteTip.d(a).u())) {
      return;
    }
    a.showDialog(301);
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.ui.activities.tips.WriteTip.7
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */