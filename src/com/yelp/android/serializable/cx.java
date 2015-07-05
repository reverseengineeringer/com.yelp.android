package com.yelp.android.serializable;

import android.os.Parcel;
import android.os.Parcelable.Creator;

final class cx
  implements Parcelable.Creator<RoyaltySet>
{
  public RoyaltySet a(Parcel paramParcel)
  {
    return new RoyaltySet(paramParcel, null);
  }
  
  public RoyaltySet[] a(int paramInt)
  {
    return new RoyaltySet[paramInt];
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.serializable.cx
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */