package com.yelp.android.serializable;

import android.os.Parcelable;

public abstract interface Complimentable
  extends Parcelable
{
  public abstract String a();
  
  public abstract String b();
  
  public abstract Compliment.ComplimentableItemType c();
}

/* Location:
 * Qualified Name:     com.yelp.android.serializable.Complimentable
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */