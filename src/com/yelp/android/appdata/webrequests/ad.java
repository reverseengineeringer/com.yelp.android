package com.yelp.android.appdata.webrequests;

import android.location.Location;
import android.os.Parcel;
import android.os.Parcelable.Creator;
import com.yelp.android.serializable.Category;
import com.yelp.android.serializable.Filter;
import java.util.ArrayList;
import java.util.Collection;
import java.util.EnumSet;
import java.util.List;

final class ad
  implements Parcelable.Creator<BusinessSearchRequest>
{
  public BusinessSearchRequest a(Parcel paramParcel)
  {
    boolean bool = true;
    BusinessSearchRequest localBusinessSearchRequest = new BusinessSearchRequest();
    localBusinessSearchRequest.setSearchTerms(paramParcel.readString());
    localBusinessSearchRequest.setTermNear(paramParcel.readString());
    localBusinessSearchRequest.setFormatMode(BusinessSearchRequest.FormatMode.values()[paramParcel.readInt()]);
    localBusinessSearchRequest.setSearchMode(BusinessSearchRequest.SearchMode.values()[paramParcel.readInt()]);
    Object localObject = new ArrayList();
    paramParcel.readList((List)localObject, SearchRequest.SearchOption.class.getClassLoader());
    BusinessSearchRequest.access$200(localBusinessSearchRequest).addAll((Collection)localObject);
    if (paramParcel.readByte() == 1) {}
    for (;;)
    {
      localBusinessSearchRequest.setUnFoldedResults(bool);
      localBusinessSearchRequest.setFilter((Filter)paramParcel.readParcelable(BusinessSearchRequest.class.getClassLoader()));
      localBusinessSearchRequest.setLimit(paramParcel.readInt());
      localBusinessSearchRequest.setLocation((Location)paramParcel.readParcelable(BusinessSearchRequest.class.getClassLoader()));
      localBusinessSearchRequest.setCategory((Category)paramParcel.readParcelable(BusinessSearchRequest.class.getClassLoader()));
      int i = paramParcel.readInt();
      if (i > 0)
      {
        localObject = new double[i];
        paramParcel.readDoubleArray((double[])localObject);
        localBusinessSearchRequest.setRegion((double[])localObject);
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
 * Qualified Name:     com.yelp.android.appdata.webrequests.ad
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */