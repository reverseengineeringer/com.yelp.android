package com.kahuna.sdk.location;

import android.bluetooth.BluetoothAdapter.LeScanCallback;
import android.bluetooth.BluetoothDevice;
import android.util.Log;
import com.kahuna.sdk.l;
import java.util.Set;

class KahunaIBeaconManager$1
  implements BluetoothAdapter.LeScanCallback
{
  KahunaIBeaconManager$1(KahunaIBeaconManager paramKahunaIBeaconManager) {}
  
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
    if (l.u()) {
      Log.d("Kahuna", "Beacon scanned " + ???.getName() + " " + paramArrayOfByte.b() + " " + ???.getAddress());
    }
    synchronized (KahunaIBeaconManager.c(KahunaIBeaconManager.f()))
    {
      if ((KahunaIBeaconManager.a(KahunaIBeaconManager.e(KahunaIBeaconManager.f()), paramArrayOfByte)) && (!KahunaIBeaconManager.a(KahunaIBeaconManager.d(a), paramArrayOfByte)))
      {
        if (l.u()) {
          Log.d("Kahuna", "Tracking iBeacon enter for UUID: " + paramArrayOfByte.b());
        }
        KahunaIBeaconManager.f(KahunaIBeaconManager.f()).a(paramArrayOfByte, "enter");
      }
      KahunaIBeaconManager.a(a).add(paramArrayOfByte);
      return;
    }
  }
}

/* Location:
 * Qualified Name:     com.kahuna.sdk.location.KahunaIBeaconManager.1
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */