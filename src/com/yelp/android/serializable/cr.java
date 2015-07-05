package com.yelp.android.serializable;

import android.os.Parcel;
import android.os.Parcelable.Creator;

final class cr
  implements Parcelable.Creator<ReviewFeedEntry>
{
  public ReviewFeedEntry a(Parcel paramParcel)
  {
    return new ReviewFeedEntry(paramParcel);
  }
  
  public ReviewFeedEntry[] a(int paramInt)
  {
    return new ReviewFeedEntry[paramInt];
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.serializable.cr
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */