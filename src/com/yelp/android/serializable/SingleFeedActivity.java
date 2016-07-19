package com.yelp.android.serializable;

import android.os.Parcelable;

public abstract interface SingleFeedActivity
  extends Parcelable
{
  public abstract Event a();
  
  public abstract YelpBusiness b();
  
  public abstract User c();
}

/* Location:
 * Qualified Name:     com.yelp.android.serializable.SingleFeedActivity
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */