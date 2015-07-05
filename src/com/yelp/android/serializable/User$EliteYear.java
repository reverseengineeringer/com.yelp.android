package com.yelp.android.serializable;

import android.os.Parcel;
import android.os.Parcelable;
import android.os.Parcelable.Creator;

public class User$EliteYear
  implements Parcelable, Comparable<EliteYear>
{
  public static Parcelable.Creator<EliteYear> CREATOR = new dm();
  public User.EliteYear.TYPE type;
  public final int year;
  
  public User$EliteYear(int paramInt, User.EliteYear.TYPE paramTYPE)
  {
    year = paramInt;
    type = paramTYPE;
  }
  
  public int compareTo(EliteYear paramEliteYear)
  {
    if (year != year) {
      return year - year;
    }
    return type.ordinal() - type.ordinal();
  }
  
  public int describeContents()
  {
    return 0;
  }
  
  public void writeToParcel(Parcel paramParcel, int paramInt)
  {
    paramParcel.writeInt(year);
    paramParcel.writeInt(type.ordinal());
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.serializable.User.EliteYear
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */