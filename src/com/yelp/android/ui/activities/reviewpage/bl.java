package com.yelp.android.ui.activities.reviewpage;

import com.yelp.android.appdata.webrequests.ApiRequest;
import java.util.ArrayList;

class bl
  implements Runnable
{
  bl(UserBadgeList paramUserBadgeList, ArrayList paramArrayList) {}
  
  public void run()
  {
    UserBadgeList.a(b, b.a(UserBadgeList.a(b)));
    if ((a == null) && (!UserBadgeList.a(b).isFetching()))
    {
      UserBadgeList.a(b).execute(new Object[0]);
      b.enableLoading(UserBadgeList.a(b));
    }
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.ui.activities.reviewpage.bl
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */