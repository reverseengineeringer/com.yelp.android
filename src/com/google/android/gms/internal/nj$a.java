package com.google.android.gms.internal;

import android.location.Location;
import android.os.Handler;
import android.os.Looper;
import android.os.Message;
import android.util.Log;
import com.google.android.gms.location.LocationListener;

class nj$a
  extends Handler
{
  private final LocationListener agV;
  
  public nj$a(LocationListener paramLocationListener)
  {
    agV = paramLocationListener;
  }
  
  public nj$a(LocationListener paramLocationListener, Looper paramLooper)
  {
    super(paramLooper);
    agV = paramLocationListener;
  }
  
  public void handleMessage(Message paramMessage)
  {
    switch (what)
    {
    default: 
      Log.e("LocationClientHelper", "unknown message in LocationHandler.handleMessage");
      return;
    }
    paramMessage = new Location((Location)obj);
    agV.onLocationChanged(paramMessage);
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.internal.nj.a
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */