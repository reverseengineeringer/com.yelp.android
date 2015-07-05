package com.yelp.android.ui.activities.profile;

import android.content.Context;
import android.content.Intent;
import com.yelp.android.analytics.iris.EventIri;
import com.yelp.android.serializable.User;

 enum ContributionAwardType$2
{
  ContributionAwardType$2(EventIri paramEventIri, int paramInt2, int paramInt3)
  {
    super(paramString, paramInt1, paramEventIri, paramInt2, paramInt3, null);
  }
  
  int getValue(User paramUser)
  {
    return paramUser.getFirstToTipCount() + paramUser.getFirstToReviewCount();
  }
  
  Intent getViewIntent(Context paramContext, User paramUser)
  {
    return ActivityFirstAwards.a(paramContext, paramUser);
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.ui.activities.profile.ContributionAwardType.2
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */