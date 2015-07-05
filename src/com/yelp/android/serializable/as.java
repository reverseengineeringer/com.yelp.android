package com.yelp.android.serializable;

import android.os.Parcel;
import android.os.Parcelable.Creator;
import java.util.Calendar;
import java.util.EnumSet;

final class as
  implements Parcelable.Creator<Filter>
{
  public Filter a(Parcel paramParcel)
  {
    EnumSet localEnumSet = (EnumSet)paramParcel.readSerializable();
    Calendar localCalendar = (Calendar)paramParcel.readSerializable();
    String str = paramParcel.readString();
    double d = paramParcel.readDouble();
    int i = paramParcel.readInt();
    paramParcel = (AttributeFilters)paramParcel.readParcelable(AttributeFilters.class.getClassLoader());
    return new Filter(localEnumSet, localCalendar, new at(str, d), Filter.Sort.values()[i], paramParcel);
  }
  
  public Filter[] a(int paramInt)
  {
    return new Filter[paramInt];
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.serializable.as
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */