package com.yelp.android.ui.activities.events;

import android.app.Activity;
import android.os.Bundle;
import android.view.View;
import android.widget.ListAdapter;
import android.widget.ListView;
import com.yelp.android.analytics.iris.ViewIri;
import com.yelp.android.appdata.ao;
import com.yelp.android.appdata.webrequests.ApiRequest;
import com.yelp.android.appdata.webrequests.YelpException;
import com.yelp.android.appdata.webrequests.ca;
import com.yelp.android.appdata.webrequests.j;
import com.yelp.android.serializable.Event;
import com.yelp.android.serializable.EventSection;
import com.yelp.android.ui.activities.support.YelpListFragment;
import com.yelp.android.ui.activities.support.o;
import com.yelp.android.ui.dialogs.LocationSettingsDialog;
import com.yelp.android.ui.panels.aa;
import com.yelp.android.ui.util.bs;
import com.yelp.android.ui.util.bw;
import com.yelp.android.util.ErrorType;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

public class EventsFragment
  extends YelpListFragment
{
  private ca a;
  private boolean b;
  private av c;
  private bs d;
  private List<b> e;
  private YelpException g;
  private final aa h = new as(this);
  private final o i = new at(this);
  private final j<List<EventSection>> j = new au(this);
  
  private EventSection a(Event paramEvent)
  {
    Iterator localIterator = e.iterator();
    EventSection localEventSection = null;
    if (localIterator.hasNext())
    {
      b localb = (b)localIterator.next();
      int k = 0;
      label37:
      if (k < localb.getCount()) {
        if (paramEvent.equals(localb.a(k))) {
          localEventSection = localb.b();
        }
      }
      for (;;)
      {
        if (localEventSection != null)
        {
          return localEventSection;
          k += 1;
          break label37;
        }
        break;
      }
    }
    return localEventSection;
  }
  
  private void a(List<EventSection> paramList)
  {
    if ((paramList == null) || (paramList.isEmpty()))
    {
      a(null);
      a(ErrorType.NO_EVENTS);
      return;
    }
    d = new bs();
    e = new ArrayList();
    int k = 0;
    if (k < paramList.size())
    {
      EventSection localEventSection = (EventSection)paramList.get(k);
      b localb = new b(localEventSection, this);
      e.add(localb);
      if (k == paramList.size() - 1) {}
      for (int m = 0;; m = ao.c)
      {
        d.a(localEventSection.getAlias().hashCode(), bw.a(localEventSection.getHeader(), localb).a(2130772319).a(2131493812, 0, m).a());
        localb.a(localEventSection.getEvents());
        localb.notifyDataSetChanged();
        k += 1;
        break;
      }
    }
    a(d);
  }
  
  private void b(ErrorType paramErrorType)
  {
    j();
    a(paramErrorType, h);
    if (paramErrorType == ErrorType.LOCATION_SERVICES_DISABLED)
    {
      paramErrorType = LocationSettingsDialog.a(false, 2131166173);
      paramErrorType.a(i);
      paramErrorType.show(getFragmentManager(), null);
    }
  }
  
  private void e()
  {
    if (!ApiRequest.isCompleted(new ApiRequest[] { a })) {
      return;
    }
    i_();
    a = new ca(j);
    a.setLocationTimeout(2000L);
    a.executeWithLocation(new Void[0]);
  }
  
  public void a(ListView paramListView, View paramView, int paramInt, long paramLong)
  {
    super.a(paramListView, paramView, paramInt, paramLong);
    paramListView = (Event)paramListView.getAdapter().getItem(paramInt);
    if (paramListView.getTimeStart() == 0L)
    {
      paramView = e.iterator();
      while (paramView.hasNext())
      {
        EventSection localEventSection = ((b)paramView.next()).b();
        if (localEventSection.getAlias().equals(paramListView.getId())) {
          c.a(localEventSection);
        }
      }
    }
    do
    {
      return;
      paramView = a(paramListView);
    } while (paramView == null);
    startActivity(ActivityEventPage.a(getActivity(), paramListView, paramView.getAlias()));
  }
  
  public com.yelp.android.analytics.iris.b getIri()
  {
    return ViewIri.EventsSections;
  }
  
  public void onActivityCreated(Bundle paramBundle)
  {
    super.onActivityCreated(paramBundle);
    a(true);
    if (paramBundle == null) {
      e();
    }
    for (;;)
    {
      b("com.yelp.android.events.update", new ar(this));
      return;
      b = paramBundle.getBoolean("request_finished", false);
      g = ((YelpException)paramBundle.getParcelable("saved_error"));
      if (!b) {
        i_();
      } else if (g != null) {
        a(g, h);
      } else {
        a(paramBundle.getParcelableArrayList("saved_event_sections"));
      }
    }
  }
  
  public void onAttach(Activity paramActivity)
  {
    try
    {
      c = ((av)paramActivity);
      super.onAttach(paramActivity);
      return;
    }
    catch (ClassCastException paramActivity)
    {
      throw new ClassCastException("The corresponding activity must implement the ActivityListener interface");
    }
  }
  
  public void onPause()
  {
    super.onPause();
    a("my_events_request_tag", a);
  }
  
  public void onResume()
  {
    super.onResume();
    a = ((ca)a("my_events_request_tag", a, j));
  }
  
  public void onSaveInstanceState(Bundle paramBundle)
  {
    super.onSaveInstanceState(paramBundle);
    if (e != null)
    {
      ArrayList localArrayList = new ArrayList();
      Iterator localIterator = e.iterator();
      while (localIterator.hasNext())
      {
        b localb = (b)localIterator.next();
        localb.a(paramBundle);
        localArrayList.add(localb.b());
      }
      paramBundle.putParcelableArrayList("saved_event_sections", localArrayList);
    }
    paramBundle.putBoolean("request_finished", b);
    paramBundle.putParcelable("saved_error", g);
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.ui.activities.events.EventsFragment
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */