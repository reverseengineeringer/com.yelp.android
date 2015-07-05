package com.yelp.android.serializable;

import android.os.Parcel;
import android.os.Parcelable;
import android.os.Parcelable.Creator;
import java.util.List;

public class RankTitle
  implements Parcelable
{
  public static final Parcelable.Creator<RankTitle> CREATOR = new cf();
  private final int mLocationCount;
  private final List<String> mLocationNames;
  
  public RankTitle(List<String> paramList, int paramInt)
  {
    mLocationNames = paramList;
    mLocationCount = paramInt;
  }
  
  public int describeContents()
  {
    return 0;
  }
  
  public int getLocationCount()
  {
    return mLocationCount;
  }
  
  public List<String> getLocationNames()
  {
    return mLocationNames;
  }
  
  public void writeToParcel(Parcel paramParcel, int paramInt)
  {
    paramParcel.writeStringList(mLocationNames);
    paramParcel.writeInt(mLocationCount);
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.serializable.RankTitle
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */