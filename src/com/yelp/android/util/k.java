package com.yelp.android.util;

import android.os.Parcel;
import android.os.Parcelable.Creator;

final class k
  implements Parcelable.Creator<ErrorType>
{
  public ErrorType a(Parcel paramParcel)
  {
    return ErrorType.valueOf(paramParcel.readString());
  }
  
  public ErrorType[] a(int paramInt)
  {
    return new ErrorType[paramInt];
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.util.k
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */