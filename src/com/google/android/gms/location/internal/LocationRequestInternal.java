package com.google.android.gms.location.internal;

import android.os.Parcel;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;
import com.google.android.gms.common.internal.zzw;
import com.google.android.gms.location.LocationRequest;
import java.util.Collections;
import java.util.List;

public class LocationRequestInternal
  implements SafeParcelable
{
  public static final m CREATOR = new m();
  static final List<ClientIdentity> a = ;
  LocationRequest b;
  boolean c;
  boolean d;
  boolean e;
  List<ClientIdentity> f;
  String g;
  boolean h;
  private final int i;
  
  LocationRequestInternal(int paramInt, LocationRequest paramLocationRequest, boolean paramBoolean1, boolean paramBoolean2, boolean paramBoolean3, List<ClientIdentity> paramList, String paramString, boolean paramBoolean4)
  {
    i = paramInt;
    b = paramLocationRequest;
    c = paramBoolean1;
    d = paramBoolean2;
    e = paramBoolean3;
    f = paramList;
    g = paramString;
    h = paramBoolean4;
  }
  
  @Deprecated
  public static LocationRequestInternal a(LocationRequest paramLocationRequest)
  {
    return a(null, paramLocationRequest);
  }
  
  public static LocationRequestInternal a(String paramString, LocationRequest paramLocationRequest)
  {
    return new LocationRequestInternal(1, paramLocationRequest, false, true, true, a, paramString, false);
  }
  
  int a()
  {
    return i;
  }
  
  public int describeContents()
  {
    return 0;
  }
  
  public boolean equals(Object paramObject)
  {
    if (!(paramObject instanceof LocationRequestInternal)) {}
    do
    {
      return false;
      paramObject = (LocationRequestInternal)paramObject;
    } while ((!zzw.equal(b, b)) || (c != c) || (d != d) || (e != e) || (h != h) || (!zzw.equal(f, f)));
    return true;
  }
  
  public int hashCode()
  {
    return b.hashCode();
  }
  
  public String toString()
  {
    StringBuilder localStringBuilder = new StringBuilder();
    localStringBuilder.append(b.toString());
    if (g != null) {
      localStringBuilder.append(" tag=").append(g);
    }
    localStringBuilder.append(" nlpDebug=").append(c);
    localStringBuilder.append(" trigger=").append(e);
    localStringBuilder.append(" restorePIListeners=").append(d);
    localStringBuilder.append(" hideAppOps=").append(h);
    localStringBuilder.append(" clients=").append(f);
    return localStringBuilder.toString();
  }
  
  public void writeToParcel(Parcel paramParcel, int paramInt)
  {
    m.a(this, paramParcel, paramInt);
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.location.internal.LocationRequestInternal
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */