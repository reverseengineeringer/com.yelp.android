package com.yelp.android.ui.activities.messaging.apimanagers;

import com.yelp.android.appdata.webrequests.messaging.MessagingRequestType;
import java.util.List;

public abstract class ApiListManager
  extends h
{
  private final g a;
  
  public ApiListManager(g paramg)
  {
    a = paramg;
  }
  
  protected abstract ApiListManager.RequestResult a(MessagingRequestType paramMessagingRequestType, boolean paramBoolean);
  
  protected boolean a(List<?> paramList, MessagingRequestType paramMessagingRequestType, int paramInt)
  {
    return (paramMessagingRequestType != MessagingRequestType.OlderThan) && ((paramMessagingRequestType == MessagingRequestType.Default) || (paramList.size() >= paramInt));
  }
  
  protected g f()
  {
    return a;
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.ui.activities.messaging.apimanagers.ApiListManager
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */