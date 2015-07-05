package com.yelp.android.ui.activities.messaging.apimanagers;

import android.content.Context;
import com.yelp.android.appdata.webrequests.messaging.MessagingRequestType;
import com.yelp.android.appdata.webrequests.messaging.b;
import com.yelp.android.appdata.webrequests.messaging.l;
import com.yelp.android.bb.d;
import com.yelp.android.serializable.Conversation;
import com.yelp.android.serializable.ConversationMessage;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;

public class i
  extends ApiListManager
{
  private final d a;
  private boolean b;
  private boolean c;
  private boolean d;
  private final com.yelp.android.appdata.webrequests.m<com.yelp.android.appdata.webrequests.messaging.m> e = new j(this);
  
  public i(Context paramContext, g paramg)
  {
    super(paramg);
    a = new d(paramContext);
    b = false;
    c = false;
  }
  
  private void a(List<ConversationMessage> paramList, MessagingRequestType paramMessagingRequestType)
  {
    if (paramMessagingRequestType == MessagingRequestType.OlderThan)
    {
      a.c(paramList);
      a.notifyDataSetChanged();
      if ((paramList.size() >= 20) || ((!c) && (paramMessagingRequestType == MessagingRequestType.NewerThan))) {
        break label166;
      }
    }
    label166:
    for (boolean bool = true;; bool = false)
    {
      c = bool;
      if ((c) && (d) && (((ConversationMessage)a.getItem(0)).getId() != null))
      {
        paramList = new ArrayList();
        paramList.add(new ConversationMessage());
        a.c(paramList);
      }
      return;
      if (a(paramList, paramMessagingRequestType, 20))
      {
        a.clear();
        a.c(paramList);
        break;
      }
      a.d(paramList);
      Collections.reverse(paramList);
      a.a(paramList);
      break;
    }
  }
  
  private boolean b(String paramString)
  {
    if ((paramString == null) || (b) || (g())) {
      return false;
    }
    a(new b(paramString, new k(this)));
    return true;
  }
  
  public d a()
  {
    return a;
  }
  
  protected ApiListManager.RequestResult a(MessagingRequestType paramMessagingRequestType, boolean paramBoolean)
  {
    switch (l.a[paramMessagingRequestType.ordinal()])
    {
    default: 
      return ApiListManager.RequestResult.CONTENT_TRASHED;
    case 1: 
      return ApiListManager.RequestResult.CONTENT_ADDED_TOP;
    }
    if (paramBoolean) {
      return ApiListManager.RequestResult.NO_NEW_CONTENT;
    }
    return ApiListManager.RequestResult.CONTENT_ADDED_BOTTOM;
  }
  
  public void a(Conversation paramConversation)
  {
    String str = ((ConversationMessage)a.getItem(0)).getId();
    a(new l(paramConversation.getId(), MessagingRequestType.OlderThan, str, e));
  }
  
  public void a(String paramString)
  {
    if (g()) {
      h();
    }
    b = false;
    b(paramString);
  }
  
  public void b(Conversation paramConversation)
  {
    if ((!b) || (a.getCount() < 1)) {
      return;
    }
    ConversationMessage localConversationMessage = (ConversationMessage)a().getItem(a.getCount() - 1);
    a(new l(paramConversation.getId(), MessagingRequestType.NewerThan, localConversationMessage.getId(), e));
  }
  
  public boolean b()
  {
    return c;
  }
  
  public boolean c()
  {
    return b;
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.ui.activities.messaging.apimanagers.i
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */