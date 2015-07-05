package com.kahuna.sdk.location;

import android.bluetooth.BluetoothAdapter;
import android.util.Log;
import com.kahuna.sdk.h;
import java.util.HashSet;
import java.util.Iterator;
import java.util.Set;

class k
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
      if (KahunaIBeaconManager.b() == KahunaIBeaconManager.ScanState.SCANNING) {
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
        KahunaIBeaconManager.c().startLeScan(KahunaIBeaconManager.b(a));
        if (h.p()) {
          Log.d("KahunaEngine", "Beginning BLE Scan");
        }
        try
        {
          Thread.sleep(10000L);
          if (h.p()) {
            Log.d("KahunaEngine", "BLE Scan resting period");
          }
          KahunaIBeaconManager.c().stopLeScan(KahunaIBeaconManager.b(a));
          synchronized (KahunaIBeaconManager.c(KahunaIBeaconManager.d()))
          {
            Iterator localIterator = KahunaIBeaconManager.d(a).iterator();
            if (!localIterator.hasNext()) {
              break label279;
            }
            i locali = (i)localIterator.next();
            if ((!KahunaIBeaconManager.a(KahunaIBeaconManager.e(KahunaIBeaconManager.d()), locali)) || (KahunaIBeaconManager.a(KahunaIBeaconManager.a(a), locali))) {
              continue;
            }
            if (h.p()) {
              Log.d("KahunaEngine", "Tracking iBeacon exit for UUID: " + locali.b());
            }
            h.a(KahunaIBeaconManager.f(KahunaIBeaconManager.d()), locali, "exit");
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
 * Qualified Name:     com.kahuna.sdk.location.k
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */