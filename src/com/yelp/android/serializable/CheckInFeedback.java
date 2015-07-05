package com.yelp.android.serializable;

import com.yelp.parcelgen.JsonParser.DualCreator;
import java.util.Date;

public class CheckInFeedback
  extends _CheckInFeedback
  implements DisplayableAsUserBadge
{
  public static final JsonParser.DualCreator<CheckInFeedback> CREATOR = new y();
  
  public CheckInFeedback() {}
  
  public CheckInFeedback(YelpCheckIn paramYelpCheckIn, User paramUser)
  {
    super(new Date(), null, paramUser, paramYelpCheckIn.getBusiness(), paramYelpCheckIn);
  }
  
  public int getFriendCount()
  {
    return mUser.getFriendCount();
  }
  
  public int getMediaCount()
  {
    return mUser.getMediaCount();
  }
  
  public int getPhotoCount()
  {
    return mUser.getLocalPhotoCount();
  }
  
  public int getReviewCount()
  {
    return mUser.getReviewCount();
  }
  
  public String getUserId()
  {
    return mUser.getId();
  }
  
  public String getUserName()
  {
    return mUser.getUserName();
  }
  
  public String getUserPhotoUrl()
  {
    return mUser.getUserPhotoUrl();
  }
  
  public int getVideoCount()
  {
    return mUser.getVideoCount();
  }
  
  public boolean isEliteUser()
  {
    return mUser.isEliteUser();
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.serializable.CheckInFeedback
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */