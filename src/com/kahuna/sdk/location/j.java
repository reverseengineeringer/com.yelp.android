package com.kahuna.sdk.location;

import android.bluetooth.BluetoothAdapter.LeScanCallback;
import android.bluetooth.BluetoothDevice;
import android.util.Log;
import com.kahuna.sdk.h;
import java.util.Set;

class j
  implements BluetoothAdapter.LeScanCallback
{
  j(KahunaIBeaconManager paramKahunaIBeaconManager) {}
  
  public void onLeScan(BluetoothDevice arg1, int paramInt, byte[] paramArrayOfByte)
  {
    paramArrayOfByte = KahunaIBeaconManager.a(a, paramArrayOfByte);
    if (paramArrayOfByte == null) {
      return;
    }
    paramArrayOfByte.b(???.getName());
    paramArrayOfByte.c(???.getAddress());
    paramArrayOfByte.c(paramInt);
    paramArrayOfByte.b((int)KahunaIBeaconManager.a(a, paramArrayOfByte.e(), paramInt));
    if (h.p()) {
      Log.d("KahunaEngine", "Beacon scanned " + ???.getName() + " " + paramArrayOfByte.b() + " " + ???.getAddress());
    }
    synchronized (KahunaIBeaconManager.c(KahunaIBeaconManager.d()))
    {
      if ((KahunaIBeaconManager.a(KahunaIBeaconManager.e(KahunaIBeaconManager.d()), paramArrayOfByte)) && (!KahunaIBeaconManager.a(KahunaIBeaconManager.d(a), paramArrayOfByte)))
      {
        if (h.p()) {
          Log.d("KahunaEngine", "Tracking iBeacon enter for UUID: " + paramArrayOfByte.b());
        }
        h.a(KahunaIBeaconManager.f(KahunaIBeaconManager.d()), paramArrayOfByte, "enter");
      }
      KahunaIBeaconManager.a(a).add(paramArrayOfByte);
      return;
    }
  }
}

/* Location:
 * Qualified Name:     com.kahuna.sdk.location.j
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */