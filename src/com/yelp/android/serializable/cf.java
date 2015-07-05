package com.yelp.android.serializable;

import android.os.Parcel;
import android.os.Parcelable.Creator;

final class cf
  implements Parcelable.Creator<RankTitle>
{
  public RankTitle a(Parcel paramParcel)
  {
    return new RankTitle(paramParcel.createStringArrayList(), paramParcel.readInt());
  }
  
  public RankTitle[] a(int paramInt)
  {
    return new RankTitle[paramInt];
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.serializable.cf
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */