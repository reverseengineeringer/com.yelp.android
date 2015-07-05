package com.yelp.android.ui.activities.feed;

import android.content.Context;
import android.content.Intent;
import android.os.Bundle;
import android.support.v4.app.FragmentManager;
import android.support.v4.app.FragmentTransaction;
import com.yelp.android.analytics.iris.ViewIri;
import com.yelp.android.appdata.AppData;
import com.yelp.android.appdata.webrequests.dc;
import com.yelp.android.serializable.User;
import com.yelp.android.ui.activities.profile.SingleCurrentUserFeedEntryFragment;
import com.yelp.android.ui.activities.profile.SingleCurrentUserFeedEntryFragment.FeedFragmentType;
import com.yelp.android.ui.activities.support.YelpActivity;

public class SingleFeedFragmentActivity
  extends YelpActivity
{
  private SingleCurrentUserFeedEntryFragment a;
  
  public static Intent a(Context paramContext, User paramUser, int paramInt, SingleCurrentUserFeedEntryFragment.FeedFragmentType paramFeedFragmentType)
  {
    paramContext = new Intent(paramContext, SingleFeedFragmentActivity.class);
    paramContext.putExtra("user", paramUser);
    paramContext.putExtra("total", paramInt);
    paramContext.putExtra("feed_type", paramFeedFragmentType);
    return paramContext;
  }
  
  private SingleCurrentUserFeedEntryFragment a(SingleCurrentUserFeedEntryFragment.FeedFragmentType paramFeedFragmentType, User paramUser, int paramInt)
  {
    switch (bf.a[paramFeedFragmentType.ordinal()])
    {
    default: 
      return null;
    }
    return UserReviewsFragment.a(paramUser, paramInt);
  }
  
  public boolean a()
  {
    return getAppData().m().a((User)getIntent().getParcelableExtra("user"));
  }
  
  public ViewIri getIri()
  {
    return null;
  }
  
  public void onCreate(Bundle paramBundle)
  {
    super.onCreate(paramBundle);
    paramBundle = (User)getIntent().getParcelableExtra("user");
    int i = getIntent().getIntExtra("total", 0);
    a = ((SingleCurrentUserFeedEntryFragment)getSupportFragmentManager().findFragmentByTag("single_feed_fragment"));
    if (a == null)
    {
      a = a((SingleCurrentUserFeedEntryFragment.FeedFragmentType)getIntent().getSerializableExtra("feed_type"), paramBundle, i);
      getSupportFragmentManager().beginTransaction().add(2131493332, a, "single_feed_fragment").commit();
    }
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.ui.activities.feed.SingleFeedFragmentActivity
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */