package com.yelp.android.serializable;

import android.content.Context;
import com.yelp.parcelgen.JsonParser.DualCreator;

public class ConversationMessage
  extends _ConversationMessage
{
  public static final JsonParser.DualCreator<ConversationMessage> CREATOR = new ac();
  
  public boolean equals(Object paramObject)
  {
    if ((paramObject instanceof ConversationMessage))
    {
      paramObject = (ConversationMessage)paramObject;
      return getId().equals(((ConversationMessage)paramObject).getId());
    }
    return false;
  }
  
  public String getFormattedMessage(Context paramContext)
  {
    if (mBizUser != null) {
      return paramContext.getString(2131165448, new Object[] { mBizUser.getName(), mBizUser.getRole(), mMessage.replace("\n", "<br>") });
    }
    return paramContext.getString(2131166082, new Object[] { mUser.getNameWithoutPeriod(), mMessage.replace("\n", "<br>") });
  }
  
  public bg getMessagingUser()
  {
    if (mUser != null) {
      return mUser;
    }
    return mBizUser;
  }
  
  public int hashCode()
  {
    return getId().hashCode();
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.serializable.ConversationMessage
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */