package com.yelp.android.ui.activities.profile;

import android.content.Context;
import android.content.Intent;
import com.yelp.android.analytics.iris.EventIri;
import com.yelp.android.serializable.User;

 enum ContributionAwardType$3
{
  ContributionAwardType$3(EventIri paramEventIri, int paramInt2, int paramInt3)
  {
    super(paramString, paramInt1, paramEventIri, paramInt2, paramInt3, null);
  }
  
  int getValue(User paramUser)
  {
    return paramUser.getTipOfTheDayCount();
  }
  
  Intent getViewIntent(Context paramContext, User paramUser)
  {
    return ActivityUserTips.a(paramContext, paramUser, ActivityUserTips.class, paramUser.getTipOfTheDayCount());
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.ui.activities.profile.ContributionAwardType.3
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */