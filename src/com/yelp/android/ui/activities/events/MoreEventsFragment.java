package com.yelp.android.ui.activities.events;

import android.os.Bundle;
import android.view.View;
import android.widget.ListView;
import com.yelp.android.analytics.iris.ViewIri;
import com.yelp.android.appdata.webrequests.br;
import com.yelp.android.appdata.webrequests.br.a;
import com.yelp.android.appdata.webrequests.k.b;
import com.yelp.android.serializable.EventSection;
import com.yelp.android.ui.activities.support.YelpListFragment;
import com.yelp.android.ui.util.ScrollToLoadListView;
import com.yelp.android.ui.util.aj;
import com.yelp.android.ui.util.aj.c;
import com.yelp.android.util.ErrorType;
import java.util.HashMap;
import java.util.Map;

public class MoreEventsFragment
  extends YelpListFragment
{
  private br a;
  private a b;
  private EventSection c;
  private final k.b<br.a> d = new MoreEventsFragment.2(this);
  
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
    startActivity(ActivityEventPage.a(getActivity(), b.a(paramInt), c.d()));
  }
  
  protected void b()
  {
    if ((a != null) && (a.u())) {}
    do
    {
      return;
      a = new br(c.d(), p(), 20, d);
      a.a(new Void[0]);
    } while (!b.isEmpty());
    H_();
  }
  
  public com.yelp.android.analytics.iris.a getIri()
  {
    return ViewIri.EventsSection;
  }
  
  public Map<String, Object> getParametersForIri(com.yelp.android.analytics.iris.a parama)
  {
    parama = new HashMap();
    parama.put("section_alias", c.d());
    return parama;
  }
  
  public void onActivityCreated(Bundle paramBundle)
  {
    super.onActivityCreated(paramBundle);
    c = ((EventSection)getArguments().getParcelable("events_section"));
    b = new a(paramBundle, this);
    b.a(c.e());
    b.notifyDataSetChanged();
    b(b.getCount());
    paramBundle = new aj();
    paramBundle.a(0, aj.c.a("", b).a(2131690463, 0, 0).b());
    a(paramBundle);
    if ((m().g()) || (b.getCount() == c.b()))
    {
      b(true);
      if (b.isEmpty()) {
        a(ErrorType.NO_EVENTS);
      }
    }
    b("com.yelp.android.events.update", new MoreEventsFragment.1(this));
  }
  
  public void onPause()
  {
    super.onPause();
    a("subscribed_events_request", a);
  }
  
  public void onResume()
  {
    super.onResume();
    a = ((br)a("subscribed_events_request", a, d));
    if ((a != null) && (a.u())) {
      H_();
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