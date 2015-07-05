package com.google.android.gms.internal;

import android.os.Parcel;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;

public class km
  implements SafeParcelable
{
  public static final kn CREATOR = new kn();
  private final int CK;
  private final ko NF;
  
  km(int paramInt, ko paramko)
  {
    CK = paramInt;
    NF = paramko;
  }
  
  private km(ko paramko)
  {
    CK = 1;
    NF = paramko;
  }
  
  public static km a(kr.b<?, ?> paramb)
  {
    if ((paramb instanceof ko)) {
      return new km((ko)paramb);
    }
    throw new IllegalArgumentException("Unsupported safe parcelable field converter class.");
  }
  
  public int describeContents()
  {
    kn localkn = CREATOR;
    return 0;
  }
  
  int getVersionCode()
  {
    return CK;
  }
  
  ko hF()
  {
    return NF;
  }
  
  public kr.b<?, ?> hG()
  {
    if (NF != null) {
      return NF;
    }
    throw new IllegalStateException("There was no converter wrapped in this ConverterWrapper.");
  }
  
  public void writeToParcel(Parcel paramParcel, int paramInt)
  {
    kn localkn = CREATOR;
    kn.a(this, paramParcel, paramInt);
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.internal.km
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */