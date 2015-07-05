package com.yelp.android.appdata.webrequests.messaging;

import com.yelp.android.av.h;
import com.yelp.android.av.i;

public class a
  extends h
{
  public a(String paramString, i parami)
  {
    super("conversation/hide", parami);
    addPostParam("conversation_id", paramString);
  }
  
  public String toString()
  {
    return "ConversationDeleteRequest";
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.appdata.webrequests.messaging.a
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */