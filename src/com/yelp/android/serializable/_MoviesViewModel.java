package com.yelp.android.serializable;

import android.os.Parcel;
import android.os.Parcelable;
import com.yelp.android.dc.b;
import com.yelp.android.dc.c;
import java.util.List;

abstract class _MoviesViewModel
  implements Parcelable
{
  protected List<Movie> a;
  protected String b;
  protected String c;
  
  protected _MoviesViewModel() {}
  
  protected _MoviesViewModel(List<Movie> paramList, String paramString1, String paramString2)
  {
    this();
    a = paramList;
    b = paramString1;
    c = paramString2;
  }
  
  public String a()
  {
    return c;
  }
  
  public void a(Parcel paramParcel)
  {
    a = paramParcel.readArrayList(Movie.class.getClassLoader());
    b = ((String)paramParcel.readValue(String.class.getClassLoader()));
    c = ((String)paramParcel.readValue(String.class.getClassLoader()));
  }
  
  public String b()
  {
    return b;
  }
  
  public List<Movie> c()
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
    paramObject = (_MoviesViewModel)paramObject;
    return new b().a(a, a).a(b, b).a(c, c).a();
  }
  
  public int hashCode()
  {
    return new c().a(a).a(b).a(c).a();
  }
  
  public void writeToParcel(Parcel paramParcel, int paramInt)
  {
    paramParcel.writeList(a);
    paramParcel.writeValue(b);
    paramParcel.writeValue(c);
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.serializable._MoviesViewModel
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */