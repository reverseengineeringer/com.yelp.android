package com.yelp.android.ui.activities.profile;

import com.yelp.android.appdata.AppData;
import com.yelp.android.appdata.webrequests.ApiRequest;
import com.yelp.android.appdata.webrequests.ApiRequest.b;
import com.yelp.android.appdata.webrequests.YelpException;
import com.yelp.android.appdata.webrequests.co;
import com.yelp.android.serializable.User;

class MoreAboutUser$4
  implements ApiRequest.b<User>
{
  MoreAboutUser$4(MoreAboutUser paramMoreAboutUser) {}
  
  public void a(ApiRequest<?, ?, ?> paramApiRequest, User paramUser)
  {
    MoreAboutUser.a(a, paramUser);
    MoreAboutUser.b(a);
    paramApiRequest = AppData.b().q();
    if (paramApiRequest.a(MoreAboutUser.a(a))) {
      paramApiRequest.b(MoreAboutUser.a(a));
    }
  }
  
  public void onError(ApiRequest<?, ?, ?> paramApiRequest, YelpException paramYelpException)
  {
    a.onError(paramApiRequest, paramYelpException);
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.ui.activities.profile.MoreAboutUser.4
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */