package com.yelp.android.c;

import android.os.Parcel;
import android.os.Parcelable.Creator;

class d<T>
  implements Parcelable.Creator<T>
{
  final e<T> a;
  
  public d(e<T> parame)
  {
    a = parame;
  }
  
  public T createFromParcel(Parcel paramParcel)
  {
    return (T)a.a(paramParcel, null);
  }
  
  public T[] newArray(int paramInt)
  {
    return a.a(paramInt);
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.c.d
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */