package com.yelp.android.ui.activities.messaging;

import com.yelp.android.appdata.webrequests.ApiRequest;
import com.yelp.android.appdata.webrequests.YelpException;
import com.yelp.android.appdata.webrequests.m;
import com.yelp.android.appdata.webrequests.messaging.j;

class ab
  implements m<j>
{
  ab(MessageTheBusinessFragment.RequestFragment paramRequestFragment) {}
  
  public void a(ApiRequest<?, ?, ?> paramApiRequest, j paramj)
  {
    MessageTheBusinessFragment.a(MessageTheBusinessFragment.RequestFragment.b(a), paramj);
  }
  
  public void onError(ApiRequest<?, ?, ?> paramApiRequest, YelpException paramYelpException)
  {
    MessageTheBusinessFragment.b(MessageTheBusinessFragment.RequestFragment.b(a));
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.ui.activities.messaging.ab
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */