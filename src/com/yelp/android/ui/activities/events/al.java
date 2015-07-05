package com.yelp.android.ui.activities.events;

import android.os.Bundle;
import android.support.v4.app.FragmentActivity;
import android.view.LayoutInflater;
import android.view.View;
import android.view.View.OnClickListener;
import android.view.ViewGroup;
import android.widget.AdapterView.OnItemSelectedListener;
import android.widget.ArrayAdapter;
import android.widget.Button;
import android.widget.Spinner;
import android.widget.SpinnerAdapter;
import com.yelp.android.appdata.AppData;
import com.yelp.android.appdata.webrequests.YelpException;
import com.yelp.android.appdata.webrequests.dc;
import com.yelp.android.serializable.Event;
import com.yelp.android.serializable.Event.SubscriptionStatus;
import com.yelp.android.ui.activities.ActivityLogin;
import com.yelp.android.ui.util.bs;
import com.yelp.android.ui.util.bw;
import com.yelp.android.ui.util.cr;
import com.yelp.android.ui.util.h;
import com.yelp.android.ui.widgets.YelpToggleButton;

public class al
{
  private EventFragment a;
  private View b;
  private Event.SubscriptionStatus c;
  private final View.OnClickListener d = new an(this);
  private final View.OnClickListener e = new ao(this);
  private final AdapterView.OnItemSelectedListener f = new ap(this);
  
  public al(EventFragment paramEventFragment, Bundle paramBundle)
  {
    a = paramEventFragment;
    if (paramBundle != null)
    {
      c = ((Event.SubscriptionStatus)paramBundle.getSerializable("saved_rsvp_change"));
      return;
    }
    c = Event.SubscriptionStatus.Unassigned;
  }
  
  private void c()
  {
    int k = 0;
    View localView1 = b.findViewById(2131493839);
    View localView2 = b.findViewById(2131493841);
    View localView3 = b.findViewById(2131493845);
    View localView4 = b.findViewById(2131493848);
    int j;
    if ((AppData.b().m().c()) && (e().getSubscriptionStatusEnum() != Event.SubscriptionStatus.Unassigned))
    {
      i = 1;
      if (i == 0) {
        break label145;
      }
      j = 8;
      label80:
      localView1.setVisibility(j);
      if (i == 0) {
        break label150;
      }
      j = 8;
      label93:
      localView2.setVisibility(j);
      if (i == 0) {
        break label155;
      }
      j = 0;
      label105:
      localView3.setVisibility(j);
      if (i == 0) {
        break label161;
      }
    }
    label145:
    label150:
    label155:
    label161:
    for (int i = k;; i = 8)
    {
      localView4.setVisibility(i);
      if (localView3.getVisibility() == 0)
      {
        d();
        b();
      }
      return;
      i = 0;
      break;
      j = 0;
      break label80;
      j = 0;
      break label93;
      j = 8;
      break label105;
    }
  }
  
  private void d()
  {
    Spinner localSpinner = (Spinner)b.findViewById(2131493847);
    localSpinner.setOnItemSelectedListener(null);
    int i = 0;
    for (;;)
    {
      if (i < localSpinner.getAdapter().getCount())
      {
        if (localSpinner.getAdapter().getItem(i) == e().getSubscriptionStatusEnum()) {
          localSpinner.setSelection(i);
        }
      }
      else
      {
        localSpinner.post(new am(this, localSpinner));
        return;
      }
      i += 1;
    }
  }
  
  private Event e()
  {
    return a.d();
  }
  
  public void a()
  {
    a.a(null, 0);
    a.c().a(e().getId(), c);
  }
  
  public void a(Bundle paramBundle)
  {
    paramBundle.putSerializable("saved_rsvp_change", c);
  }
  
  public void a(YelpException paramYelpException)
  {
    c = Event.SubscriptionStatus.Unassigned;
    cr.a(paramYelpException.getMessage(a.getActivity()), 1);
    c();
  }
  
  public void a(Event.SubscriptionStatus paramSubscriptionStatus)
  {
    c = paramSubscriptionStatus;
    if (AppData.b().m().e())
    {
      a.a(null, 0);
      a.c().a(e().getId(), c);
      return;
    }
    a.startActivityForResult(ActivityLogin.a(a.getActivity(), 2131166052), 1050);
  }
  
  public void a(bs parambs, ViewGroup paramViewGroup)
  {
    if (e().getRsvp() != null) {
      return;
    }
    b = a.getActivity().getLayoutInflater().inflate(2130903309, paramViewGroup, false);
    ((Button)b.findViewById(2131493843)).setOnClickListener(e);
    ((Button)b.findViewById(2131493844)).setOnClickListener(e);
    paramViewGroup = (Spinner)b.findViewById(2131493847);
    ArrayAdapter localArrayAdapter = new ArrayAdapter(a.getActivity(), 2130903310, Event.SubscriptionStatus.values());
    localArrayAdapter.setDropDownViewResource(17367049);
    paramViewGroup.setAdapter(localArrayAdapter);
    ((YelpToggleButton)b.findViewById(2131493850)).setOnClickListener(d);
    parambs.a(2130903309, bw.a(new h(new View[] { b })).a());
    c();
  }
  
  public void a(Object paramObject)
  {
    paramObject = (Event)paramObject;
    e().setSubscriptionStatus(((Event)paramObject).getSubscriptionStatusEnum());
    e().setReminderNotification(((Event)paramObject).getReminderNotification());
    c = Event.SubscriptionStatus.Unassigned;
    c();
  }
  
  public void b()
  {
    YelpToggleButton localYelpToggleButton = (YelpToggleButton)b.findViewById(2131493850);
    localYelpToggleButton.setChecked(e().getReminderNotification());
    if (e().getSubscriptionStatusEnum() != Event.SubscriptionStatus.Unassigned) {}
    for (boolean bool = true;; bool = false)
    {
      localYelpToggleButton.setEnabled(bool);
      return;
    }
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.ui.activities.events.al
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */