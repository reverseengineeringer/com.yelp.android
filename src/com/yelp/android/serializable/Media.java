package com.yelp.android.serializable;

import android.os.Parcelable;
import java.util.Date;

public abstract interface Media
  extends Parcelable
{
  public abstract String getBusinessId();
  
  public abstract String getCaption();
  
  public abstract Feedback getFeedback();
  
  public abstract int getFeedbackPositiveCount();
  
  public abstract String getId();
  
  public abstract int getIndex();
  
  public abstract String getThumbnailUrl();
  
  public abstract Date getTimeCreated();
  
  public abstract String getUserId();
  
  public abstract Passport getUserPassport();
  
  public abstract boolean isMediaType(Media.MediaType paramMediaType);
}

/* Location:
 * Qualified Name:     com.yelp.android.serializable.Media
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */