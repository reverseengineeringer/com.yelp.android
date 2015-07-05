package com.yelp.android.serializable;

import android.os.Parcel;
import android.os.Parcelable.Creator;

final class j
  implements Parcelable.Creator<BizPhotoFeedEntry>
{
  public BizPhotoFeedEntry a(Parcel paramParcel)
  {
    return new BizPhotoFeedEntry(paramParcel);
  }
  
  public BizPhotoFeedEntry[] a(int paramInt)
  {
    return new BizPhotoFeedEntry[paramInt];
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.serializable.j
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */