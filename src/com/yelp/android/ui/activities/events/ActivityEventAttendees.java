package com.yelp.android.ui.activities.events;

import android.content.Context;
import android.content.Intent;
import android.os.Bundle;
import android.support.v4.app.l;
import android.support.v4.app.o;
import com.yelp.android.analytics.iris.ViewIri;
import com.yelp.android.serializable.Event;
import com.yelp.android.serializable.EventAttendees;
import com.yelp.android.ui.activities.support.YelpActivity;

public class ActivityEventAttendees
  extends YelpActivity
{
  public static Intent a(Context paramContext, Event paramEvent, EventAttendees paramEventAttendees)
  {
    paramContext = new Intent(paramContext, ActivityEventAttendees.class);
    paramContext.putExtra("event", paramEvent);
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
    if ((EventAttendeesFragment)getSupportFragmentManager().a(2131689997) == null)
    {
      paramBundle = EventAttendeesFragment.a((Event)getIntent().getParcelableExtra("event"), (EventAttendees)getIntent().getParcelableExtra("event_attendees"));
      getSupportFragmentManager().a().b(2131689997, paramBundle).a();
    }
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.ui.activities.events.ActivityEventAttendees
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */