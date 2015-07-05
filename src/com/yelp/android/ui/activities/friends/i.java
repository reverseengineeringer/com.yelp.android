package com.yelp.android.ui.activities.friends;

import com.yelp.android.appdata.webrequests.ApiRequest;
import com.yelp.android.appdata.webrequests.YelpException;
import com.yelp.android.appdata.webrequests.m;

class i
  implements m<Boolean>
{
  i(FindFriendsFBContactsFragment paramFindFriendsFBContactsFragment) {}
  
  public void a(ApiRequest<?, ?, ?> paramApiRequest, Boolean paramBoolean)
  {
    a.j();
    FindFriendsFBContactsFragment.a(a, paramBoolean.booleanValue());
    FindFriendsFBContactsFragment.b(a, paramBoolean.booleanValue());
  }
  
  public void onError(ApiRequest<?, ?, ?> paramApiRequest, YelpException paramYelpException)
  {
    a.a(paramYelpException);
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.ui.activities.friends.i
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */