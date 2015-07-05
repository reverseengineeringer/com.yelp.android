package com.yelp.android.ui.activities.profile;

import android.content.Context;
import android.content.Intent;
import com.yelp.android.analytics.iris.EventIri;
import com.yelp.android.serializable.User;

 enum ContributionAwardType$10
{
  ContributionAwardType$10(EventIri paramEventIri, int paramInt2, int paramInt3, boolean paramBoolean1, boolean paramBoolean2)
  {
    super(paramString, paramInt1, paramEventIri, paramInt2, paramInt3, paramBoolean1, paramBoolean2, null);
  }
  
  int getValue(User paramUser)
  {
    return paramUser.getDraftCount();
  }
  
  Intent getViewIntent(Context paramContext, User paramUser)
  {
    return ActivityUserDraftList.a(paramContext, ActivityUserDraftList.class, paramUser.getDraftCount());
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.ui.activities.profile.ContributionAwardType.10
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */