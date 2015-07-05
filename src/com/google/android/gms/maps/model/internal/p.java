package com.google.android.gms.maps.model.internal;

import android.os.Parcel;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;

public final class p
  implements SafeParcelable
{
  public static final q CREATOR = new q();
  private final int CK;
  private a amN;
  
  public p()
  {
    CK = 1;
  }
  
  p(int paramInt, a parama)
  {
    CK = paramInt;
    amN = parama;
  }
  
  public int describeContents()
  {
    return 0;
  }
  
  int getVersionCode()
  {
    return CK;
  }
  
  public a ol()
  {
    return amN;
  }
  
  public void writeToParcel(Parcel paramParcel, int paramInt)
  {
    q.a(this, paramParcel, paramInt);
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.maps.model.internal.p
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */