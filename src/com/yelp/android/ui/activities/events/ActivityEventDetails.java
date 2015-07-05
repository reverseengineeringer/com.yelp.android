package com.yelp.android.ui.activities.events;

import android.content.Context;
import android.content.Intent;
import android.os.Bundle;
import android.support.v4.app.FragmentManager;
import android.support.v4.app.FragmentTransaction;
import com.yelp.android.analytics.iris.ViewIri;
import com.yelp.android.serializable.Event;
import com.yelp.android.ui.activities.support.YelpActivity;

public class ActivityEventDetails
  extends YelpActivity
{
  public static Intent a(Context paramContext, Event paramEvent)
  {
    paramContext = new Intent(paramContext, ActivityEventDetails.class);
    paramContext.putExtra("extra.event", paramEvent);
    return paramContext;
  }
  
  public ViewIri getIri()
  {
    return null;
  }
  
  protected void onCreate(Bundle paramBundle)
  {
    super.onCreate(paramBundle);
    if ((EventDetailFragment)getSupportFragmentManager().findFragmentById(2131493332) == null)
    {
      paramBundle = EventDetailFragment.a((Event)getIntent().getParcelableExtra("extra.event"));
      getSupportFragmentManager().beginTransaction().replace(2131493332, paramBundle).commit();
    }
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.ui.activities.events.ActivityEventDetails
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */