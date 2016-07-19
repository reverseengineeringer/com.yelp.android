package com.yelp.android.serializable;

import com.yelp.android.appdata.AppData;
import com.yelp.android.appdata.webrequests.co;
import com.yelp.parcelgen.JsonParser.DualCreator;
import java.util.Iterator;
import java.util.List;

public class Conversation
  extends _Conversation
{
  public static final JsonParser.DualCreator<Conversation> CREATOR = new Conversation.1();
  
  public e a()
  {
    if (a != null) {
      return a;
    }
    User localUser = AppData.b().q().p();
    Iterator localIterator = i().iterator();
    while (localIterator.hasNext())
    {
      UserTiny localUserTiny = (UserTiny)localIterator.next();
      if (!localUserTiny.d().equals(localUser.i())) {
        return localUserTiny;
      }
    }
    return null;
  }
  
  public void a(boolean paramBoolean)
  {
    j = paramBoolean;
  }
  
  public ConversationMessage b()
  {
    return (ConversationMessage)c.get(c.size() - 1);
  }
  
  public boolean equals(Object paramObject)
  {
    if ((paramObject instanceof Conversation))
    {
      paramObject = (Conversation)paramObject;
      return h().equals(((Conversation)paramObject).h());
    }
    return false;
  }
  
  public int hashCode()
  {
    return h().hashCode();
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.serializable.Conversation
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */