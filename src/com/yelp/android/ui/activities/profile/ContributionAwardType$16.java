package com.yelp.android.ui.activities.profile;

import android.content.Context;
import android.content.Intent;
import com.yelp.android.analytics.iris.EventIri;
import com.yelp.android.serializable.User;
import com.yelp.android.ui.activities.ActivityBookmarks;
import com.yelp.android.ui.activities.ActivityLogin;

 enum ContributionAwardType$16
{
  ContributionAwardType$16(EventIri paramEventIri, int paramInt2, int paramInt3)
  {
    super(paramString, paramInt1, paramEventIri, paramInt2, paramInt3, null);
  }
  
  int getValue(User paramUser)
  {
    return paramUser.getBookmarkCount();
  }
  
  Intent getViewIntent(Context paramContext, User paramUser)
  {
    return ActivityLogin.a(paramContext, 2131166773, 2131166036, ActivityBookmarks.a(paramContext));
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.ui.activities.profile.ContributionAwardType.16
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */