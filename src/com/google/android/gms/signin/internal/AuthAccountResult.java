package com.google.android.gms.signin.internal;

import android.content.Intent;
import android.os.Parcel;
import android.os.Parcelable.Creator;
import com.google.android.gms.common.api.Result;
import com.google.android.gms.common.api.Status;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;

public class AuthAccountResult
  implements Result, SafeParcelable
{
  public static final Parcelable.Creator<AuthAccountResult> CREATOR = new a();
  final int a;
  private int b;
  private Intent c;
  
  public AuthAccountResult()
  {
    this(0, null);
  }
  
  AuthAccountResult(int paramInt1, int paramInt2, Intent paramIntent)
  {
    a = paramInt1;
    b = paramInt2;
    c = paramIntent;
  }
  
  public AuthAccountResult(int paramInt, Intent paramIntent)
  {
    this(2, paramInt, paramIntent);
  }
  
  public int a()
  {
    return b;
  }
  
  public Intent b()
  {
    return c;
  }
  
  public int describeContents()
  {
    return 0;
  }
  
  public Status getStatus()
  {
    if (b == 0) {
      return Status.zzagC;
    }
    return Status.zzagG;
  }
  
  public void writeToParcel(Parcel paramParcel, int paramInt)
  {
    a.a(this, paramParcel, paramInt);
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.signin.internal.AuthAccountResult
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */