package com.yelp.android.ui.activities;

import android.os.Bundle;
import android.util.Log;
import com.yelp.android.analytics.iris.ViewIri;
import com.yelp.android.ui.activities.support.YelpActivity;

class cd
  extends YelpActivity
{
  public ViewIri getIri()
  {
    return null;
  }
  
  public void onCreate(Bundle paramBundle)
  {
    Log.d("ActivityCrashImmediately", "Oh man I am just going to crash");
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.ui.activities.cd
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */