package com.yelp.android.appdata.webrequests.messaging;

import com.yelp.android.appdata.webrequests.core.c.a;

public class c
  extends com.yelp.android.appdata.webrequests.core.c
{
  public c(String paramString1, String paramString2, c.a parama)
  {
    super("conversation/flag", parama);
    b("conversation_id", paramString1);
    b("message", paramString2);
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