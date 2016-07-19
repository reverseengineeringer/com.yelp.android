package com.yelp.android.ui.activities;

import com.yelp.android.appdata.webrequests.ApiRequest;
import com.yelp.android.appdata.webrequests.ApiRequest.b;
import com.yelp.android.appdata.webrequests.YelpException;

class ActivityTwitterSignIn$2
  implements ApiRequest.b<String>
{
  ActivityTwitterSignIn$2(ActivityTwitterSignIn paramActivityTwitterSignIn) {}
  
  public void a(ApiRequest<?, ?, ?> paramApiRequest, String paramString)
  {
    ActivityTwitterSignIn.b(a, paramString);
    ActivityTwitterSignIn.d(a);
  }
  
  public void onError(ApiRequest<?, ?, ?> paramApiRequest, YelpException paramYelpException)
  {
    a.showYesNoDialog(paramYelpException.getMessageResource(), 2131166469, 2131165583, 1);
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.ui.activities.ActivityTwitterSignIn.2
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */