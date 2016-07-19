package com.google.android.gms.location;

import android.os.Parcel;
import android.os.Parcelable.Creator;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;
import com.google.android.gms.common.internal.zzx;
import com.google.android.gms.location.internal.ParcelableGeofence;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

public class GeofencingRequest
  implements SafeParcelable
{
  public static final Parcelable.Creator<GeofencingRequest> CREATOR = new o();
  private final int a;
  private final List<ParcelableGeofence> b;
  private final int c;
  
  GeofencingRequest(int paramInt1, List<ParcelableGeofence> paramList, int paramInt2)
  {
    a = paramInt1;
    b = paramList;
    c = paramInt2;
  }
  
  private GeofencingRequest(List<ParcelableGeofence> paramList, int paramInt)
  {
    this(1, paramList, paramInt);
  }
  
  public int a()
  {
    return a;
  }
  
  public List<ParcelableGeofence> b()
  {
    return b;
  }
  
  public int c()
  {
    return c;
  }
  
  public int describeContents()
  {
    return 0;
  }
  
  public void writeToParcel(Parcel paramParcel, int paramInt)
  {
    o.a(this, paramParcel, paramInt);
  }
  
  public static final class a
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
}

/* Location:
 * Qualified Name:     com.google.android.gms.location.GeofencingRequest
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */