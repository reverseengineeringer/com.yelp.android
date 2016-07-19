package com.google.android.gms.ads.internal.request;

import android.os.Parcel;
import android.os.Parcelable.Creator;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;
import com.google.android.gms.internal.fv;

@fv
public class StringParcel
  implements SafeParcelable
{
  public static final Parcelable.Creator<StringParcel> CREATOR = new m();
  final int a;
  String b;
  
  StringParcel(int paramInt, String paramString)
  {
    a = paramInt;
    b = paramString;
  }
  
  public StringParcel(String paramString)
  {
    a = 1;
    b = paramString;
  }
  
  public String a()
  {
    return b;
  }
  
  public int describeContents()
  {
    return 0;
  }
  
  public void writeToParcel(Parcel paramParcel, int paramInt)
  {
    m.a(this, paramParcel, paramInt);
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.ads.internal.request.StringParcel
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */