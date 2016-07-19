package com.yelp.android.appdata.webrequests;

import com.yelp.android.appdata.webrequests.core.c;
import com.yelp.android.appdata.webrequests.core.c.a;

public class bk
  extends c
{
  public bk(String paramString, c.a parama)
  {
    super("event/reminder/disable", parama);
    b("event_id", paramString);
  }
  
  public String toString()
  {
    return "EventDisableReminderRequest";
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.appdata.webrequests.bk
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */