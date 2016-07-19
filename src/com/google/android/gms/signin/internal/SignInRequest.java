package com.google.android.gms.signin.internal;

import android.os.Parcel;
import android.os.Parcelable.Creator;
import com.google.android.gms.common.internal.ResolveAccountRequest;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;

public class SignInRequest
  implements SafeParcelable
{
  public static final Parcelable.Creator<SignInRequest> CREATOR = new i();
  final int a;
  final ResolveAccountRequest b;
  
  SignInRequest(int paramInt, ResolveAccountRequest paramResolveAccountRequest)
  {
    a = paramInt;
    b = paramResolveAccountRequest;
  }
  
  public SignInRequest(ResolveAccountRequest paramResolveAccountRequest)
  {
    this(1, paramResolveAccountRequest);
  }
  
  public ResolveAccountRequest a()
  {
    return b;
  }
  
  public int describeContents()
  {
    return 0;
  }
  
  public void writeToParcel(Parcel paramParcel, int paramInt)
  {
    i.a(this, paramParcel, paramInt);
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.signin.internal.SignInRequest
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */