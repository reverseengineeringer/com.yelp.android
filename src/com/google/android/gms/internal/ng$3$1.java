package com.google.android.gms.internal;

import android.app.PendingIntent;
import android.util.Log;
import com.google.android.gms.location.LocationStatusCodes;
import com.google.android.gms.location.c.b;

class ng$3$1
  implements c.b
{
  ng$3$1(ng.3 param3) {}
  
  public void a(int paramInt, PendingIntent paramPendingIntent)
  {
    Log.wtf("GeofencingImpl", "PendingIntent callback shouldn't have been called");
  }
  
  public void b(int paramInt, String[] paramArrayOfString)
  {
    agR.b(LocationStatusCodes.eD(paramInt));
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.internal.ng.3.1
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */