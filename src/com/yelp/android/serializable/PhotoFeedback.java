package com.yelp.android.serializable;

import com.yelp.parcelgen.JsonParser.DualCreator;
import java.util.Date;

public class PhotoFeedback
  extends _PhotoFeedback
  implements DisplayableAsUserBadge.DisplayableAsUserBadgeWithTimeAgo
{
  public static final JsonParser.DualCreator<PhotoFeedback> CREATOR = new bu();
  
  public int getFriendCount()
  {
    return mUserPassport.getFriendCount();
  }
  
  public int getMediaCount()
  {
    return mUserPassport.getMediaCount();
  }
  
  public int getPhotoCount()
  {
    return mUserPassport.getPhotoCount();
  }
  
  public int getReviewCount()
  {
    return mUserPassport.getReviewCount();
  }
  
  public Date getTimeOf()
  {
    return getTimeUpdated();
  }
  
  public String getUserId()
  {
    return mUserPassport.getId();
  }
  
  public String getUserName()
  {
    return mUserPassport.getName();
  }
  
  public String getUserPhotoUrl()
  {
    return mUserPassport.getProfileThumbnail();
  }
  
  public int getVideoCount()
  {
    return mUserPassport.getVideoCount();
  }
  
  public boolean isEliteUser()
  {
    return false;
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.serializable.PhotoFeedback
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */