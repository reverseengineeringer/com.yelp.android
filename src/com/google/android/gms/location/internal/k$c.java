package com.google.android.gms.location.internal;

import android.location.Location;
import android.os.Handler;
import android.os.Looper;
import android.os.Message;
import android.util.Log;
import com.google.android.gms.common.internal.zzx;
import com.google.android.gms.location.j;
import com.google.android.gms.location.r.a;

class k$c
  extends r.a
{
  private Handler a;
  
  k$c(j paramj, Looper paramLooper)
  {
    boolean bool;
    if (paramLooper == null)
    {
      if (Looper.myLooper() != null)
      {
        bool = true;
        zzx.zza(bool, "Can't create handler inside thread that has not called Looper.prepare()");
      }
    }
    else {
      if (paramLooper != null) {
        break label46;
      }
    }
    label46:
    for (paramj = new k.b(paramj);; paramj = new k.b(paramj, paramLooper))
    {
      a = paramj;
      return;
      bool = false;
      break;
    }
  }
  
  public void a()
  {
    a = null;
  }
  
  public void a(Location paramLocation)
  {
    if (a == null)
    {
      Log.e("LocationClientHelper", "Received a location in client after calling removeLocationUpdates.");
      return;
    }
    Message localMessage = Message.obtain();
    what = 1;
    obj = paramLocation;
    a.sendMessage(localMessage);
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.location.internal.k.c
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */