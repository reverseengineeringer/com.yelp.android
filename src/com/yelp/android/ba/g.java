package com.yelp.android.ba;

import android.content.Context;
import android.view.View;
import android.view.View.OnClickListener;
import com.yelp.android.analytics.iris.EventIri;
import com.yelp.android.appdata.AppData;
import com.yelp.android.serializable.User;
import com.yelp.android.ui.activities.profile.ActivityUserProfile;
import java.util.Map;

class g
  implements View.OnClickListener
{
  g(f paramf, Map paramMap, Context paramContext, User paramUser) {}
  
  public void onClick(View paramView)
  {
    AppData.a(EventIri.FeedFriendUser, a);
    b.startActivity(ActivityUserProfile.a(b, c.getUserId()));
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.ba.g
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */