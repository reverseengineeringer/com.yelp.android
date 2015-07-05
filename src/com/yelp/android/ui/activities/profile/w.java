package com.yelp.android.ui.activities.profile;

import com.yelp.android.appdata.webrequests.ApiRequest;
import com.yelp.android.appdata.webrequests.YelpException;
import com.yelp.android.appdata.webrequests.m;
import com.yelp.android.serializable.User;

class w
  implements m<User>
{
  w(UserProfileFragment paramUserProfileFragment) {}
  
  public void a(ApiRequest<?, ?, ?> paramApiRequest, User paramUser)
  {
    UserProfileFragment.a(a).a(paramUser);
    a.j();
    UserProfileFragment.b(a);
    a.b(paramUser);
  }
  
  public void onError(ApiRequest<?, ?, ?> paramApiRequest, YelpException paramYelpException)
  {
    UserProfileFragment.a(a, paramYelpException);
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.ui.activities.profile.w
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */