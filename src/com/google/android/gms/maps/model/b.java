package com.google.android.gms.maps.model;

import android.graphics.Bitmap;
import android.os.RemoteException;
import com.google.android.gms.common.internal.zzx;

public final class b
{
  private static com.yelp.android.bk.b a;
  
  public static a a(int paramInt)
  {
    try
    {
      a locala = new a(a().a(paramInt));
      return locala;
    }
    catch (RemoteException localRemoteException)
    {
      throw new RuntimeRemoteException(localRemoteException);
    }
  }
  
  public static a a(Bitmap paramBitmap)
  {
    try
    {
      paramBitmap = new a(a().a(paramBitmap));
      return paramBitmap;
    }
    catch (RemoteException paramBitmap)
    {
      throw new RuntimeRemoteException(paramBitmap);
    }
  }
  
  private static com.yelp.android.bk.b a()
  {
    return (com.yelp.android.bk.b)zzx.zzb(a, "IBitmapDescriptorFactory is not initialized");
  }
  
  public static void a(com.yelp.android.bk.b paramb)
  {
    if (a != null) {
      return;
    }
    a = (com.yelp.android.bk.b)zzx.zzz(paramb);
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.maps.model.b
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */