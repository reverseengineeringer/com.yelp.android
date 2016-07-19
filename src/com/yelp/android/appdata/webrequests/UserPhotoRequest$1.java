package com.yelp.android.appdata.webrequests;

import android.os.Parcel;
import android.os.Parcelable.Creator;

final class UserPhotoRequest$1
  implements Parcelable.Creator<UserPhotoRequest>
{
  public UserPhotoRequest a(Parcel paramParcel)
  {
    String str = paramParcel.readString();
    int i = paramParcel.readInt();
    int j = paramParcel.readInt();
    return new UserPhotoRequest(str, paramParcel.readInt(), i, j, null);
  }
  
  public UserPhotoRequest[] a(int paramInt)
  {
    return new UserPhotoRequest[paramInt];
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.appdata.webrequests.UserPhotoRequest.1
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */