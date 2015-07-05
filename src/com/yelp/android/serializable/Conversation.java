package com.yelp.android.serializable;

import com.yelp.android.appdata.AppData;
import com.yelp.android.appdata.webrequests.dc;
import com.yelp.parcelgen.JsonParser.DualCreator;
import java.util.Iterator;
import java.util.List;

public class Conversation
  extends _Conversation
{
  public static final JsonParser.DualCreator<Conversation> CREATOR = new ab();
  
  public boolean equals(Object paramObject)
  {
    if ((paramObject instanceof Conversation))
    {
      paramObject = (Conversation)paramObject;
      return getId().equals(((Conversation)paramObject).getId());
    }
    return false;
  }
  
  public ConversationMessage getLatestMessage()
  {
    return (ConversationMessage)mLatestMessages.get(mLatestMessages.size() - 1);
  }
  
  public bg getOtherUser()
  {
    if (mBizUser != null) {
      return mBizUser;
    }
    User localUser = AppData.b().m().s();
    Iterator localIterator = getUsers().iterator();
    while (localIterator.hasNext())
    {
      UserTiny localUserTiny = (UserTiny)localIterator.next();
      if (!localUserTiny.getId().equals(localUser.getUserId())) {
        return localUserTiny;
      }
    }
    return null;
  }
  
  public int hashCode()
  {
    return getId().hashCode();
  }
  
  public void setRead(boolean paramBoolean)
  {
    mIsRead = paramBoolean;
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.serializable.Conversation
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */