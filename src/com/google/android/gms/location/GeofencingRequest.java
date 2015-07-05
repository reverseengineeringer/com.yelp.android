package com.google.android.gms.location;

import android.os.Parcel;
import android.os.Parcelable.Creator;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;
import com.google.android.gms.internal.nn;
import java.util.ArrayList;
import java.util.List;

public class GeofencingRequest
  implements SafeParcelable
{
  public static final Parcelable.Creator<GeofencingRequest> CREATOR = new a();
  public static final int INITIAL_TRIGGER_DWELL = 4;
  public static final int INITIAL_TRIGGER_ENTER = 1;
  public static final int INITIAL_TRIGGER_EXIT = 2;
  private final int CK;
  private final List<nn> ago;
  private final int agp;
  
  GeofencingRequest(int paramInt1, List<nn> paramList, int paramInt2)
  {
    CK = paramInt1;
    ago = paramList;
    agp = paramInt2;
  }
  
  private GeofencingRequest(List<nn> paramList, int paramInt)
  {
    this(1, paramList, paramInt);
  }
  
  public int describeContents()
  {
    return 0;
  }
  
  public List<Geofence> getGeofences()
  {
    ArrayList localArrayList = new ArrayList();
    localArrayList.addAll(ago);
    return localArrayList;
  }
  
  public int getInitialTrigger()
  {
    return agp;
  }
  
  public int getVersionCode()
  {
    return CK;
  }
  
  public List<nn> ng()
  {
    return ago;
  }
  
  public void writeToParcel(Parcel paramParcel, int paramInt)
  {
    a.a(this, paramParcel, paramInt);
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.location.GeofencingRequest
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */