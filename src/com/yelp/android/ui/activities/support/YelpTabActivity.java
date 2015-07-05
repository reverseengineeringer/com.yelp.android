package com.yelp.android.ui.activities.support;

import android.os.Bundle;
import android.support.v4.app.FragmentTabHost;

public abstract class YelpTabActivity
  extends YelpActivity
{
  private FragmentTabHost a;
  
  public FragmentTabHost c()
  {
    return a;
  }
  
  public void onCreate(Bundle paramBundle)
  {
    initHelper();
    getHelper().a(paramBundle);
    super.onCreate(paramBundle);
    removeToolbarElevation();
    setContentView(2130903228);
    a = ((FragmentTabHost)findViewById(16908306));
    a.setup(this, getSupportFragmentManager(), 16908305);
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.ui.activities.support.YelpTabActivity
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */