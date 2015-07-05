package com.yelp.android.serializable;

import android.os.Parcel;
import android.os.Parcelable.Creator;

final class ce
  implements Parcelable.Creator<RankLocation>
{
  public final RankLocation a(Parcel paramParcel)
  {
    return new RankLocation(paramParcel.readString(), paramParcel.readString(), paramParcel.readInt(), RankTitle.Rank.rankForString(paramParcel.readString()), (YelpBusiness)paramParcel.readParcelable(YelpBusiness.class.getClassLoader()));
  }
  
  public final RankLocation[] a(int paramInt)
  {
    return (RankLocation[])RankLocation.LAZY_CREATOR.b(paramInt);
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.serializable.ce
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */