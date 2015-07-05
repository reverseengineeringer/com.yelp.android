package com.yelp.android.appdata.webrequests;

import android.os.Parcel;
import android.os.Parcelable.Creator;

final class gr
  implements Parcelable.Creator<UserLocalMediaRequest>
{
  public UserLocalMediaRequest a(Parcel paramParcel)
  {
    return new UserLocalMediaRequest(paramParcel.readString(), paramParcel.readString(), paramParcel.readInt(), paramParcel.readInt(), null);
  }
  
  public UserLocalMediaRequest[] a(int paramInt)
  {
    return new UserLocalMediaRequest[paramInt];
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.appdata.webrequests.gr
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */