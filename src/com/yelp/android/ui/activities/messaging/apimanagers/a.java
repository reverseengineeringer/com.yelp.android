package com.yelp.android.ui.activities.messaging.apimanagers;

import com.yelp.android.appdata.webrequests.messaging.d;
import com.yelp.android.appdata.webrequests.messaging.h;
import com.yelp.android.serializable.Conversation;

public class a
  extends n
{
  public void a(p paramp, Conversation paramConversation)
  {
    a(new d(paramConversation.getId(), new b(this)), MessagingAction.MARK_CONVERSATION_READ, paramp);
  }
  
  public void a(p paramp, Conversation paramConversation, String paramString)
  {
    a(new h(paramConversation.getId(), paramString, new c(this)), MessagingAction.SEND_MESSAGE, paramp);
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.ui.activities.messaging.apimanagers.a
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */