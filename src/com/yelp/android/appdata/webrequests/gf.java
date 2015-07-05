package com.yelp.android.appdata.webrequests;

import com.yelp.android.av.h;
import com.yelp.android.serializable.Event;
import com.yelp.android.serializable.Event.EventType;
import com.yelp.android.util.StringUtils;
import java.util.ArrayList;

public class gf
  extends h
{
  public gf(Event paramEvent, ArrayList<String> paramArrayList, m<Void> paramm)
  {
    super("event/rsvp/change_guests", paramm);
    addPostParam("event_id", paramEvent.getId());
    addPostParam("event_type", paramEvent.getType().toString());
    addPostParam("guest_names", StringUtils.a(paramArrayList));
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.appdata.webrequests.gf
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */