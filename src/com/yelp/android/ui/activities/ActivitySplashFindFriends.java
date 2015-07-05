package com.yelp.android.ui.activities;

import android.content.Intent;
import android.os.Bundle;
import com.yelp.android.analytics.iris.ViewIri;
import com.yelp.android.ui.activities.support.YelpActivity;
import com.yelp.android.ui.widgets.SplashScreen;

public class ActivitySplashFindFriends
  extends YelpActivity
{
  SplashScreen a;
  
  public ViewIri getIri()
  {
    return ViewIri.FriendFinderSplash;
  }
  
  protected void onActivityResult(int paramInt1, int paramInt2, Intent paramIntent)
  {
    super.onActivityResult(paramInt1, paramInt2, paramIntent);
    if (paramInt1 == 100)
    {
      setResult(-1);
      finish();
    }
  }
  
  public void onCreate(Bundle paramBundle)
  {
    super.onCreate(paramBundle);
    a = new SplashScreen(this);
    setContentView(a);
    a.setTitleMessage(2131165857);
    a.setTopButtonText(2131166905);
    a.setBottomButtonText(2131166207);
    a.setSubMessage("");
    a.setTopButtonOnClickListener(new dy(this));
    a.setBottomButtonOnClickListener(new dz(this));
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.ui.activities.ActivitySplashFindFriends
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */