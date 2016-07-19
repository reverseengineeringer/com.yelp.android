package com.google.android.gms.location.internal;

import android.os.Parcel;
import android.os.Parcelable.Creator;
import com.google.android.gms.common.api.Result;
import com.google.android.gms.common.api.Status;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;

public final class FusedLocationProviderResult
  implements Result, SafeParcelable
{
  public static final Parcelable.Creator<FusedLocationProviderResult> CREATOR = new e();
  public static final FusedLocationProviderResult a = new FusedLocationProviderResult(Status.zzagC);
  private final int b;
  private final Status c;
  
  FusedLocationProviderResult(int paramInt, Status paramStatus)
  {
    b = paramInt;
    c = paramStatus;
  }
  
  public FusedLocationProviderResult(Status paramStatus)
  {
    this(1, paramStatus);
  }
  
  public int a()
  {
    return b;
  }
  
  public int describeContents()
  {
    return 0;
  }
  
  public Status getStatus()
  {
    return c;
  }
  
  public void writeToParcel(Parcel paramParcel, int paramInt)
  {
    e.a(this, paramParcel, paramInt);
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.location.internal.FusedLocationProviderResult
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */