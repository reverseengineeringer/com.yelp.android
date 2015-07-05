package com.yelp.android.ui.activities.profile;

import android.content.Context;
import android.content.Intent;
import com.yelp.android.analytics.iris.EventIri;
import com.yelp.android.serializable.User;
import com.yelp.android.ui.activities.messaging.ActivityMessaging;

 enum ContributionAwardType$17
{
  ContributionAwardType$17(EventIri paramEventIri, int paramInt2, int paramInt3, boolean paramBoolean1, boolean paramBoolean2)
  {
    super(paramString, paramInt1, paramEventIri, paramInt2, paramInt3, paramBoolean1, paramBoolean2, null);
  }
  
  int getValue(User paramUser)
  {
    return paramUser.getUnreadMessageCount();
  }
  
  Intent getViewIntent(Context paramContext, User paramUser)
  {
    return ActivityMessaging.a(paramContext);
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.ui.activities.profile.ContributionAwardType.17
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */