package com.google.android.gms.ads.internal.purchase;

import android.content.ComponentName;
import android.content.Context;
import android.content.ServiceConnection;
import android.os.IBinder;
import com.google.android.gms.ads.internal.s;
import com.google.android.gms.internal.gt;

class i$1
  implements ServiceConnection
{
  i$1(i parami, Context paramContext) {}
  
  public void onServiceConnected(ComponentName paramComponentName, IBinder paramIBinder)
  {
    boolean bool = false;
    paramComponentName = new b(a.getApplicationContext(), false);
    paramComponentName.a(paramIBinder);
    int i = paramComponentName.a(3, a.getPackageName(), "inapp");
    paramIBinder = s.h();
    if (i == 0) {
      bool = true;
    }
    paramIBinder.b(bool);
    a.unbindService(this);
    paramComponentName.a();
  }
  
  public void onServiceDisconnected(ComponentName paramComponentName) {}
}

/* Location:
 * Qualified Name:     com.google.android.gms.ads.internal.purchase.i.1
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */