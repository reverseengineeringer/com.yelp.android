package com.google.android.gms.internal;

import android.location.Location;
import android.os.Handler;
import android.os.Looper;
import android.os.Message;
import android.util.Log;
import com.google.android.gms.location.LocationListener;
import com.google.android.gms.location.b.a;

class nj$b
  extends b.a
{
  private Handler agW;
  
  nj$b(LocationListener paramLocationListener, Looper paramLooper)
  {
    if (paramLooper == null) {}
    for (paramLocationListener = new nj.a(paramLocationListener);; paramLocationListener = new nj.a(paramLocationListener, paramLooper))
    {
      agW = paramLocationListener;
      return;
    }
  }
  
  public void onLocationChanged(Location paramLocation)
  {
    if (agW == null)
    {
      Log.e("LocationClientHelper", "Received a location in client after calling removeLocationUpdates.");
      return;
    }
    Message localMessage = Message.obtain();
    what = 1;
    obj = paramLocation;
    agW.sendMessage(localMessage);
  }
  
  public void release()
  {
    agW = null;
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.internal.nj.b
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */