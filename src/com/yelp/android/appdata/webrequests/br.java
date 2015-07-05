package com.yelp.android.appdata.webrequests;

import com.yelp.android.av.h;
import com.yelp.android.av.i;

public class br
  extends h
{
  public br(String paramString, i parami)
  {
    super("event/reminder/disable", parami);
    addPostParam("event_id", paramString);
  }
  
  public String toString()
  {
    return "EventDisableReminderRequest";
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.appdata.webrequests.br
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */