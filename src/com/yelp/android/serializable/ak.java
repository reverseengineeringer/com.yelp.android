package com.yelp.android.serializable;

import android.os.Parcel;
import android.os.Parcelable.Creator;

final class ak
  implements Parcelable.Creator<EventFeedEntry>
{
  public EventFeedEntry a(Parcel paramParcel)
  {
    return new EventFeedEntry(paramParcel);
  }
  
  public EventFeedEntry[] a(int paramInt)
  {
    return new EventFeedEntry[paramInt];
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.serializable.ak
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */