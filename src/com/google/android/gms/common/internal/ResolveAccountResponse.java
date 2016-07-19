package com.google.android.gms.common.internal;

import android.os.IBinder;
import android.os.Parcel;
import android.os.Parcelable.Creator;
import com.google.android.gms.common.ConnectionResult;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;

public class ResolveAccountResponse
  implements SafeParcelable
{
  public static final Parcelable.Creator<ResolveAccountResponse> CREATOR = new zzz();
  final int mVersionCode;
  private boolean zzahx;
  IBinder zzakA;
  private ConnectionResult zzams;
  private boolean zzamt;
  
  ResolveAccountResponse(int paramInt, IBinder paramIBinder, ConnectionResult paramConnectionResult, boolean paramBoolean1, boolean paramBoolean2)
  {
    mVersionCode = paramInt;
    zzakA = paramIBinder;
    zzams = paramConnectionResult;
    zzahx = paramBoolean1;
    zzamt = paramBoolean2;
  }
  
  public int describeContents()
  {
    return 0;
  }
  
  public boolean equals(Object paramObject)
  {
    if (this == paramObject) {}
    do
    {
      return true;
      if (!(paramObject instanceof ResolveAccountResponse)) {
        return false;
      }
      paramObject = (ResolveAccountResponse)paramObject;
    } while ((zzams.equals(zzams)) && (zzqX().equals(((ResolveAccountResponse)paramObject).zzqX())));
    return false;
  }
  
  public void writeToParcel(Parcel paramParcel, int paramInt)
  {
    zzz.zza(this, paramParcel, paramInt);
  }
  
  public zzp zzqX()
  {
    return zzp.zza.zzaP(zzakA);
  }
  
  public ConnectionResult zzqY()
  {
    return zzams;
  }
  
  public boolean zzqZ()
  {
    return zzahx;
  }
  
  public boolean zzra()
  {
    return zzamt;
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.common.internal.ResolveAccountResponse
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */