package com.yelp.android.serializable;

import com.yelp.android.appdata.webrequests.dc;
import com.yelp.parcelgen.JsonParser.DualCreator;
import java.util.Date;

public class TipFeedback
  extends _TipFeedback
  implements DisplayableAsUserBadge.DisplayableAsUserBadgeWithTimeAgo
{
  public static final JsonParser.DualCreator<TipFeedback> CREATOR = new di();
  
  public TipFeedback() {}
  
  public TipFeedback(Tip paramTip, dc paramdc)
  {
    super(new Date(), Passport.fromLoginManager(paramdc), paramTip.getBusinessId(), null, paramTip.getText(), null);
  }
  
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
    return getDateCreated();
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
  
  public void setText(String paramString)
  {
    mText = paramString;
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.serializable.TipFeedback
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */