package com.yelp.android.debug;

import android.os.Bundle;
import android.support.v4.app.FragmentManager;
import android.support.v4.app.FragmentTransaction;
import com.yelp.android.analytics.iris.ViewIri;
import com.yelp.android.ui.activities.support.YelpActivity;

public class FreezerFragmentDebugActivity
  extends YelpActivity
{
  public ViewIri getIri()
  {
    return null;
  }
  
  public void onCreate(Bundle paramBundle)
  {
    super.onCreate(paramBundle);
    if (getSupportFragmentManager().findFragmentByTag("DEBUG_FRAGMENT") == null) {
      getSupportFragmentManager().beginTransaction().replace(2131493332, new FreezerFragmentDebugFragment(), "DEBUG_FRAGMENT").commit();
    }
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.debug.FreezerFragmentDebugActivity
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */