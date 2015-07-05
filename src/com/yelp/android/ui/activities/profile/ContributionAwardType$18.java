package com.yelp.android.ui.activities.profile;

import android.content.Context;
import android.content.Intent;
import com.yelp.android.analytics.iris.EventIri;
import com.yelp.android.serializable.User;
import com.yelp.android.ui.activities.events.ActivityEvents;

 enum ContributionAwardType$18
{
  ContributionAwardType$18(EventIri paramEventIri, int paramInt2, int paramInt3)
  {
    super(paramString, paramInt1, paramEventIri, paramInt2, paramInt3, null);
  }
  
  int getValue(User paramUser)
  {
    return paramUser.getSubscribedEventsCount();
  }
  
  Intent getViewIntent(Context paramContext, User paramUser)
  {
    return ActivityEvents.a(paramContext);
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.ui.activities.profile.ContributionAwardType.18
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */