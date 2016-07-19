package com.google.android.gms.location.internal;

import android.app.PendingIntent;
import android.os.IBinder;
import android.os.Parcel;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;
import com.google.android.gms.location.q;
import com.google.android.gms.location.q.a;
import com.google.android.gms.location.r;
import com.google.android.gms.location.r.a;

public class LocationRequestUpdateData
  implements SafeParcelable
{
  public static final n CREATOR = new n();
  int a;
  LocationRequestInternal b;
  r c;
  PendingIntent d;
  q e;
  g f;
  private final int g;
  
  LocationRequestUpdateData(int paramInt1, int paramInt2, LocationRequestInternal paramLocationRequestInternal, IBinder paramIBinder1, PendingIntent paramPendingIntent, IBinder paramIBinder2, IBinder paramIBinder3)
  {
    g = paramInt1;
    a = paramInt2;
    b = paramLocationRequestInternal;
    if (paramIBinder1 == null)
    {
      paramLocationRequestInternal = null;
      c = paramLocationRequestInternal;
      d = paramPendingIntent;
      if (paramIBinder2 != null) {
        break label75;
      }
      paramLocationRequestInternal = null;
      label47:
      e = paramLocationRequestInternal;
      if (paramIBinder3 != null) {
        break label84;
      }
    }
    label75:
    label84:
    for (paramLocationRequestInternal = (LocationRequestInternal)localObject;; paramLocationRequestInternal = g.a.a(paramIBinder3))
    {
      f = paramLocationRequestInternal;
      return;
      paramLocationRequestInternal = r.a.a(paramIBinder1);
      break;
      paramLocationRequestInternal = q.a.a(paramIBinder2);
      break label47;
    }
  }
  
  public static LocationRequestUpdateData a(LocationRequestInternal paramLocationRequestInternal, PendingIntent paramPendingIntent, g paramg)
  {
    if (paramg != null) {}
    for (paramg = paramg.asBinder();; paramg = null) {
      return new LocationRequestUpdateData(1, 1, paramLocationRequestInternal, null, paramPendingIntent, null, paramg);
    }
  }
  
  public static LocationRequestUpdateData a(LocationRequestInternal paramLocationRequestInternal, r paramr, g paramg)
  {
    IBinder localIBinder = paramr.asBinder();
    if (paramg != null) {}
    for (paramr = paramg.asBinder();; paramr = null) {
      return new LocationRequestUpdateData(1, 1, paramLocationRequestInternal, localIBinder, null, null, paramr);
    }
  }
  
  public static LocationRequestUpdateData a(q paramq, g paramg)
  {
    IBinder localIBinder = paramq.asBinder();
    if (paramg != null) {}
    for (paramq = paramg.asBinder();; paramq = null) {
      return new LocationRequestUpdateData(1, 2, null, null, null, localIBinder, paramq);
    }
  }
  
  public static LocationRequestUpdateData a(r paramr, g paramg)
  {
    IBinder localIBinder = paramr.asBinder();
    if (paramg != null) {}
    for (paramr = paramg.asBinder();; paramr = null) {
      return new LocationRequestUpdateData(1, 2, null, localIBinder, null, null, paramr);
    }
  }
  
  int a()
  {
    return g;
  }
  
  IBinder b()
  {
    if (c == null) {
      return null;
    }
    return c.asBinder();
  }
  
  IBinder c()
  {
    if (e == null) {
      return null;
    }
    return e.asBinder();
  }
  
  IBinder d()
  {
    if (f == null) {
      return null;
    }
    return f.asBinder();
  }
  
  public int describeContents()
  {
    return 0;
  }
  
  public void writeToParcel(Parcel paramParcel, int paramInt)
  {
    n.a(this, paramParcel, paramInt);
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.location.internal.LocationRequestUpdateData
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */