package com.yelp.android.serializable;

import android.os.Parcel;
import android.os.Parcelable.Creator;

final class dm
  implements Parcelable.Creator<User.EliteYear>
{
  public User.EliteYear a(Parcel paramParcel)
  {
    return new User.EliteYear(paramParcel.readInt(), User.EliteYear.TYPE.getTypeByOrdinal(paramParcel.readInt()));
  }
  
  public User.EliteYear[] a(int paramInt)
  {
    return new User.EliteYear[paramInt];
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.serializable.dm
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */