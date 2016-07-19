package com.yelp.android.serializable;

import android.os.Parcel;
import android.os.Parcelable;
import com.yelp.android.dc.b;
import com.yelp.android.dc.c;
import java.util.List;

abstract class _Feedback
  implements Parcelable
{
  protected List<String> a;
  protected int b;
  
  protected _Feedback() {}
  
  protected _Feedback(List<String> paramList, int paramInt)
  {
    this();
    a = paramList;
    b = paramInt;
  }
  
  public void a(Parcel paramParcel)
  {
    a = paramParcel.createStringArrayList();
    b = paramParcel.readInt();
  }
  
  public int d()
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
    paramObject = (_Feedback)paramObject;
    return new b().a(a, a).a(b, b).a();
  }
  
  public int hashCode()
  {
    return new c().a(a).a(b).a();
  }
  
  public void writeToParcel(Parcel paramParcel, int paramInt)
  {
    paramParcel.writeStringList(a);
    paramParcel.writeInt(b);
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.serializable._Feedback
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */