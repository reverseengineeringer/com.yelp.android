package com.yelp.android.ui.activities.events;

import android.os.Bundle;
import android.support.v4.app.Fragment;
import com.yelp.android.appdata.webrequests.ApiRequest;
import com.yelp.android.appdata.webrequests.YelpException;
import com.yelp.android.appdata.webrequests.bp;
import com.yelp.android.appdata.webrequests.bq;
import com.yelp.android.appdata.webrequests.br;
import com.yelp.android.appdata.webrequests.bs;
import com.yelp.android.appdata.webrequests.bt;
import com.yelp.android.appdata.webrequests.bv;
import com.yelp.android.appdata.webrequests.bw;
import com.yelp.android.appdata.webrequests.bx;
import com.yelp.android.appdata.webrequests.gf;
import com.yelp.android.appdata.webrequests.m;
import com.yelp.android.av.i;
import com.yelp.android.serializable.Event;
import com.yelp.android.serializable.Event.EventType;
import com.yelp.android.serializable.Event.SubscriptionStatus;
import com.yelp.android.serializable.EventAttendees;
import com.yelp.android.serializable.EventRsvp;
import java.util.ArrayList;

public class EventRequestFragment
  extends Fragment
{
  private ApiRequest<?, ?, ?> a;
  private EventFragment b;
  private ae c;
  private bp d;
  private ae e;
  private final m<Event> f = new v(this);
  private final m<EventAttendees> g = new w(this);
  private final m<Event> h = new x(this);
  private final i i = new y(this);
  private final m<EventRsvp> j = new z(this);
  private final i k = new aa(this);
  private final m<EventRsvp> l = new ab(this);
  private final i m = new ac(this);
  private final m<String> n = new ad(this);
  
  private void a(ApiRequest<?, ?, ?> paramApiRequest)
  {
    if (a()) {
      return;
    }
    a = paramApiRequest;
    a.execute(new Object[0]);
  }
  
  private void a(YelpException paramYelpException, EventRequestFragment.RequestType paramRequestType)
  {
    if (b == null)
    {
      c = new ae(null, paramYelpException, paramRequestType);
      return;
    }
    b.a(paramYelpException, paramRequestType);
  }
  
  private void a(Object paramObject, EventRequestFragment.RequestType paramRequestType)
  {
    if (b == null)
    {
      c = new ae(paramObject, null, paramRequestType);
      return;
    }
    b.a(paramObject, paramRequestType);
  }
  
  public void a(Event paramEvent)
  {
    if ((d != null) && (d.isFetching()))
    {
      d.setCallback(null);
      d.cancel(true);
    }
    d = new bp(paramEvent, g);
    d.execute(new Void[0]);
  }
  
  public void a(Event paramEvent, ArrayList<String> paramArrayList)
  {
    a(new gf(paramEvent, paramArrayList, m));
  }
  
  public void a(Event paramEvent, ArrayList<String> paramArrayList, String paramString)
  {
    a(new bv(paramEvent, paramArrayList, paramString, j));
  }
  
  public void a(String paramString)
  {
    a(new bs(paramString, i));
  }
  
  public void a(String paramString, Event.EventType paramEventType)
  {
    a(new bw(paramString, paramEventType, f));
  }
  
  public void a(String paramString, Event.SubscriptionStatus paramSubscriptionStatus)
  {
    a(new bx(paramString, paramSubscriptionStatus, h));
  }
  
  public void a(String paramString1, String paramString2)
  {
    a(new bt(paramString1, paramString2, n));
  }
  
  public boolean a()
  {
    return (a != null) && (a.isFetching());
  }
  
  public void b(Event paramEvent)
  {
    a(new bq(paramEvent, l));
  }
  
  public void b(String paramString)
  {
    a(new br(paramString, k));
  }
  
  public void onActivityCreated(Bundle paramBundle)
  {
    super.onActivityCreated(paramBundle);
    b = ((EventFragment)getTargetFragment());
    if (c != null)
    {
      c.a(b);
      c = null;
    }
    if (e != null)
    {
      e.a(b);
      e = null;
    }
  }
  
  public void onCreate(Bundle paramBundle)
  {
    super.onCreate(paramBundle);
    setRetainInstance(true);
  }
  
  public void onDetach()
  {
    super.onDetach();
    b = null;
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.ui.activities.events.EventRequestFragment
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */