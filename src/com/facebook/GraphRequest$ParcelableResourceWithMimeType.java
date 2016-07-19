package com.facebook;

import android.content.Context;
import android.os.Parcel;
import android.os.Parcelable;
import android.os.Parcelable.Creator;

public class GraphRequest$ParcelableResourceWithMimeType<RESOURCE extends Parcelable>
  implements Parcelable
{
  public static final Parcelable.Creator<ParcelableResourceWithMimeType> CREATOR = new Parcelable.Creator()
  {
    public GraphRequest.ParcelableResourceWithMimeType a(Parcel paramAnonymousParcel)
    {
      return new GraphRequest.ParcelableResourceWithMimeType(paramAnonymousParcel, null);
    }
    
    public GraphRequest.ParcelableResourceWithMimeType[] a(int paramAnonymousInt)
    {
      return new GraphRequest.ParcelableResourceWithMimeType[paramAnonymousInt];
    }
  };
  private final String a;
  private final RESOURCE b;
  
  private GraphRequest$ParcelableResourceWithMimeType(Parcel paramParcel)
  {
    a = paramParcel.readString();
    b = paramParcel.readParcelable(g.f().getClassLoader());
  }
  
  public String a()
  {
    return a;
  }
  
  public RESOURCE b()
  {
    return b;
  }
  
  public int describeContents()
  {
    return 1;
  }
  
  public void writeToParcel(Parcel paramParcel, int paramInt)
  {
    paramParcel.writeString(a);
    paramParcel.writeParcelable(b, paramInt);
  }
}

/* Location:
 * Qualified Name:     com.facebook.GraphRequest.ParcelableResourceWithMimeType
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */