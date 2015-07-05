package com.google.android.gms.internal;

import android.app.PendingIntent;
import android.util.Log;
import com.google.android.gms.location.LocationStatusCodes;
import com.google.android.gms.location.c.b;

class ng$2$1
  implements c.b
{
  ng$2$1(ng.2 param2) {}
  
  public void a(int paramInt, PendingIntent paramPendingIntent)
  {
    agP.b(LocationStatusCodes.eD(paramInt));
  }
  
  public void b(int paramInt, String[] paramArrayOfString)
  {
    Log.wtf("GeofencingImpl", "Request ID callback shouldn't have been called");
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.internal.ng.2.1
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */