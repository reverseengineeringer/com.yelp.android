package com.yelp.android.appdata.webrequests;

import android.os.Parcel;
import android.os.Parcelable.Creator;

final class BusinessMediaRequest$1
  implements Parcelable.Creator<BusinessMediaRequest>
{
  public BusinessMediaRequest a(Parcel paramParcel)
  {
    return new BusinessMediaRequest(paramParcel.readString(), paramParcel.readString(), paramParcel.readString(), paramParcel.readString(), paramParcel.readInt(), paramParcel.readInt(), null, null);
  }
  
  public BusinessMediaRequest[] a(int paramInt)
  {
    return new BusinessMediaRequest[paramInt];
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.appdata.webrequests.BusinessMediaRequest.1
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */