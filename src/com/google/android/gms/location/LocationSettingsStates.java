package com.google.android.gms.location;

import android.os.Parcel;
import android.os.Parcelable.Creator;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;

public final class LocationSettingsStates
  implements SafeParcelable
{
  public static final Parcelable.Creator<LocationSettingsStates> CREATOR = new v();
  private final int a;
  private final boolean b;
  private final boolean c;
  private final boolean d;
  private final boolean e;
  private final boolean f;
  private final boolean g;
  
  LocationSettingsStates(int paramInt, boolean paramBoolean1, boolean paramBoolean2, boolean paramBoolean3, boolean paramBoolean4, boolean paramBoolean5, boolean paramBoolean6)
  {
    a = paramInt;
    b = paramBoolean1;
    c = paramBoolean2;
    d = paramBoolean3;
    e = paramBoolean4;
    f = paramBoolean5;
    g = paramBoolean6;
  }
  
  public int a()
  {
    return a;
  }
  
  public boolean b()
  {
    return b;
  }
  
  public boolean c()
  {
    return e;
  }
  
  public boolean d()
  {
    return c;
  }
  
  public int describeContents()
  {
    return 0;
  }
  
  public boolean e()
  {
    return f;
  }
  
  public boolean f()
  {
    return d;
  }
  
  public boolean g()
  {
    return g;
  }
  
  public void writeToParcel(Parcel paramParcel, int paramInt)
  {
    v.a(this, paramParcel, paramInt);
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.location.LocationSettingsStates
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */