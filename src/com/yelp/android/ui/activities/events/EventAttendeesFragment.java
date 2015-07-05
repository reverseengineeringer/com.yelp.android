package com.yelp.android.ui.activities.events;

import android.os.Bundle;
import android.view.View;
import android.widget.ListView;
import com.yelp.android.analytics.iris.EventIri;
import com.yelp.android.analytics.iris.ViewIri;
import com.yelp.android.analytics.iris.b;
import com.yelp.android.appdata.AppData;
import com.yelp.android.appdata.webrequests.bu;
import com.yelp.android.appdata.webrequests.m;
import com.yelp.android.serializable.Event;
import com.yelp.android.serializable.EventAttendees;
import com.yelp.android.serializable.User;
import com.yelp.android.ui.activities.profile.ActivityUserProfile;
import com.yelp.android.ui.activities.support.YelpListFragment;
import com.yelp.android.ui.util.ScrollToLoadListView;
import java.util.List;

public class EventAttendeesFragment
  extends YelpListFragment
{
  private Event a;
  private EventAttendees b;
  private e c;
  private bu d;
  private final m<List<User>> e = new g(this);
  
  public static EventAttendeesFragment a(Event paramEvent, EventAttendees paramEventAttendees)
  {
    EventAttendeesFragment localEventAttendeesFragment = new EventAttendeesFragment();
    Bundle localBundle = new Bundle();
    localBundle.putParcelable("event", paramEvent);
    localBundle.putParcelable("event_attendees", paramEventAttendees);
    localEventAttendeesFragment.setArguments(localBundle);
    return localEventAttendeesFragment;
  }
  
  private void a(Bundle paramBundle)
  {
    c = new e(b, paramBundle);
    a(c);
    a(c.c());
    if (!c.c()) {
      m().setOnLoadNeeded(new f(this));
    }
  }
  
  public void a(ListView paramListView, View paramView, int paramInt, long paramLong)
  {
    paramListView = c.a(paramInt);
    if (paramListView != null)
    {
      AppData.a(EventIri.EventUser, "event_id", a.getId());
      startActivity(ActivityUserProfile.a(AppData.b(), paramListView));
    }
  }
  
  public b getIri()
  {
    return ViewIri.EventAttendees;
  }
  
  public void onActivityCreated(Bundle paramBundle)
  {
    super.onActivityCreated(paramBundle);
    a(paramBundle);
  }
  
  public void onCreate(Bundle paramBundle)
  {
    super.onCreate(paramBundle);
    a = ((Event)getArguments().getParcelable("event"));
    b = ((EventAttendees)getArguments().getParcelable("event_attendees"));
  }
  
  public void onPause()
  {
    super.onPause();
    a("event_more_attendees_request", d);
  }
  
  public void onResume()
  {
    super.onResume();
    d = ((bu)a("event_more_attendees_request", null, e));
  }
  
  public void onSaveInstanceState(Bundle paramBundle)
  {
    super.onSaveInstanceState(paramBundle);
    c.a(paramBundle);
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.ui.activities.events.EventAttendeesFragment
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */