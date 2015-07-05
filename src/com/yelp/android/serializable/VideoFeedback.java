package com.yelp.android.serializable;

import com.yelp.parcelgen.JsonParser.DualCreator;
import java.util.Date;

public class VideoFeedback
  extends _VideoFeedback
  implements DisplayableAsUserBadge.DisplayableAsUserBadgeWithTimeAgo
{
  public static final JsonParser.DualCreator<VideoFeedback> CREATOR = new dp();
  
  public int getFriendCount()
  {
    return getUserPassport().getFriendCount();
  }
  
  public int getMediaCount()
  {
    return getUserPassport().getMediaCount();
  }
  
  public int getPhotoCount()
  {
    return getUserPassport().getPhotoCount();
  }
  
  public int getReviewCount()
  {
    return getUserPassport().getReviewCount();
  }
  
  public Date getTimeOf()
  {
    return getTimeCreated();
  }
  
  public String getUserId()
  {
    return getUserPassport().getId();
  }
  
  public String getUserName()
  {
    return getUserPassport().getName();
  }
  
  public String getUserPhotoUrl()
  {
    return getUserPassport().getProfileThumbnail();
  }
  
  public int getVideoCount()
  {
    return getUserPassport().getVideoCount();
  }
  
  public boolean isEliteUser()
  {
    return false;
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.serializable.VideoFeedback
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */