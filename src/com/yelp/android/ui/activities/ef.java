package com.yelp.android.ui.activities;

import com.yelp.android.appdata.webrequests.ApiRequest;
import com.yelp.android.appdata.webrequests.YelpException;
import com.yelp.android.appdata.webrequests.m;

class ef
  implements m<String>
{
  ef(ActivityTwitterSignIn paramActivityTwitterSignIn) {}
  
  public void a(ApiRequest<?, ?, ?> paramApiRequest, String paramString)
  {
    ActivityTwitterSignIn.b(a, paramString);
    ActivityTwitterSignIn.d(a);
  }
  
  public void onError(ApiRequest<?, ?, ?> paramApiRequest, YelpException paramYelpException)
  {
    a.showYesNoDialog(paramYelpException.getMessageResource(), 2131166464, 2131165457, 1);
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.ui.activities.ef
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */