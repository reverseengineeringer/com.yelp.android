package com.yelp.android.serializable;

import android.os.Parcel;
import android.os.Parcelable.Creator;

final class k
  implements Parcelable.Creator<BookmarkFeedEntry>
{
  public BookmarkFeedEntry a(Parcel paramParcel)
  {
    return new BookmarkFeedEntry(paramParcel);
  }
  
  public BookmarkFeedEntry[] a(int paramInt)
  {
    return new BookmarkFeedEntry[paramInt];
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.serializable.k
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */