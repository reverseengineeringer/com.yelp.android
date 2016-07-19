package com.yelp.android.appdata.webrequests;

import android.location.Location;
import android.os.Parcel;
import android.os.Parcelable.Creator;
import com.yelp.android.serializable.Category;
import com.yelp.android.serializable.Filter;

final class BusinessSearchRequest$1
  implements Parcelable.Creator<BusinessSearchRequest>
{
  public BusinessSearchRequest a(Parcel paramParcel)
  {
    boolean bool = true;
    BusinessSearchRequest localBusinessSearchRequest = new BusinessSearchRequest();
    localBusinessSearchRequest.g(paramParcel.readString());
    localBusinessSearchRequest.e(paramParcel.readString());
    localBusinessSearchRequest.a(BusinessSearchRequest.FormatMode.values()[paramParcel.readInt()]);
    localBusinessSearchRequest.a(BusinessSearchRequest.SearchMode.values()[paramParcel.readInt()]);
    if (paramParcel.readByte() == 1) {}
    for (;;)
    {
      localBusinessSearchRequest.b(bool);
      localBusinessSearchRequest.a((Filter)paramParcel.readParcelable(BusinessSearchRequest.class.getClassLoader()));
      localBusinessSearchRequest.b(paramParcel.readInt());
      localBusinessSearchRequest.b((Location)paramParcel.readParcelable(BusinessSearchRequest.class.getClassLoader()));
      localBusinessSearchRequest.a((Category)paramParcel.readParcelable(BusinessSearchRequest.class.getClassLoader()));
      int i = paramParcel.readInt();
      if (i > 0)
      {
        double[] arrayOfDouble = new double[i];
        paramParcel.readDoubleArray(arrayOfDouble);
        localBusinessSearchRequest.a(arrayOfDouble);
      }
      return localBusinessSearchRequest;
      bool = false;
    }
  }
  
  public BusinessSearchRequest[] a(int paramInt)
  {
    return new BusinessSearchRequest[paramInt];
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.appdata.webrequests.BusinessSearchRequest.1
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */