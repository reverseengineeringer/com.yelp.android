package com.yelp.android.serializable;

import android.os.Parcelable;
import java.util.Date;

public abstract interface CheckIn
  extends Parcelable
{
  public static final String EXTRA_CHECK_IN = "extra.check_in";
  public static final String EXTRA_MULTIPLE_CHECK_INS = "extra.multiple";
  
  public abstract String getAppName();
  
  public abstract YelpBusiness getBusiness();
  
  public abstract String getBusinessId();
  
  public abstract Date getDateCreated();
  
  public abstract String getLocation();
  
  public abstract String getUserName();
  
  public abstract String getUserPhotoUrl();
}

/* Location:
 * Qualified Name:     com.yelp.android.serializable.CheckIn
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */