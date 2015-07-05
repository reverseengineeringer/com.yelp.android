package com.yelp.android.ui.activities.messaging.apimanagers;

import com.yelp.android.appdata.webrequests.YelpException;

public class m
{
  private final MessagingAction a;
  private final Object b;
  private final YelpException c;
  
  public m(MessagingAction paramMessagingAction, Object paramObject, YelpException paramYelpException)
  {
    a = paramMessagingAction;
    b = paramObject;
    c = paramYelpException;
  }
  
  public void a(p paramp)
  {
    if (c == null)
    {
      paramp.a(a, b);
      return;
    }
    paramp.a(a, c);
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.ui.activities.messaging.apimanagers.m
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */