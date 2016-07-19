package com.google.android.gms.location.internal;

import android.location.Location;
import android.os.Handler;
import android.os.Looper;
import android.os.Message;
import android.util.Log;
import com.google.android.gms.location.j;

class k$b
  extends Handler
{
  private final j a;
  
  public k$b(j paramj)
  {
    a = paramj;
  }
  
  public k$b(j paramj, Looper paramLooper)
  {
    super(paramLooper);
    a = paramj;
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
    a.a(paramMessage);
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.location.internal.k.b
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */