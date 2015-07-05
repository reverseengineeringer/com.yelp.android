package com.yelp.android.appdata.webrequests.messaging;

import com.yelp.android.av.h;
import com.yelp.android.av.i;

public class c
  extends h
{
  public c(String paramString1, String paramString2, i parami)
  {
    super("conversation/flag", parami);
    addPostParam("conversation_id", paramString1);
    addPostParam("message", paramString2);
  }
  
  public String toString()
  {
    return "ConversationFlagRequest";
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.appdata.webrequests.messaging.c
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */