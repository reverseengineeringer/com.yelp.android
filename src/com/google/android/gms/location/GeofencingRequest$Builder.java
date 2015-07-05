package com.google.android.gms.location;

import com.google.android.gms.internal.jx;
import com.google.android.gms.internal.nn;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

public final class GeofencingRequest$Builder
{
  private final List<nn> ago = new ArrayList();
  private int agp = 5;
  
  public static int ew(int paramInt)
  {
    return paramInt & 0x7;
  }
  
  public Builder addGeofence(Geofence paramGeofence)
  {
    jx.b(paramGeofence, "geofence can't be null.");
    jx.b(paramGeofence instanceof nn, "Geofence must be created using Geofence.Builder.");
    ago.add((nn)paramGeofence);
    return this;
  }
  
  public Builder addGeofences(List<Geofence> paramList)
  {
    if ((paramList == null) || (paramList.isEmpty())) {}
    for (;;)
    {
      return this;
      paramList = paramList.iterator();
      while (paramList.hasNext())
      {
        Geofence localGeofence = (Geofence)paramList.next();
        if (localGeofence != null) {
          addGeofence(localGeofence);
        }
      }
    }
  }
  
  public GeofencingRequest build()
  {
    if (!ago.isEmpty()) {}
    for (boolean bool = true;; bool = false)
    {
      jx.b(bool, "No geofence has been added to this request.");
      return new GeofencingRequest(ago, agp, null);
    }
  }
  
  public Builder setInitialTrigger(int paramInt)
  {
    agp = ew(paramInt);
    return this;
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.location.GeofencingRequest.Builder
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */