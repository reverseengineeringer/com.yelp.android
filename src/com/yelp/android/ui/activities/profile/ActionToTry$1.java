package com.yelp.android.ui.activities.profile;

import android.content.Context;
import android.content.Intent;
import com.yelp.android.analytics.iris.EventIri;
import com.yelp.android.serializable.User;
import com.yelp.android.ui.activities.friends.ActivityFindFriends;

 enum ActionToTry$1
{
  ActionToTry$1(int paramInt2, int paramInt3, EventIri paramEventIri)
  {
    super(paramString, paramInt1, paramInt2, paramInt3, paramEventIri, null);
  }
  
  Intent intentToStartAction(Context paramContext, User paramUser)
  {
    return ActivityFindFriends.a(paramContext, false, false);
  }
  
  boolean shouldTry(User paramUser)
  {
    return paramUser.getFriendCount() == 0;
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.ui.activities.profile.ActionToTry.1
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */