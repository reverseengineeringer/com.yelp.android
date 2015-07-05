package com.yelp.android.ui.activities.messaging.apimanagers;

import com.yelp.android.appdata.webrequests.ApiRequest;
import com.yelp.android.av.i;
import com.yelp.android.serializable.ConversationMessage;

public abstract class n
  extends h
{
  protected m a;
  protected MessagingAction b;
  protected p c;
  protected final i d = new o(this);
  
  protected void a(ApiRequest<?, ?, ?> paramApiRequest, MessagingAction paramMessagingAction, p paramp)
  {
    if ((c == null) || (g())) {
      return;
    }
    c = paramp;
    b = paramMessagingAction;
    a(paramApiRequest);
  }
  
  protected void a(ConversationMessage paramConversationMessage)
  {
    if (c != null) {
      c.a(b, paramConversationMessage);
    }
    for (;;)
    {
      i();
      return;
      a = new m(b, paramConversationMessage, null);
    }
  }
  
  public void a(p paramp)
  {
    c = paramp;
    if ((c != null) && (a != null))
    {
      a.a(c);
      a = null;
    }
  }
  
  protected void i()
  {
    super.i();
    b = null;
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.ui.activities.messaging.apimanagers.n
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */