package com.google.android.gms.common.api;

import android.app.Activity;
import android.app.PendingIntent;
import android.content.IntentSender.SendIntentException;
import android.os.Parcel;
import android.os.Parcelable.Creator;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;
import com.google.android.gms.common.internal.zzw;
import com.google.android.gms.common.internal.zzw.zza;

public final class Status
  implements Result, SafeParcelable
{
  public static final Parcelable.Creator<Status> CREATOR = new zzc();
  public static final Status zzagC = new Status(0);
  public static final Status zzagD = new Status(14);
  public static final Status zzagE = new Status(8);
  public static final Status zzagF = new Status(15);
  public static final Status zzagG = new Status(16);
  private final PendingIntent mPendingIntent;
  private final int mVersionCode;
  private final int zzade;
  private final String zzafC;
  
  public Status(int paramInt)
  {
    this(paramInt, null);
  }
  
  Status(int paramInt1, int paramInt2, String paramString, PendingIntent paramPendingIntent)
  {
    mVersionCode = paramInt1;
    zzade = paramInt2;
    zzafC = paramString;
    mPendingIntent = paramPendingIntent;
  }
  
  public Status(int paramInt, String paramString)
  {
    this(1, paramInt, paramString, null);
  }
  
  public Status(int paramInt, String paramString, PendingIntent paramPendingIntent)
  {
    this(1, paramInt, paramString, paramPendingIntent);
  }
  
  private String zzpd()
  {
    if (zzafC != null) {
      return zzafC;
    }
    return CommonStatusCodes.getStatusCodeString(zzade);
  }
  
  public int describeContents()
  {
    return 0;
  }
  
  public boolean equals(Object paramObject)
  {
    if (!(paramObject instanceof Status)) {}
    do
    {
      return false;
      paramObject = (Status)paramObject;
    } while ((mVersionCode != mVersionCode) || (zzade != zzade) || (!zzw.equal(zzafC, zzafC)) || (!zzw.equal(mPendingIntent, mPendingIntent)));
    return true;
  }
  
  public PendingIntent getResolution()
  {
    return mPendingIntent;
  }
  
  public Status getStatus()
  {
    return this;
  }
  
  public int getStatusCode()
  {
    return zzade;
  }
  
  public String getStatusMessage()
  {
    return zzafC;
  }
  
  int getVersionCode()
  {
    return mVersionCode;
  }
  
  public boolean hasResolution()
  {
    return mPendingIntent != null;
  }
  
  public int hashCode()
  {
    return zzw.hashCode(new Object[] { Integer.valueOf(mVersionCode), Integer.valueOf(zzade), zzafC, mPendingIntent });
  }
  
  public boolean isCanceled()
  {
    return zzade == 16;
  }
  
  public boolean isInterrupted()
  {
    return zzade == 14;
  }
  
  public boolean isSuccess()
  {
    return zzade <= 0;
  }
  
  public void startResolutionForResult(Activity paramActivity, int paramInt)
    throws IntentSender.SendIntentException
  {
    if (!hasResolution()) {
      return;
    }
    paramActivity.startIntentSenderForResult(mPendingIntent.getIntentSender(), paramInt, null, 0, 0, 0);
  }
  
  public String toString()
  {
    return zzw.zzy(this).zzg("statusCode", zzpd()).zzg("resolution", mPendingIntent).toString();
  }
  
  public void writeToParcel(Parcel paramParcel, int paramInt)
  {
    zzc.zza(this, paramParcel, paramInt);
  }
  
  PendingIntent zzpc()
  {
    return mPendingIntent;
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.common.api.Status
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */