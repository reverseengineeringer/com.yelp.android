package com.yelp.android.serializable;

import android.os.Parcel;
import android.os.Parcelable;
import com.yelp.android.dc.b;
import com.yelp.android.dc.c;

abstract class _YelpHoursPair
  implements Parcelable
{
  protected int b;
  protected int c;
  
  public void a(Parcel paramParcel)
  {
    b = paramParcel.readInt();
    c = paramParcel.readInt();
  }
  
  public int b()
  {
    return c;
  }
  
  public int c()
  {
    return b;
  }
  
  public int describeContents()
  {
    return 0;
  }
  
  public boolean equals(Object paramObject)
  {
    if (paramObject == null) {}
    do
    {
      return false;
      if (paramObject == this) {
        return true;
      }
    } while (paramObject.getClass() != getClass());
    paramObject = (_YelpHoursPair)paramObject;
    return new b().a(b, b).a(c, c).a();
  }
  
  public int hashCode()
  {
    return new c().a(b).a(c).a();
  }
  
  public void writeToParcel(Parcel paramParcel, int paramInt)
  {
    paramParcel.writeInt(b);
    paramParcel.writeInt(c);
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.serializable._YelpHoursPair
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */