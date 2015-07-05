package com.yelp.android.serializable;

import android.os.Parcel;
import android.os.Parcelable;
import android.os.Parcelable.Creator;

public class YelpCheckIn$TitleLocation
  implements Parcelable
{
  public static final Parcelable.Creator<TitleLocation> CREATOR = new ef();
  private final String mLocation;
  private final RankTitle.Rank mRank;
  
  public YelpCheckIn$TitleLocation(Parcel paramParcel)
  {
    this(RankTitle.Rank.rankForString(paramParcel.readString()), paramParcel.readString());
  }
  
  public YelpCheckIn$TitleLocation(RankTitle.Rank paramRank, String paramString)
  {
    mRank = paramRank;
    mLocation = paramString;
  }
  
  public int describeContents()
  {
    return 0;
  }
  
  public String getLocation()
  {
    return mLocation;
  }
  
  public RankTitle.Rank getRank()
  {
    return mRank;
  }
  
  public void writeToParcel(Parcel paramParcel, int paramInt)
  {
    paramParcel.writeString(mRank.name());
    paramParcel.writeString(mLocation);
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.serializable.YelpCheckIn.TitleLocation
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */