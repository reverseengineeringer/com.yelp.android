package com.google.android.gms.location;

import android.content.Intent;
import android.location.Location;
import com.google.android.gms.location.internal.ParcelableGeofence;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

public class h
{
  private final int a;
  private final int b;
  private final List<f> c;
  private final Location d;
  
  private h(int paramInt1, int paramInt2, List<f> paramList, Location paramLocation)
  {
    a = paramInt1;
    b = paramInt2;
    c = paramList;
    d = paramLocation;
  }
  
  public static h a(Intent paramIntent)
  {
    if (paramIntent == null) {
      return null;
    }
    return new h(paramIntent.getIntExtra("gms_error_code", -1), b(paramIntent), c(paramIntent), (Location)paramIntent.getParcelableExtra("com.google.android.location.intent.extra.triggering_location"));
  }
  
  private static int b(Intent paramIntent)
  {
    int i = paramIntent.getIntExtra("com.google.android.location.intent.extra.transition", -1);
    if (i == -1) {}
    while ((i != 1) && (i != 2) && (i != 4)) {
      return -1;
    }
    return i;
  }
  
  private static List<f> c(Intent paramIntent)
  {
    Object localObject = (ArrayList)paramIntent.getSerializableExtra("com.google.android.location.intent.extra.geofence_list");
    if (localObject == null) {
      return null;
    }
    paramIntent = new ArrayList(((ArrayList)localObject).size());
    localObject = ((ArrayList)localObject).iterator();
    while (((Iterator)localObject).hasNext()) {
      paramIntent.add(ParcelableGeofence.a((byte[])((Iterator)localObject).next()));
    }
    return paramIntent;
  }
  
  public boolean a()
  {
    return a != -1;
  }
  
  public int b()
  {
    return a;
  }
  
  public int c()
  {
    return b;
  }
  
  public List<f> d()
  {
    return c;
  }
  
  public Location e()
  {
    return d;
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.location.h
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */