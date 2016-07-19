package com.yelp.android.ui.activities.events;

import android.app.Activity;
import android.os.Bundle;
import android.view.View;
import android.widget.ListAdapter;
import android.widget.ListView;
import com.yelp.android.analytics.iris.ViewIri;
import com.yelp.android.appdata.AppData;
import com.yelp.android.appdata.PermissionGroup;
import com.yelp.android.appdata.k;
import com.yelp.android.appdata.n;
import com.yelp.android.appdata.webrequests.ApiRequest;
import com.yelp.android.appdata.webrequests.YelpException;
import com.yelp.android.appdata.webrequests.bs;
import com.yelp.android.appdata.webrequests.k.b;
import com.yelp.android.serializable.Event;
import com.yelp.android.serializable.EventSection;
import com.yelp.android.ui.activities.support.YelpListFragment;
import com.yelp.android.ui.activities.support.b.e;
import com.yelp.android.ui.dialogs.LocationSettingsDialog;
import com.yelp.android.ui.panels.PanelError.a;
import com.yelp.android.ui.util.aj;
import com.yelp.android.ui.util.aj.c;
import com.yelp.android.util.ErrorType;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.Map;

public class EventsFragment
  extends YelpListFragment
{
  private bs a;
  private boolean b;
  private a c;
  private aj d;
  private List<a> e;
  private YelpException f;
  private final PanelError.a g = new EventsFragment.2(this);
  private final b.e i = new EventsFragment.3(this);
  private final k.b<List<EventSection>> j = new EventsFragment.4(this);
  
  private EventSection a(Event paramEvent)
  {
    Iterator localIterator = e.iterator();
    EventSection localEventSection = null;
    if (localIterator.hasNext())
    {
      a locala = (a)localIterator.next();
      int k = 0;
      label37:
      if (k < locala.getCount()) {
        if (paramEvent.equals(locala.a(k))) {
          localEventSection = locala.b();
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
    d = new aj();
    e = new ArrayList();
    int k = 0;
    if (k < paramList.size())
    {
      EventSection localEventSection = (EventSection)paramList.get(k);
      a locala = new a(localEventSection, this);
      e.add(locala);
      if (k == paramList.size() - 1) {}
      for (int m = 0;; m = n.c)
      {
        d.a(localEventSection.d().hashCode(), aj.c.a(localEventSection.c(), locala).a(2130772429).a(2131690463, 0, m).b());
        locala.a(localEventSection.e());
        locala.notifyDataSetChanged();
        k += 1;
        break;
      }
    }
    a(d);
  }
  
  private void b(ErrorType paramErrorType)
  {
    l();
    a(paramErrorType, g);
    if (paramErrorType == ErrorType.LOCATION_SERVICES_DISABLED)
    {
      paramErrorType = LocationSettingsDialog.a(false, 2131166913);
      paramErrorType.a(i);
      paramErrorType.show(getFragmentManager(), null);
    }
  }
  
  private void f()
  {
    if (!ApiRequest.a(new ApiRequest[] { a })) {
      return;
    }
    H_();
    a = new bs(j);
    a.a(2000L);
    a.a(new Void[0]);
  }
  
  private void g()
  {
    a = null;
    z();
    f();
  }
  
  public void a(ListView paramListView, View paramView, int paramInt, long paramLong)
  {
    super.a(paramListView, paramView, paramInt, paramLong);
    paramListView = (Event)paramListView.getAdapter().getItem(paramInt);
    if (paramListView.l() == 0L)
    {
      paramView = e.iterator();
      while (paramView.hasNext())
      {
        EventSection localEventSection = ((a)paramView.next()).b();
        if (localEventSection.d().equals(paramListView.I())) {
          c.a(localEventSection);
        }
      }
    }
    do
    {
      return;
      paramView = a(paramListView);
    } while (paramView == null);
    startActivity(ActivityEventPage.a(getActivity(), paramListView, paramView.d()));
  }
  
  public com.yelp.android.analytics.iris.a getIri()
  {
    return ViewIri.EventsSections;
  }
  
  public void onActivityCreated(Bundle paramBundle)
  {
    super.onActivityCreated(paramBundle);
    b(true);
    if (paramBundle == null) {
      f();
    }
    for (;;)
    {
      b("com.yelp.android.events.update", new EventsFragment.1(this));
      return;
      b = paramBundle.getBoolean("request_finished", false);
      f = ((YelpException)paramBundle.getParcelable("saved_error"));
      if (!b) {
        H_();
      } else if (f != null) {
        a(f, g);
      } else {
        a(paramBundle.getParcelableArrayList("saved_event_sections"));
      }
    }
  }
  
  public void onAttach(Activity paramActivity)
  {
    try
    {
      c = ((a)paramActivity);
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
  
  public void onRequestPermissionsResult(int paramInt, String[] paramArrayOfString, int[] paramArrayOfInt)
  {
    if (250 == paramInt)
    {
      paramArrayOfString = k.a(paramArrayOfString, paramArrayOfInt);
      if ((paramArrayOfString.containsKey(PermissionGroup.LOCATION)) && (((Boolean)paramArrayOfString.get(PermissionGroup.LOCATION)).booleanValue()))
      {
        AppData.b().F();
        g();
      }
      return;
    }
    super.onRequestPermissionsResult(paramInt, paramArrayOfString, paramArrayOfInt);
  }
  
  public void onResume()
  {
    super.onResume();
    a = ((bs)a("my_events_request_tag", a, j));
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
        a locala = (a)localIterator.next();
        locala.a(paramBundle);
        localArrayList.add(locala.b());
      }
      paramBundle.putParcelableArrayList("saved_event_sections", localArrayList);
    }
    paramBundle.putBoolean("request_finished", b);
    paramBundle.putParcelable("saved_error", f);
  }
  
  public static abstract interface a
  {
    public abstract void a(EventSection paramEventSection);
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.ui.activities.events.EventsFragment
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */