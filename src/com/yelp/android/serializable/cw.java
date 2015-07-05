package com.yelp.android.serializable;

import android.os.Parcel;
import android.os.Parcelable.Creator;

final class cw
  implements Parcelable.Creator<Royal>
{
  public Royal a(Parcel paramParcel)
  {
    return new Royal(paramParcel, null);
  }
  
  public Royal[] a(int paramInt)
  {
    return new Royal[paramInt];
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.serializable.cw
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */