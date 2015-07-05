package com.yelp.android.ui.activities.profile;

import android.content.Context;
import android.content.Intent;
import com.yelp.android.analytics.iris.EventIri;
import com.yelp.android.serializable.RankTitle.Rank;
import com.yelp.android.serializable.User;
import com.yelp.android.ui.activities.ActivityRankedBusinesses;

 enum ContributionAwardType$4
{
  ContributionAwardType$4(EventIri paramEventIri, int paramInt2, int paramInt3)
  {
    super(paramString, paramInt1, paramEventIri, paramInt2, paramInt3, null);
  }
  
  int getValue(User paramUser)
  {
    return paramUser.getLocationCount(RankTitle.Rank.TOP_CITY_USER);
  }
  
  Intent getViewIntent(Context paramContext, User paramUser)
  {
    return ActivityRankedBusinesses.a(paramContext, RankTitle.Rank.TOP_CITY_USER, paramUser);
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.ui.activities.profile.ContributionAwardType.4
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */