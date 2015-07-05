package com.yelp.android.ui.activities.messaging;

import com.yelp.android.appdata.webrequests.ApiRequest;
import com.yelp.android.appdata.webrequests.YelpException;
import com.yelp.android.appdata.webrequests.m;

class aa
  implements m<String>
{
  aa(MessageTheBusinessFragment.RequestFragment paramRequestFragment) {}
  
  public void a(ApiRequest<?, ?, ?> paramApiRequest, String paramString)
  {
    MessageTheBusinessFragment.a(MessageTheBusinessFragment.RequestFragment.b(a), paramString);
  }
  
  public void onError(ApiRequest<?, ?, ?> paramApiRequest, YelpException paramYelpException)
  {
    MessageTheBusinessFragment.a(MessageTheBusinessFragment.RequestFragment.b(a), paramYelpException);
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.ui.activities.messaging.aa
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */