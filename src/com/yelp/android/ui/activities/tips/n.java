package com.yelp.android.ui.activities.tips;

import android.view.View;
import android.view.View.OnClickListener;
import com.yelp.android.appdata.webrequests.ApiRequest;

class n
  implements View.OnClickListener
{
  n(WriteTip paramWriteTip) {}
  
  public void onClick(View paramView)
  {
    if ((WriteTip.d(a) != null) && (WriteTip.d(a).isFetching())) {
      return;
    }
    a.showDialog(301);
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.ui.activities.tips.n
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */