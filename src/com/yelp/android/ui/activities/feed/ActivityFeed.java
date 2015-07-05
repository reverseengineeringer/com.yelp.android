package com.yelp.android.ui.activities.feed;

import android.content.Context;
import android.content.Intent;
import android.os.Bundle;
import android.support.v4.app.FragmentManager;
import android.support.v4.app.FragmentTransaction;
import com.yelp.android.analytics.iris.ViewIri;
import com.yelp.android.appdata.StateBroadcastReceiver;
import com.yelp.android.appdata.ar;
import com.yelp.android.ui.activities.support.YelpActivity;

public class ActivityFeed
  extends YelpActivity
{
  private FeedFragment a;
  private StateBroadcastReceiver b;
  private ar c = new a(this);
  
  public static Intent a(Context paramContext)
  {
    return new Intent(paramContext, ActivityFeed.class);
  }
  
  public ViewIri getIri()
  {
    return ViewIri.FeedFriend;
  }
  
  public void onBackPressed()
  {
    a.e();
    super.onBackPressed();
  }
  
  public void onCreate(Bundle paramBundle)
  {
    super.onCreate(paramBundle);
    a = ((FeedFragment)getSupportFragmentManager().findFragmentById(2131493332));
    if (a == null)
    {
      a = new FeedFragment();
      getSupportFragmentManager().beginTransaction().replace(2131493332, a).commit();
    }
    b = StateBroadcastReceiver.a(this, c);
  }
  
  protected void onDestroy()
  {
    super.onDestroy();
    unregisterReceiver(b);
  }
  
  public void onDrawerItemSelected(Intent paramIntent, String paramString)
  {
    a.e();
    super.onDrawerItemSelected(paramIntent, paramString);
  }
  
  protected void onResume()
  {
    super.onResume();
    setFeedHotButtonSelected(true);
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.ui.activities.feed.ActivityFeed
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */