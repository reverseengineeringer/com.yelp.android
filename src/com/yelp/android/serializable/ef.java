package com.yelp.android.serializable;

import android.os.Parcel;
import android.os.Parcelable.Creator;

final class ef
  implements Parcelable.Creator<YelpCheckIn.TitleLocation>
{
  public YelpCheckIn.TitleLocation a(Parcel paramParcel)
  {
    return new YelpCheckIn.TitleLocation(paramParcel);
  }
  
  public YelpCheckIn.TitleLocation[] a(int paramInt)
  {
    return new YelpCheckIn.TitleLocation[paramInt];
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.serializable.ef
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */