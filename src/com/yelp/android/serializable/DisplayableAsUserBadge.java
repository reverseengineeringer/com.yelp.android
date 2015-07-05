package com.yelp.android.serializable;

import android.os.Parcelable;

public abstract interface DisplayableAsUserBadge
  extends Parcelable
{
  public abstract int getFriendCount();
  
  public abstract int getMediaCount();
  
  public abstract int getPhotoCount();
  
  public abstract int getReviewCount();
  
  public abstract String getUserId();
  
  public abstract String getUserName();
  
  public abstract String getUserPhotoUrl();
  
  public abstract int getVideoCount();
  
  public abstract boolean isEliteUser();
}

/* Location:
 * Qualified Name:     com.yelp.android.serializable.DisplayableAsUserBadge
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */