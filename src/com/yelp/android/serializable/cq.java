package com.yelp.android.serializable;

import android.os.Parcel;
import android.os.Parcelable.Creator;

final class cq
  implements Parcelable.Creator<ReviewDraftFeedEntry>
{
  public ReviewDraftFeedEntry a(Parcel paramParcel)
  {
    return new ReviewDraftFeedEntry(paramParcel);
  }
  
  public ReviewDraftFeedEntry[] a(int paramInt)
  {
    return new ReviewDraftFeedEntry[paramInt];
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.serializable.cq
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */