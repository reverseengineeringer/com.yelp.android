package com.yelp.android.ui.activities.profile;

import android.content.Context;
import android.content.Intent;
import com.yelp.android.analytics.iris.EventIri;
import com.yelp.android.serializable.User;
import com.yelp.android.ui.activities.feed.SingleFeedFragmentActivity;

 enum ContributionAwardType$11
{
  ContributionAwardType$11(EventIri paramEventIri, int paramInt2, int paramInt3)
  {
    super(paramString, paramInt1, paramEventIri, paramInt2, paramInt3, null);
  }
  
  int getValue(User paramUser)
  {
    return paramUser.getReviewCount();
  }
  
  Intent getViewIntent(Context paramContext, User paramUser)
  {
    return SingleFeedFragmentActivity.a(paramContext, paramUser, paramUser.getReviewCount(), SingleCurrentUserFeedEntryFragment.FeedFragmentType.Review);
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.ui.activities.profile.ContributionAwardType.11
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */