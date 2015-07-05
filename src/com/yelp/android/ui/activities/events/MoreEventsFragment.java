package com.yelp.android.ui.activities.events;

import android.os.Bundle;
import android.view.View;
import android.widget.ListView;
import com.yelp.android.analytics.iris.ViewIri;
import com.yelp.android.appdata.webrequests.by;
import com.yelp.android.appdata.webrequests.bz;
import com.yelp.android.appdata.webrequests.j;
import com.yelp.android.serializable.EventSection;
import com.yelp.android.ui.activities.support.YelpListFragment;
import com.yelp.android.ui.util.ScrollToLoadListView;
import com.yelp.android.ui.util.bs;
import com.yelp.android.ui.util.bw;
import com.yelp.android.util.ErrorType;
import java.util.HashMap;
import java.util.Map;

public class MoreEventsFragment
  extends YelpListFragment
{
  private by a;
  private b b;
  private EventSection c;
  private final j<bz> d = new ax(this);
  
  public static MoreEventsFragment a(EventSection paramEventSection)
  {
    MoreEventsFragment localMoreEventsFragment = new MoreEventsFragment();
    Bundle localBundle = new Bundle();
    localBundle.putParcelable("events_section", paramEventSection);
    localMoreEventsFragment.setArguments(localBundle);
    return localMoreEventsFragment;
  }
  
  public void a(ListView paramListView, View paramView, int paramInt, long paramLong)
  {
    super.a(paramListView, paramView, paramInt, paramLong);
    startActivity(ActivityEventPage.a(getActivity(), b.a(paramInt), c.getAlias()));
  }
  
  protected void b()
  {
    if ((a != null) && (a.isFetching())) {}
    do
    {
      return;
      a = new by(c.getAlias(), p(), 20, d);
      a.executeWithLocation(new Void[0]);
    } while (!b.isEmpty());
    i_();
  }
  
  public com.yelp.android.analytics.iris.b getIri()
  {
    return ViewIri.EventsSection;
  }
  
  public Map<String, Object> getParametersForIri(com.yelp.android.analytics.iris.b paramb)
  {
    paramb = new HashMap();
    paramb.put("section_alias", c.getAlias());
    return paramb;
  }
  
  public void onActivityCreated(Bundle paramBundle)
  {
    super.onActivityCreated(paramBundle);
    c = ((EventSection)getArguments().getParcelable("events_section"));
    b = new b(paramBundle, this);
    b.a(c.getEvents());
    b.notifyDataSetChanged();
    b(b.getCount());
    paramBundle = new bs();
    paramBundle.a(0, bw.a("", b).a(2131493812, 0, 0).a());
    a(paramBundle);
    if ((m().g()) || (b.getCount() == c.getTotal()))
    {
      a(true);
      if (b.isEmpty()) {
        a(ErrorType.NO_EVENTS);
      }
    }
    b("com.yelp.android.events.update", new aw(this));
  }
  
  public void onPause()
  {
    super.onPause();
    a("subscribed_events_request", a);
  }
  
  public void onResume()
  {
    super.onResume();
    a = ((by)a("subscribed_events_request", a, d));
    if ((a != null) && (a.isFetching())) {
      i_();
    }
  }
  
  public void onSaveInstanceState(Bundle paramBundle)
  {
    super.onSaveInstanceState(paramBundle);
    b.a(paramBundle);
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.ui.activities.events.MoreEventsFragment
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */