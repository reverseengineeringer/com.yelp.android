package com.yelp.android.ui.activities.reviewpage;

import com.yelp.android.appdata.webrequests.ApiRequest;
import java.util.ArrayList;

class UserBadgeList$1
  implements Runnable
{
  UserBadgeList$1(UserBadgeList paramUserBadgeList, ArrayList paramArrayList) {}
  
  public void run()
  {
    UserBadgeList.a(b, b.a(UserBadgeList.a(b)));
    if ((a == null) && (!UserBadgeList.a(b).u()))
    {
      UserBadgeList.a(b).f(new Void[0]);
      b.enableLoading(UserBadgeList.a(b));
    }
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.ui.activities.reviewpage.UserBadgeList.1
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */