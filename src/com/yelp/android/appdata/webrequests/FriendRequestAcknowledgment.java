package com.yelp.android.appdata.webrequests;

import com.yelp.android.av.h;
import com.yelp.android.av.i;
import com.yelp.android.serializable.User;

public class FriendRequestAcknowledgment
  extends h
{
  public final FriendRequestAcknowledgment.Acknowledgment a;
  public final User b;
  
  public FriendRequestAcknowledgment(i parami, FriendRequestAcknowledgment.Acknowledgment paramAcknowledgment, User paramUser)
  {
    super(url, parami);
    addPostParam("user_id", paramUser.getId());
    b = paramUser;
    a = paramAcknowledgment;
  }
  
  public FriendRequestAcknowledgment.Acknowledgment a()
  {
    return a;
  }
  
  public User b()
  {
    return b;
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.appdata.webrequests.FriendRequestAcknowledgment
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */