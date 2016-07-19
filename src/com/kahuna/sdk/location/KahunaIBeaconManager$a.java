package com.kahuna.sdk.location;

import android.bluetooth.BluetoothAdapter;
import android.util.Log;
import com.kahuna.sdk.l;
import java.util.HashSet;
import java.util.Iterator;
import java.util.Set;

class KahunaIBeaconManager$a
  implements Runnable
{
  private Object b;
  private boolean c;
  
  public void a()
  {
    synchronized (b)
    {
      c = true;
      return;
    }
  }
  
  public boolean b()
  {
    synchronized (b)
    {
      if (!c) {
        return true;
      }
      c = false;
      if (KahunaIBeaconManager.d() == KahunaIBeaconManager.ScanState.SCANNING) {
        return true;
      }
    }
    return false;
  }
  
  public void run()
  {
    for (;;)
    {
      boolean bool;
      synchronized (b)
      {
        KahunaIBeaconManager.a(KahunaIBeaconManager.ScanState.SCANNING);
        bool = c;
        if (bool) {
          break;
        }
        KahunaIBeaconManager.a(a, new HashSet(KahunaIBeaconManager.a(a)));
        KahunaIBeaconManager.a(a).clear();
        KahunaIBeaconManager.e().startLeScan(KahunaIBeaconManager.b(a));
        if (l.u()) {
          Log.d("Kahuna", "Beginning BLE Scan");
        }
        try
        {
          Thread.sleep(10000L);
          if (l.u()) {
            Log.d("Kahuna", "BLE Scan resting period");
          }
          KahunaIBeaconManager.e().stopLeScan(KahunaIBeaconManager.b(a));
          synchronized (KahunaIBeaconManager.c(KahunaIBeaconManager.f()))
          {
            Iterator localIterator = KahunaIBeaconManager.d(a).iterator();
            if (!localIterator.hasNext()) {
              break label279;
            }
            g localg = (g)localIterator.next();
            if ((!KahunaIBeaconManager.a(KahunaIBeaconManager.e(KahunaIBeaconManager.f()), localg)) || (KahunaIBeaconManager.a(KahunaIBeaconManager.a(a), localg))) {
              continue;
            }
            if (l.u()) {
              Log.d("Kahuna", "Tracking iBeacon exit for UUID: " + localg.b());
            }
            KahunaIBeaconManager.f(KahunaIBeaconManager.f()).a(localg, "exit");
          }
          synchronized (b)
          {
            bool = c;
          }
        }
        catch (Exception localException)
        {
          localException.printStackTrace();
        }
      }
      label279:
      Thread.sleep(10000L);
    }
    synchronized (b)
    {
      KahunaIBeaconManager.a(KahunaIBeaconManager.ScanState.NOT_SCANNING);
      c = false;
      return;
    }
  }
}

/* Location:
 * Qualified Name:     com.kahuna.sdk.location.KahunaIBeaconManager.a
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */