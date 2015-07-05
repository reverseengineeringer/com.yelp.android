package com.yelp.android.ui.activities.messaging.apimanagers;

import android.content.Context;
import com.yelp.android.appdata.webrequests.messaging.MessagingRequestType;
import com.yelp.android.appdata.webrequests.messaging.f;
import com.yelp.android.bb.h;
import com.yelp.android.serializable.Conversation;
import com.yelp.android.serializable.ConversationMessage;
import java.util.List;

public class d
  extends ApiListManager
{
  private final h a;
  private boolean b;
  
  public d(Context paramContext, List<Conversation> paramList, g paramg)
  {
    super(paramg);
    a = new h(paramContext);
    b = false;
    if (paramList != null) {
      a(paramList);
    }
  }
  
  private void a(MessagingRequestType paramMessagingRequestType, String paramString)
  {
    a(new f(paramMessagingRequestType, paramString, new e(this)));
  }
  
  private void a(List<Conversation> paramList)
  {
    a.clear();
    a.a(paramList);
  }
  
  private void a(List<Conversation> paramList, MessagingRequestType paramMessagingRequestType)
  {
    boolean bool2 = false;
    if (paramMessagingRequestType == MessagingRequestType.OlderThan) {
      a.a(paramList);
    }
    for (;;)
    {
      a.notifyDataSetChanged();
      boolean bool1 = bool2;
      if (paramList.size() < 20) {
        if (!b)
        {
          bool1 = bool2;
          if (paramMessagingRequestType == MessagingRequestType.NewerThan) {}
        }
        else
        {
          bool1 = true;
        }
      }
      b = bool1;
      return;
      if (a(paramList, paramMessagingRequestType, 20))
      {
        a.clear();
        a.a(paramList);
      }
      else
      {
        a.d(paramList);
        a.a(paramList, 0);
      }
    }
  }
  
  protected ApiListManager.RequestResult a(MessagingRequestType paramMessagingRequestType, boolean paramBoolean)
  {
    switch (f.a[paramMessagingRequestType.ordinal()])
    {
    default: 
      return ApiListManager.RequestResult.CONTENT_TRASHED;
    case 1: 
      return ApiListManager.RequestResult.CONTENT_ADDED_BOTTOM;
    }
    if (paramBoolean) {
      return ApiListManager.RequestResult.NO_NEW_CONTENT;
    }
    return ApiListManager.RequestResult.CONTENT_ADDED_TOP;
  }
  
  public boolean a()
  {
    return b;
  }
  
  public h b()
  {
    return a;
  }
  
  public void c()
  {
    if (g()) {
      h();
    }
    a(MessagingRequestType.Default, null);
  }
  
  public void d()
  {
    if (!a.isEmpty())
    {
      String str = ((Conversation)a.getItem(0)).getLatestMessage().getId();
      a(MessagingRequestType.NewerThan, str);
    }
  }
  
  public void e()
  {
    if (!a.isEmpty())
    {
      String str = ((Conversation)a.getItem(a.getCount() - 1)).getLatestMessage().getId();
      a(MessagingRequestType.OlderThan, str);
    }
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.ui.activities.messaging.apimanagers.d
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */