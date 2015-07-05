package com.yelp.android.ui.activities.events;

import android.content.Context;
import android.content.Intent;
import android.net.Uri;
import android.net.Uri.Builder;
import com.yelp.android.analytics.h;
import com.yelp.android.analytics.iris.EventIri;
import com.yelp.android.serializable.Event;
import com.yelp.android.services.o;
import com.yelp.android.services.q;

public class ak
  extends q
{
  private final Event a;
  private o b;
  
  public ak(Event paramEvent)
  {
    a = paramEvent;
  }
  
  protected Uri a(Context paramContext)
  {
    if ((b.e()) || (a.getAlias() == null)) {
      return new Uri.Builder().scheme("http").authority(paramContext.getString(2131166852)).path(paramContext.getString(2131165787)).appendPath(a.getId()).build();
    }
    return new Uri.Builder().scheme("http").authority(paramContext.getString(2131166852)).path(paramContext.getString(2131165781)).appendPath(a.getAlias()).build();
  }
  
  public h a()
  {
    h localh = new h();
    localh.a("event_alias", a.getAlias());
    if (b.f())
    {
      localh.a(EventIri.EventEmailCompose);
      return localh;
    }
    if (b.e())
    {
      localh.a(EventIri.EventText);
      return localh;
    }
    if (b.a())
    {
      localh.a(EventIri.EventFacebook);
      return localh;
    }
    if (b.d())
    {
      localh.a(EventIri.EventTwitter);
      return localh;
    }
    localh.a(EventIri.EventShare);
    return localh;
  }
  
  public void a(Context paramContext, o paramo, Intent paramIntent)
  {
    b = paramo;
    super.a(paramContext, paramo, paramIntent);
  }
  
  public String b(Context paramContext)
  {
    return a.getName();
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.ui.activities.events.ak
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */