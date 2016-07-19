package com.yelp.android.ui.activities.feed;

import android.content.Context;
import android.content.Intent;
import android.os.Bundle;
import android.support.v4.app.l;
import android.support.v4.app.o;
import android.view.Window;
import com.yelp.android.analytics.iris.ViewIri;
import com.yelp.android.appdata.StateBroadcastReceiver;
import com.yelp.android.appdata.StateBroadcastReceiver.a;
import com.yelp.android.ui.activities.support.YelpActivity;
import com.yelp.android.ui.util.ScrollToLoadListView;

public class ActivityFeed
  extends YelpActivity
{
  private FeedFragment a;
  private StateBroadcastReceiver b;
  private StateBroadcastReceiver.a c = new StateBroadcastReceiver.a()
  {
    public void a(Context paramAnonymousContext) {}
    
    public void b(Context paramAnonymousContext)
    {
      ActivityFeed.a(ActivityFeed.this).B_();
    }
  };
  
  public static Intent a(Context paramContext)
  {
    return new Intent(paramContext, ActivityFeed.class);
  }
  
  public ViewIri getIri()
  {
    return null;
  }
  
  protected void onActivityResult(int paramInt1, int paramInt2, Intent paramIntent)
  {
    super.onActivityResult(paramInt1, paramInt2, paramIntent);
    a.onActivityResult(paramInt1, paramInt2, paramIntent);
  }
  
  public void onBackPressed()
  {
    a.B_();
    super.onBackPressed();
  }
  
  public void onCreate(Bundle paramBundle)
  {
    super.onCreate(paramBundle);
    a = ((FeedFragment)getSupportFragmentManager().a(2131689997));
    if (a == null)
    {
      a = new FeedFragment();
      getSupportFragmentManager().a().b(2131689997, a).a();
    }
    b = StateBroadcastReceiver.a(this, c);
    removeToolbarElevation();
    getWindow().setBackgroundDrawable(null);
  }
  
  protected void onDestroy()
  {
    super.onDestroy();
    unregisterReceiver(b);
  }
  
  public void onDrawerItemSelected(Intent paramIntent, String paramString)
  {
    a.B_();
    super.onDrawerItemSelected(paramIntent, paramString);
  }
  
  protected void onResume()
  {
    super.onResume();
    setFeedHotButtonSelected(true);
  }
  
  protected void onSameActivityHotButtonClick()
  {
    a.m().b(true);
    a.h();
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.ui.activities.feed.ActivityFeed
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */