package com.google.android.gms.location;

import android.os.Parcel;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;
import com.google.android.gms.internal.jv;

public class e
  implements SafeParcelable
{
  public static final f CREATOR = new f();
  private final int CK;
  int agw;
  int agx;
  long agy;
  
  public e(int paramInt1, int paramInt2, int paramInt3, long paramLong)
  {
    CK = paramInt1;
    agw = paramInt2;
    agx = paramInt3;
    agy = paramLong;
  }
  
  private String eB(int paramInt)
  {
    switch (paramInt)
    {
    case 1: 
    default: 
      return "STATUS_UNKNOWN";
    case 0: 
      return "STATUS_SUCCESSFUL";
    case 2: 
      return "STATUS_TIMED_OUT_ON_SCAN";
    case 3: 
      return "STATUS_NO_INFO_IN_DATABASE";
    case 4: 
      return "STATUS_INVALID_SCAN";
    case 5: 
      return "STATUS_UNABLE_TO_QUERY_DATABASE";
    case 6: 
      return "STATUS_SCANS_DISABLED_IN_SETTINGS";
    case 7: 
      return "STATUS_LOCATION_DISABLED_IN_SETTINGS";
    }
    return "STATUS_IN_PROGRESS";
  }
  
  public int describeContents()
  {
    return 0;
  }
  
  public boolean equals(Object paramObject)
  {
    if (!(paramObject instanceof e)) {}
    do
    {
      return false;
      paramObject = (e)paramObject;
    } while ((agw != agw) || (agx != agx) || (agy != agy));
    return true;
  }
  
  int getVersionCode()
  {
    return CK;
  }
  
  public int hashCode()
  {
    return jv.hashCode(new Object[] { Integer.valueOf(agw), Integer.valueOf(agx), Long.valueOf(agy) });
  }
  
  public String toString()
  {
    StringBuilder localStringBuilder = new StringBuilder();
    localStringBuilder.append("LocationStatus[cell status: ").append(eB(agw));
    localStringBuilder.append(", wifi status: ").append(eB(agx));
    localStringBuilder.append(", elapsed realtime ns: ").append(agy);
    localStringBuilder.append(']');
    return localStringBuilder.toString();
  }
  
  public void writeToParcel(Parcel paramParcel, int paramInt)
  {
    f.a(this, paramParcel, paramInt);
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.location.e
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */