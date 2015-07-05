package com.yelp.android.serializable;

import android.os.Parcel;
import android.os.Parcelable.Creator;

final class aw
  implements Parcelable.Creator<GenericFeedEntry>
{
  public GenericFeedEntry a(Parcel paramParcel)
  {
    return new GenericFeedEntry(paramParcel);
  }
  
  public GenericFeedEntry[] a(int paramInt)
  {
    return new GenericFeedEntry[paramInt];
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.serializable.aw
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */