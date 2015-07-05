package com.yelp.android.ui.activities.profile;

import com.yelp.android.appdata.AppData;
import com.yelp.android.appdata.webrequests.ApiRequest;
import com.yelp.android.appdata.webrequests.YelpException;
import com.yelp.android.appdata.webrequests.dc;
import com.yelp.android.appdata.webrequests.m;
import com.yelp.android.serializable.User;

class o
  implements m<User>
{
  o(MoreAboutUser paramMoreAboutUser) {}
  
  public void a(ApiRequest<?, ?, ?> paramApiRequest, User paramUser)
  {
    MoreAboutUser.a(a, paramUser);
    MoreAboutUser.a(a);
    paramApiRequest = AppData.b().m();
    if (paramApiRequest.a(MoreAboutUser.b(a))) {
      paramApiRequest.b(MoreAboutUser.b(a));
    }
  }
  
  public void onError(ApiRequest<?, ?, ?> paramApiRequest, YelpException paramYelpException)
  {
    a.onError(paramApiRequest, paramYelpException);
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.ui.activities.profile.o
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */