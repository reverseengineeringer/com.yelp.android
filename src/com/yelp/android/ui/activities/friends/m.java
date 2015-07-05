package com.yelp.android.ui.activities.friends;

import com.yelp.android.appdata.RemoteConfigPreferences;
import com.yelp.android.appdata.webrequests.ApiRequest;
import com.yelp.android.appdata.webrequests.YelpException;

class m
  implements com.yelp.android.appdata.webrequests.m<RemoteConfigPreferences>
{
  m(FindFriendsFBContactsFragment paramFindFriendsFBContactsFragment) {}
  
  public void a(ApiRequest<?, ?, ?> paramApiRequest, RemoteConfigPreferences paramRemoteConfigPreferences)
  {
    a.j();
    a.a_();
  }
  
  public void onError(ApiRequest<?, ?, ?> paramApiRequest, YelpException paramYelpException)
  {
    a.j();
    a.a(paramYelpException);
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.ui.activities.friends.m
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */