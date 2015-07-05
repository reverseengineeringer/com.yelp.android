package com.yelp.android.serializable;

import android.os.Parcel;
import android.os.Parcelable.Creator;

final class dw
  implements Parcelable.Creator<YelpBookmark>
{
  public YelpBookmark a(Parcel paramParcel)
  {
    return new YelpBookmark(paramParcel);
  }
  
  public YelpBookmark[] a(int paramInt)
  {
    return new YelpBookmark[paramInt];
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.serializable.dw
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */