package com.yelp.android.serializable;

import android.os.Parcel;
import android.os.Parcelable;
import android.os.Parcelable.Creator;

public class RankLocation
  implements Parcelable
{
  public static final Parcelable.Creator<RankLocation> CREATOR = new ce();
  public static final az<RankLocation> LAZY_CREATOR = new cd();
  private final YelpBusiness mBusiness;
  private final String mId;
  private final String mName;
  private final RankTitle.Rank mRank;
  private final int mTopUserCount;
  
  public RankLocation(String paramString1, String paramString2, int paramInt, RankTitle.Rank paramRank, YelpBusiness paramYelpBusiness)
  {
    mId = paramString1;
    mName = paramString2;
    mRank = paramRank;
    mTopUserCount = paramInt;
    mBusiness = paramYelpBusiness;
  }
  
  public int describeContents()
  {
    return 0;
  }
  
  public YelpBusiness getBusiness()
  {
    return mBusiness;
  }
  
  public String getId()
  {
    return mId;
  }
  
  public String getName()
  {
    return mName;
  }
  
  public RankTitle.Rank getRank()
  {
    return mRank;
  }
  
  public int getTopUserCount()
  {
    return mTopUserCount;
  }
  
  public void writeToParcel(Parcel paramParcel, int paramInt)
  {
    paramParcel.writeString(mId);
    paramParcel.writeString(mName);
    paramParcel.writeInt(mTopUserCount);
    if (mRank == null) {}
    for (String str = null;; str = mRank.name())
    {
      paramParcel.writeString(str);
      paramParcel.writeParcelable(mBusiness, 0);
      return;
    }
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.serializable.RankLocation
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */