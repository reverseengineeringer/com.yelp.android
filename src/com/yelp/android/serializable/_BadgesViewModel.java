package com.yelp.android.serializable;

import android.os.Parcel;
import android.os.Parcelable;
import com.yelp.android.dc.b;
import com.yelp.android.dc.c;
import java.util.List;

abstract class _BadgesViewModel
  implements Parcelable
{
  protected List<Badge> a;
  protected String b;
  
  protected _BadgesViewModel() {}
  
  protected _BadgesViewModel(List<Badge> paramList, String paramString)
  {
    this();
    a = paramList;
    b = paramString;
  }
  
  public String a()
  {
    return b;
  }
  
  public void a(Parcel paramParcel)
  {
    a = paramParcel.readArrayList(Badge.class.getClassLoader());
    b = ((String)paramParcel.readValue(String.class.getClassLoader()));
  }
  
  public List<Badge> b()
  {
    return a;
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
    paramObject = (_BadgesViewModel)paramObject;
    return new b().a(a, a).a(b, b).a();
  }
  
  public int hashCode()
  {
    return new c().a(a).a(b).a();
  }
  
  public void writeToParcel(Parcel paramParcel, int paramInt)
  {
    paramParcel.writeList(a);
    paramParcel.writeValue(b);
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.serializable._BadgesViewModel
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */