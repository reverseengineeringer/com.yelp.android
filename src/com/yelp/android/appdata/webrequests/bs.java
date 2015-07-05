package com.yelp.android.appdata.webrequests;

import com.yelp.android.av.h;
import com.yelp.android.av.i;

public class bs
  extends h
{
  public bs(String paramString, i parami)
  {
    super("event/reminder/enable", parami);
    addPostParam("event_id", paramString);
  }
  
  public String toString()
  {
    return "EventEnableReminderRequest";
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.appdata.webrequests.bs
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */