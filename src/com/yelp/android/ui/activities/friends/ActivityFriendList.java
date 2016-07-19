package com.yelp.android.ui.activities.friends;

import android.annotation.SuppressLint;
import android.content.Context;
import android.content.Intent;
import android.os.Bundle;
import android.support.v4.app.l;
import android.support.v4.app.o;
import com.yelp.android.analytics.iris.ViewIri;
import com.yelp.android.appdata.AppData;
import com.yelp.android.appdata.webrequests.co;
import com.yelp.android.serializable.User;
import com.yelp.android.ui.activities.support.YelpActivity;

public class ActivityFriendList
  extends YelpActivity
{
  private static String a = "User";
  private static String b = "FRIENDS_LIST_FRAGMENT";
  private FriendsListFragment c;
  
  public static Intent a(Context paramContext, User paramUser)
  {
    paramContext = new Intent(paramContext, ActivityFriendList.class);
    paramContext.putExtra(a, paramUser);
    return paramContext;
  }
  
  public boolean a()
  {
    return getAppData().q().a((User)getIntent().getParcelableExtra(a));
  }
  
  public ViewIri getIri()
  {
    return null;
  }
  
  @SuppressLint({"CommitTransaction"})
  protected void onCreate(Bundle paramBundle)
  {
    super.onCreate(paramBundle);
    paramBundle = (User)getIntent().getParcelableExtra(a);
    if (getAppData().q().a(paramBundle)) {
      setTitle(2131165948);
    }
    for (;;)
    {
      c = ((FriendsListFragment)getSupportFragmentManager().a(b));
      if (c == null)
      {
        c = FriendsListFragment.a(paramBundle);
        getSupportFragmentManager().a().a(2131689997, c, b).a();
      }
      return;
      setTitle(getString(2131166774, new Object[] { paramBundle.Z() }));
    }
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.ui.activities.friends.ActivityFriendList
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */