package com.yelp.android.appdata.webrequests.messaging;

import com.yelp.android.appdata.webrequests.core.c;
import com.yelp.android.appdata.webrequests.core.c.a;

public class a
  extends c
{
  public a(String paramString, c.a parama)
  {
    super("conversation/hide", parama);
    b("conversation_id", paramString);
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