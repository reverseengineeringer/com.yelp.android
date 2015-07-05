package com.yelp.android.serializable;

import android.os.Parcelable;

public abstract interface Complimentable
  extends Parcelable
{
  public abstract String getId();
  
  public abstract Compliment.ComplimentableItemType getType();
  
  public abstract String getUserId();
}

/* Location:
 * Qualified Name:     com.yelp.android.serializable.Complimentable
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */