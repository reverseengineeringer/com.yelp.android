package com.yelp.android.serializable;

import android.os.Parcel;
import android.os.Parcelable.Creator;

final class x
  implements Parcelable.Creator<CheckInFeedEntry>
{
  public CheckInFeedEntry a(Parcel paramParcel)
  {
    return new CheckInFeedEntry(paramParcel);
  }
  
  public CheckInFeedEntry[] a(int paramInt)
  {
    return new CheckInFeedEntry[paramInt];
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.serializable.x
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */