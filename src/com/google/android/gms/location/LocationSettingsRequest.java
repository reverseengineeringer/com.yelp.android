package com.google.android.gms.location;

import android.os.Parcel;
import android.os.Parcelable.Creator;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;
import java.util.Collections;
import java.util.List;

public final class LocationSettingsRequest
  implements SafeParcelable
{
  public static final Parcelable.Creator<LocationSettingsRequest> CREATOR = new t();
  private final int a;
  private final List<LocationRequest> b;
  private final boolean c;
  private final boolean d;
  
  LocationSettingsRequest(int paramInt, List<LocationRequest> paramList, boolean paramBoolean1, boolean paramBoolean2)
  {
    a = paramInt;
    b = paramList;
    c = paramBoolean1;
    d = paramBoolean2;
  }
  
  public int a()
  {
    return a;
  }
  
  public List<LocationRequest> b()
  {
    return Collections.unmodifiableList(b);
  }
  
  public boolean c()
  {
    return c;
  }
  
  public boolean d()
  {
    return d;
  }
  
  public int describeContents()
  {
    return 0;
  }
  
  public void writeToParcel(Parcel paramParcel, int paramInt)
  {
    t.a(this, paramParcel, paramInt);
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.location.LocationSettingsRequest
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */