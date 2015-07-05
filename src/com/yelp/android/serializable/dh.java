package com.yelp.android.serializable;

import android.os.Parcel;
import android.os.Parcelable.Creator;

final class dh
  implements Parcelable.Creator<TipFeedEntry>
{
  public TipFeedEntry a(Parcel paramParcel)
  {
    return new TipFeedEntry(paramParcel);
  }
  
  public TipFeedEntry[] a(int paramInt)
  {
    return new TipFeedEntry[paramInt];
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.serializable.dh
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */