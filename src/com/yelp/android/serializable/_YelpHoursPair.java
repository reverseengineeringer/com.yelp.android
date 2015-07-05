package com.yelp.android.serializable;

import android.os.Parcel;
import android.os.Parcelable;

abstract class _YelpHoursPair
  implements Parcelable
{
  protected int mClose;
  protected int mOpen;
  
  protected _YelpHoursPair() {}
  
  protected _YelpHoursPair(int paramInt1, int paramInt2)
  {
    this();
    mOpen = paramInt1;
    mClose = paramInt2;
  }
  
  public int describeContents()
  {
    return 0;
  }
  
  public int getClose()
  {
    return mClose;
  }
  
  public int getOpen()
  {
    return mOpen;
  }
  
  public void readFromParcel(Parcel paramParcel)
  {
    mOpen = paramParcel.readInt();
    mClose = paramParcel.readInt();
  }
  
  public void writeToParcel(Parcel paramParcel, int paramInt)
  {
    paramParcel.writeInt(mOpen);
    paramParcel.writeInt(mClose);
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.serializable._YelpHoursPair
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */