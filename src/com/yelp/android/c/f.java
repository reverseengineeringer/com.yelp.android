package com.yelp.android.c;

import android.os.Parcel;
import android.os.Parcelable.ClassLoaderCreator;

class f<T>
  implements Parcelable.ClassLoaderCreator<T>
{
  private final e<T> a;
  
  public f(e<T> parame)
  {
    a = parame;
  }
  
  public T createFromParcel(Parcel paramParcel)
  {
    return (T)a.a(paramParcel, null);
  }
  
  public T createFromParcel(Parcel paramParcel, ClassLoader paramClassLoader)
  {
    return (T)a.a(paramParcel, paramClassLoader);
  }
  
  public T[] newArray(int paramInt)
  {
    return a.a(paramInt);
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.c.f
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */