package com.google.android.gms.maps;

import android.content.Context;
import android.os.RemoteException;
import com.google.android.gms.common.GooglePlayServicesNotAvailableException;
import com.google.android.gms.common.internal.zzx;
import com.google.android.gms.maps.model.RuntimeRemoteException;
import com.yelp.android.bj.q;
import com.yelp.android.bj.s;

public final class d
{
  private static boolean a = false;
  
  public static int a(Context paramContext)
  {
    int i = 0;
    for (;;)
    {
      try
      {
        zzx.zzb(paramContext, "Context is null");
        boolean bool = a;
        if (!bool) {
          continue;
        }
      }
      finally
      {
        try
        {
          paramContext = q.a(paramContext);
          a(paramContext);
          a = true;
        }
        catch (GooglePlayServicesNotAvailableException paramContext)
        {
          i = errorCode;
        }
        paramContext = finally;
      }
      return i;
    }
  }
  
  public static void a(s params)
  {
    try
    {
      b.a(params.a());
      com.google.android.gms.maps.model.b.a(params.b());
      return;
    }
    catch (RemoteException params)
    {
      throw new RuntimeRemoteException(params);
    }
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.maps.d
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */