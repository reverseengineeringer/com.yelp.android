package com.yelp.android.appdata.webrequests;

import com.yelp.android.appdata.webrequests.core.c;
import com.yelp.android.serializable.Event;
import com.yelp.android.serializable.Event.EventType;
import com.yelp.android.util.StringUtils;
import java.util.ArrayList;

public class ew
  extends c
{
  public ew(Event paramEvent, ArrayList<String> paramArrayList, ApiRequest.b<Void> paramb)
  {
    super("event/rsvp/change_guests", paramb);
    b("event_id", paramEvent.I());
    b("event_type", paramEvent.K().toString());
    b("guest_names", StringUtils.a(paramArrayList));
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.appdata.webrequests.ew
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */