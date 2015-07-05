package com.yelp.android.ui.activities.messaging.apimanagers;

import com.yelp.android.appdata.webrequests.messaging.a;
import com.yelp.android.appdata.webrequests.messaging.c;
import com.yelp.android.appdata.webrequests.messaging.o;
import com.yelp.android.serializable.Conversation;
import com.yelp.android.serializable.bg;

public class q
  extends n
{
  public void a(Conversation paramConversation, p paramp)
  {
    a(new a(paramConversation.getId(), d), MessagingAction.DELETE_CONVERSATION, paramp);
  }
  
  public void a(Conversation paramConversation, String paramString, p paramp)
  {
    a(new c(paramConversation.getId(), paramString, d), MessagingAction.FLAG_CONVERSATION, paramp);
  }
  
  public void a(bg parambg, boolean paramBoolean, p paramp)
  {
    paramp.a();
    a(new com.yelp.android.appdata.webrequests.messaging.n(parambg.getId(), paramBoolean, d), MessagingAction.BLOCK_USER, paramp);
  }
  
  public void b(bg parambg, boolean paramBoolean, p paramp)
  {
    paramp.a();
    a(new o(parambg.getId(), paramBoolean, d), MessagingAction.UNBLOCK_USER, paramp);
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.ui.activities.messaging.apimanagers.q
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */