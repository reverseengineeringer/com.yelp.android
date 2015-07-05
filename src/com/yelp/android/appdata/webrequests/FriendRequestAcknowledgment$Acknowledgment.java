package com.yelp.android.appdata.webrequests;

public enum FriendRequestAcknowledgment$Acknowledgment
{
  APPROVE("user/accept_friend"),  IGNORE("user/ignore_friend");
  
  final String url;
  
  private FriendRequestAcknowledgment$Acknowledgment(String paramString)
  {
    url = paramString;
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.appdata.webrequests.FriendRequestAcknowledgment.Acknowledgment
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */