package com.google.android.gms.location;

import android.content.Intent;
import android.location.Location;
import android.os.Bundle;
import android.os.Parcel;
import android.os.Parcelable.Creator;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;

public final class LocationResult
  implements SafeParcelable
{
  public static final Parcelable.Creator<LocationResult> CREATOR = new s();
  static final List<Location> a = ;
  private final int b;
  private final List<Location> c;
  
  LocationResult(int paramInt, List<Location> paramList)
  {
    b = paramInt;
    c = paramList;
  }
  
  public static boolean a(Intent paramIntent)
  {
    if (paramIntent == null) {
      return false;
    }
    return paramIntent.hasExtra("com.google.android.gms.location.EXTRA_LOCATION_RESULT");
  }
  
  public static LocationResult b(Intent paramIntent)
  {
    if (!a(paramIntent)) {
      return null;
    }
    return (LocationResult)paramIntent.getExtras().getParcelable("com.google.android.gms.location.EXTRA_LOCATION_RESULT");
  }
  
  public Location a()
  {
    int i = c.size();
    if (i == 0) {
      return null;
    }
    return (Location)c.get(i - 1);
  }
  
  public List<Location> b()
  {
    return c;
  }
  
  int c()
  {
    return b;
  }
  
  public int describeContents()
  {
    return 0;
  }
  
  public boolean equals(Object paramObject)
  {
    if (!(paramObject instanceof LocationResult)) {
      return false;
    }
    paramObject = (LocationResult)paramObject;
    if (c.size() != c.size()) {
      return false;
    }
    paramObject = c.iterator();
    Iterator localIterator = c.iterator();
    while (((Iterator)paramObject).hasNext())
    {
      Location localLocation1 = (Location)localIterator.next();
      Location localLocation2 = (Location)((Iterator)paramObject).next();
      if (localLocation1.getTime() != localLocation2.getTime()) {
        return false;
      }
    }
    return true;
  }
  
  public int hashCode()
  {
    Iterator localIterator = c.iterator();
    long l;
    for (int i = 17; localIterator.hasNext(); i = (int)(l ^ l >>> 32) + i * 31) {
      l = ((Location)localIterator.next()).getTime();
    }
    return i;
  }
  
  public String toString()
  {
    return "LocationResult[locations: " + c + "]";
  }
  
  public void writeToParcel(Parcel paramParcel, int paramInt)
  {
    s.a(this, paramParcel, paramInt);
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.location.LocationResult
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */