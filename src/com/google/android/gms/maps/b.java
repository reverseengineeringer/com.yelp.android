package com.google.android.gms.maps;

import android.os.RemoteException;
import com.google.android.gms.common.internal.zzx;
import com.google.android.gms.maps.model.CameraPosition;
import com.google.android.gms.maps.model.LatLngBounds;
import com.google.android.gms.maps.model.RuntimeRemoteException;

public final class b
{
  private static com.yelp.android.bj.a a;
  
  public static a a(CameraPosition paramCameraPosition)
  {
    try
    {
      paramCameraPosition = new a(a().a(paramCameraPosition));
      return paramCameraPosition;
    }
    catch (RemoteException paramCameraPosition)
    {
      throw new RuntimeRemoteException(paramCameraPosition);
    }
  }
  
  public static a a(LatLngBounds paramLatLngBounds, int paramInt)
  {
    try
    {
      paramLatLngBounds = new a(a().a(paramLatLngBounds, paramInt));
      return paramLatLngBounds;
    }
    catch (RemoteException paramLatLngBounds)
    {
      throw new RuntimeRemoteException(paramLatLngBounds);
    }
  }
  
  private static com.yelp.android.bj.a a()
  {
    return (com.yelp.android.bj.a)zzx.zzb(a, "CameraUpdateFactory is not initialized");
  }
  
  public static void a(com.yelp.android.bj.a parama)
  {
    a = (com.yelp.android.bj.a)zzx.zzz(parama);
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.maps.b
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */