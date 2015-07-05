package com.yelp.android.ui.activities;

import android.text.TextUtils;
import com.yelp.android.appdata.webrequests.ApiRequest;
import com.yelp.android.appdata.webrequests.YelpException;
import com.yelp.android.appdata.webrequests.ci;
import com.yelp.android.appdata.webrequests.el;
import com.yelp.android.appdata.webrequests.m;

class ch
  implements m<String>
{
  ch(ActivityLogin paramActivityLogin) {}
  
  public void a(ApiRequest<?, ?, ?> paramApiRequest, String paramString)
  {
    int i;
    if ((paramApiRequest instanceof ci)) {
      if (TextUtils.isEmpty(paramString)) {
        i = 2131166295;
      }
    }
    for (;;)
    {
      a.hideLoadingDialog();
      a.showInfoDialog(a.getString(2131166030), a.getString(i, new Object[] { paramString }));
      return;
      i = 2131166296;
      continue;
      if ((paramApiRequest instanceof el))
      {
        if (TextUtils.isEmpty(paramString)) {
          i = 2131165640;
        } else {
          i = 2131165641;
        }
      }
      else {
        i = 0;
      }
    }
  }
  
  public void onError(ApiRequest<?, ?, ?> paramApiRequest, YelpException paramYelpException)
  {
    a.hideLoadingDialog();
    a.showInfoDialog(a.getString(2131166030), paramYelpException.getMessage(a));
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.ui.activities.ch
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */