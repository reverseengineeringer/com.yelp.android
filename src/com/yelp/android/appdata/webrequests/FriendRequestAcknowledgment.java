package com.yelp.android.appdata.webrequests;

import com.yelp.android.appdata.webrequests.core.c;
import com.yelp.android.appdata.webrequests.core.c.a;
import com.yelp.android.serializable.User;

public class FriendRequestAcknowledgment
  extends c
{
  public final Acknowledgment a;
  public final User g;
  
  public FriendRequestAcknowledgment(c.a parama, Acknowledgment paramAcknowledgment, User paramUser)
  {
    super(url, parama);
    b("user_id", paramUser.ae());
    g = paramUser;
    a = paramAcknowledgment;
  }
  
  public Acknowledgment b()
  {
    return a;
  }
  
  public User d()
  {
    return g;
  }
  
  public static enum Acknowledgment
  {
    APPROVE("user/accept_friend"),  IGNORE("user/ignore_friend");
    
    final String url;
    
    private Acknowledgment(String paramString)
    {
      url = paramString;
    }
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.appdata.webrequests.FriendRequestAcknowledgment
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */