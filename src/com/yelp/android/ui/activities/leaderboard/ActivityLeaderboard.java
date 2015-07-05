package com.yelp.android.ui.activities.leaderboard;

import android.content.Context;
import android.content.Intent;
import android.os.Bundle;
import android.support.v4.app.FragmentTabHost;
import android.view.LayoutInflater;
import android.view.View;
import android.widget.Button;
import android.widget.TabHost.OnTabChangeListener;
import android.widget.TabHost.TabSpec;
import com.yelp.android.analytics.iris.ViewIri;
import com.yelp.android.ui.activities.support.YelpTabActivity;

public class ActivityLeaderboard
  extends YelpTabActivity
{
  private TabHost.OnTabChangeListener a = new a(this);
  
  public static Intent a(Context paramContext, ActivityLeaderboard.LeaderboardType paramLeaderboardType)
  {
    paramContext = new Intent(paramContext, ActivityLeaderboard.class);
    paramContext.putExtra("extra.leaderboard_type", paramLeaderboardType);
    return paramContext;
  }
  
  protected Button a()
  {
    return (Button)getLayoutInflater().inflate(2130903443, c().getTabWidget(), false);
  }
  
  public ViewIri getIri()
  {
    return ViewIri.CheckInsWeekRankings;
  }
  
  public void onCreate(Bundle paramBundle)
  {
    super.onCreate(paramBundle);
    paramBundle = c();
    Object localObject = a();
    ((Button)localObject).setText(2131166003);
    paramBundle.addTab(paramBundle.newTabSpec("week_rank").setIndicator((View)localObject), WeekRankFragment.class, null);
    localObject = a();
    ((Button)localObject).setText(2131166002);
    paramBundle.addTab(paramBundle.newTabSpec("friends_rank").setIndicator((View)localObject), FriendsRankFragment.class, null);
    localObject = a();
    ((Button)localObject).setText(2131166004);
    paramBundle.addTab(paramBundle.newTabSpec("royalty_rank").setIndicator((View)localObject), RoyaltyFragment.class, null);
    paramBundle.setOnTabChangedListener(a);
    localObject = (ActivityLeaderboard.LeaderboardType)getIntent().getSerializableExtra("extra.leaderboard_type");
    switch (b.a[localObject.ordinal()])
    {
    default: 
      return;
    case 1: 
      paramBundle.setCurrentTabByTag("week_rank");
      return;
    case 2: 
      paramBundle.setCurrentTabByTag("friends_rank");
      return;
    }
    paramBundle.setCurrentTabByTag("royalty_rank");
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.ui.activities.leaderboard.ActivityLeaderboard
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */