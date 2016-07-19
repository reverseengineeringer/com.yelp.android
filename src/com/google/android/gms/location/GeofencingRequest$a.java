package com.google.android.gms.location;

import com.google.android.gms.common.internal.zzx;
import com.google.android.gms.location.internal.ParcelableGeofence;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

public final class GeofencingRequest$a
{
  private final List<ParcelableGeofence> a = new ArrayList();
  private int b = 5;
  
  public static int b(int paramInt)
  {
    return paramInt & 0x7;
  }
  
  public a a(int paramInt)
  {
    b = b(paramInt);
    return this;
  }
  
  public a a(f paramf)
  {
    zzx.zzb(paramf, "geofence can't be null.");
    zzx.zzb(paramf instanceof ParcelableGeofence, "Geofence must be created using Geofence.Builder.");
    a.add((ParcelableGeofence)paramf);
    return this;
  }
  
  public a a(List<f> paramList)
  {
    if ((paramList == null) || (paramList.isEmpty())) {}
    for (;;)
    {
      return this;
      paramList = paramList.iterator();
      while (paramList.hasNext())
      {
        f localf = (f)paramList.next();
        if (localf != null) {
          a(localf);
        }
      }
    }
  }
  
  public GeofencingRequest a()
  {
    if (!a.isEmpty()) {}
    for (boolean bool = true;; bool = false)
    {
      zzx.zzb(bool, "No geofence has been added to this request.");
      return new GeofencingRequest(a, b, null);
    }
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.location.GeofencingRequest.a
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */