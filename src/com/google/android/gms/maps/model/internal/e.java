package com.google.android.gms.maps.model.internal;

import android.os.Parcel;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;

public final class e
  implements SafeParcelable
{
  public static final f CREATOR = new f();
  private final int CK;
  private a amM;
  
  public e()
  {
    CK = 1;
  }
  
  e(int paramInt, a parama)
  {
    CK = paramInt;
    amM = parama;
  }
  
  public int describeContents()
  {
    return 0;
  }
  
  int getVersionCode()
  {
    return CK;
  }
  
  public a oj()
  {
    return amM;
  }
  
  public void writeToParcel(Parcel paramParcel, int paramInt)
  {
    f.a(this, paramParcel, paramInt);
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.maps.model.internal.e
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */