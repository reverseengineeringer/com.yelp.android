package com.yelp.android.serializable;

public class FriendRequest
  extends _FriendRequest
  implements DisplayableAsUserBadge
{
  public static final ah<FriendRequest> CREATOR = new au();
  
  public boolean equals(Object paramObject)
  {
    if (this == paramObject) {}
    do
    {
      do
      {
        return true;
        if (paramObject == null) {
          return false;
        }
        if (!(paramObject instanceof FriendRequest)) {
          return false;
        }
        paramObject = (FriendRequest)paramObject;
        if (mSender != null) {
          break;
        }
      } while (mSender == null);
      return false;
    } while (mSender.equals(mSender));
    return false;
  }
  
  public int getFriendCount()
  {
    return getSender().getFriendCount();
  }
  
  public int getMediaCount()
  {
    return getSender().getMediaCount();
  }
  
  public int getPhotoCount()
  {
    return getSender().getLocalPhotoCount();
  }
  
  public int getReviewCount()
  {
    return getSender().getReviewCount();
  }
  
  public String getUserId()
  {
    return getSender().getUserId();
  }
  
  public String getUserName()
  {
    return getSender().getName();
  }
  
  public String getUserPhotoUrl()
  {
    return getSender().getUserPhotoUrl();
  }
  
  public int getVideoCount()
  {
    return getSender().getVideoCount();
  }
  
  public int hashCode()
  {
    if (mSender == null) {}
    for (int i = 0;; i = mSender.hashCode()) {
      return i + 31;
    }
  }
  
  public boolean isEliteUser()
  {
    return getSender().isEliteUser();
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.serializable.FriendRequest
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */