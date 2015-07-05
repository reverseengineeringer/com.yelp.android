package com.yelp.android.ui.activities.profile;

import android.content.Context;
import android.content.Intent;
import com.yelp.android.analytics.iris.EventIri;
import com.yelp.android.appdata.BusinessContributionType;
import com.yelp.android.serializable.User;
import com.yelp.android.ui.activities.ActivityContributionSearch;

 enum ActionToTry$3
{
  ActionToTry$3(int paramInt2, int paramInt3, EventIri paramEventIri)
  {
    super(paramString, paramInt1, paramInt2, paramInt3, paramEventIri, null);
  }
  
  Intent intentToStartAction(Context paramContext, User paramUser)
  {
    return ActivityContributionSearch.a(paramContext, BusinessContributionType.BUSINESS_PHOTO);
  }
  
  boolean shouldTry(User paramUser)
  {
    return paramUser.getLocalPhotoCount() == 0;
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.ui.activities.profile.ActionToTry.3
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */