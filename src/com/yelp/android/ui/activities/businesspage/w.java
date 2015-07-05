package com.yelp.android.ui.activities.businesspage;

import android.content.Context;
import android.view.View;
import android.view.View.OnClickListener;
import com.yelp.android.analytics.iris.ViewIri;
import com.yelp.android.serializable.User;
import com.yelp.android.serializable.YelpBusiness;
import com.yelp.android.ui.activities.ActivityUserList;
import com.yelp.android.ui.activities.profile.ActivityUserProfile;
import java.util.ArrayList;
import java.util.List;

class w
  implements View.OnClickListener
{
  w(t paramt, List paramList, Context paramContext, User paramUser, YelpBusiness paramYelpBusiness) {}
  
  public void onClick(View paramView)
  {
    if (a.size() == 1)
    {
      b.startActivity(ActivityUserProfile.a(b, c.getId()));
      return;
    }
    b.startActivity(ActivityUserList.a(b, new ArrayList(a), b.getString(2131165869, new Object[] { d.getDisplayName() }), ViewIri.BusinessRecentFriends));
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.ui.activities.businesspage.w
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */