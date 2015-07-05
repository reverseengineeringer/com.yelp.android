package com.yelp.android.appdata.webrequests;

import android.os.Parcel;
import android.os.Parcelable.Creator;

final class x
  implements Parcelable.Creator<BusinessMediaRequest>
{
  public BusinessMediaRequest a(Parcel paramParcel)
  {
    String str1 = paramParcel.readString();
    String str2 = paramParcel.readString();
    String str3 = paramParcel.readString();
    int i = paramParcel.readInt();
    int j = paramParcel.readInt();
    if (str2 != null) {
      return BusinessMediaRequest.photosStartingAtSpecificPhoto(str1, str2, j);
    }
    if (str3 != null) {
      return BusinessMediaRequest.singleVideo(str1, str3);
    }
    return new BusinessMediaRequest(str1, i, j);
  }
  
  public BusinessMediaRequest[] a(int paramInt)
  {
    return new BusinessMediaRequest[paramInt];
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.appdata.webrequests.x
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */