package com.yelp.android.ui.activities.feed.viewbinder;

import android.content.Context;
import android.content.Intent;
import android.os.Bundle;
import com.yelp.android.analytics.iris.ViewIri;
import com.yelp.android.serializable.EventAttendees;
import com.yelp.android.ui.activities.events.b;
import com.yelp.android.ui.util.ScrollToLoadListView;
import com.yelp.android.ui.util.YelpListActivity;

public class ActivityEventSubscriptions
  extends YelpListActivity
{
  public static Intent a(Context paramContext, EventAttendees paramEventAttendees)
  {
    paramContext = new Intent(paramContext, ActivityEventSubscriptions.class);
    paramContext.putExtra("event_attendees", paramEventAttendees);
    return paramContext;
  }
  
  public ViewIri getIri()
  {
    return null;
  }
  
  public void onCreate(Bundle paramBundle)
  {
    super.onCreate(paramBundle);
    setTitle(2131166008);
    paramBundle = new b((EventAttendees)getIntent().getParcelableExtra("event_attendees"), paramBundle);
    r().setAdapter(paramBundle);
    r().f();
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.ui.activities.feed.viewbinder.ActivityEventSubscriptions
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */