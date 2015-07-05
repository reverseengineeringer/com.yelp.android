package com.yelp.android.ui.activities.friends;

import android.content.Context;
import android.content.Intent;
import android.os.Bundle;
import android.support.v4.app.FragmentManager;
import android.support.v4.app.FragmentTransaction;
import com.yelp.android.analytics.iris.ViewIri;
import com.yelp.android.appdata.AppData;
import com.yelp.android.appdata.webrequests.dc;
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
    return getAppData().m().a((User)getIntent().getParcelableExtra(a));
  }
  
  public ViewIri getIri()
  {
    return null;
  }
  
  protected void onCreate(Bundle paramBundle)
  {
    super.onCreate(paramBundle);
    paramBundle = (User)getIntent().getParcelableExtra(a);
    if (getAppData().m().a(paramBundle)) {
      setTitle(2131165871);
    }
    for (;;)
    {
      c = ((FriendsListFragment)getSupportFragmentManager().findFragmentByTag(b));
      if (c == null)
      {
        c = FriendsListFragment.a(paramBundle);
        getSupportFragmentManager().beginTransaction().add(2131493332, c, b).commit();
      }
      return;
      setTitle(getString(2131166808, new Object[] { paramBundle.getFirstName() }));
    }
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.ui.activities.friends.ActivityFriendList
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */