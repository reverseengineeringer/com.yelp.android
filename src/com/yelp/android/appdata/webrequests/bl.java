package com.yelp.android.appdata.webrequests;

import com.yelp.android.appdata.webrequests.core.c;
import com.yelp.android.appdata.webrequests.core.c.a;

public class bl
  extends c
{
  public bl(String paramString, c.a parama)
  {
    super("event/reminder/enable", parama);
    b("event_id", paramString);
  }
  
  public String toString()
  {
    return "EventEnableReminderRequest";
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.appdata.webrequests.bl
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */