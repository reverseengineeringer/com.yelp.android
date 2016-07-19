package com.google.android.gms.ads.internal.request;

import android.os.Bundle;
import android.os.Parcel;
import android.os.Parcelable.Creator;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;
import com.google.android.gms.internal.fv;

@fv
public class CapabilityParcel
  implements SafeParcelable
{
  public static final Parcelable.Creator<CapabilityParcel> CREATOR = new h();
  public final int a;
  public final boolean b;
  public final boolean c;
  public final boolean d;
  
  CapabilityParcel(int paramInt, boolean paramBoolean1, boolean paramBoolean2, boolean paramBoolean3)
  {
    a = paramInt;
    b = paramBoolean1;
    c = paramBoolean2;
    d = paramBoolean3;
  }
  
  public CapabilityParcel(boolean paramBoolean1, boolean paramBoolean2, boolean paramBoolean3)
  {
    this(2, paramBoolean1, paramBoolean2, paramBoolean3);
  }
  
  public Bundle a()
  {
    Bundle localBundle = new Bundle();
    localBundle.putBoolean("iap_supported", b);
    localBundle.putBoolean("default_iap_supported", c);
    localBundle.putBoolean("app_streaming_supported", d);
    return localBundle;
  }
  
  public int describeContents()
  {
    return 0;
  }
  
  public void writeToParcel(Parcel paramParcel, int paramInt)
  {
    h.a(this, paramParcel, paramInt);
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.ads.internal.request.CapabilityParcel
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */