package com.kahuna.sdk.location;

import android.annotation.SuppressLint;
import android.bluetooth.BluetoothAdapter;
import android.bluetooth.BluetoothAdapter.LeScanCallback;
import android.content.Context;
import android.util.Log;
import com.kahuna.sdk.ag;
import com.kahuna.sdk.aj;
import com.kahuna.sdk.h;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Set;
import org.json.JSONArray;
import org.json.JSONObject;

@SuppressLint({"NewApi"})
public class KahunaIBeaconManager
{
  private static final byte[] a = { 2, 1, 6, 26, -1, 76, 0, 2, 21 };
  private static BluetoothAdapter c;
  private static KahunaIBeaconManager.ScanState d = KahunaIBeaconManager.ScanState.NOT_SCANNING;
  private static k e;
  private static final KahunaIBeaconManager k = new KahunaIBeaconManager();
  private h b;
  private Set<i> f = new HashSet();
  private Set<i> g = new HashSet();
  private boolean h = false;
  private Object i = new Object();
  private Set<i> j = new HashSet();
  private BluetoothAdapter.LeScanCallback l = new j(this);
  
  private double a(int paramInt, double paramDouble)
  {
    if (paramDouble == 0.0D) {
      return -1.0D;
    }
    paramDouble = paramDouble * 1.0D / paramInt;
    if (paramDouble < 1.0D) {
      return Math.pow(paramDouble, 10.0D);
    }
    return Math.pow(paramDouble, 7.7095D) * 0.89976D + 0.111D;
  }
  
  private static JSONArray a(Set<i> paramSet)
  {
    if ((paramSet == null) || (paramSet.isEmpty())) {
      return new JSONArray();
    }
    JSONArray localJSONArray = new JSONArray();
    paramSet = paramSet.iterator();
    while (paramSet.hasNext())
    {
      JSONObject localJSONObject = ((i)paramSet.next()).g();
      if (localJSONObject != null) {
        localJSONArray.put(localJSONObject);
      }
    }
    return localJSONArray;
  }
  
  public static void a(h paramh, JSONObject arg1, Context paramContext)
  {
    if ((paramh == null) || (!(paramh instanceof h))) {
      Log.e("KahunaEngine", "You cannot request to process iBeacons externally from the Kahuna SDK. Aborting!");
    }
    JSONArray localJSONArray;
    do
    {
      for (;;)
      {
        return;
        try
        {
          localJSONArray = ???.optJSONArray("beacon");
          if (localJSONArray != null)
          {
            if (kh) {
              break label90;
            }
            if (h.p())
            {
              Log.w("KahunaEngine", "App doens't have required permissions for iBeacon Monitoring. Aborting processing of server response");
              return;
            }
          }
        }
        catch (Exception paramh) {}
      }
    } while (!h.p());
    Log.d("KahunaEngine", "Caught exception in iBeacon Manager process server iBeacons: " + paramh);
    return;
    label90:
    ArrayList localArrayList = new ArrayList();
    int n = localJSONArray.length();
    long l1 = System.currentTimeMillis() / 1000L;
    int m = 0;
    for (;;)
    {
      if (m < n)
      {
        try
        {
          JSONObject localJSONObject = localJSONArray.getJSONObject(m);
          if (localJSONObject == null) {
            break label366;
          }
          String str1 = localJSONObject.getString("id");
          String str2 = localJSONObject.getString("uuid");
          int i1 = localJSONObject.optInt("major", -1);
          int i2 = localJSONObject.optInt("minor", -1);
          long l2 = localJSONObject.optLong("expiry", -1L);
          if ((l2 > 0L) && (l2 < l1))
          {
            if (h.p()) {
              Log.e("KahunaEngine", "Received iBeacon monitor request that already expired, ignoring...");
            }
          }
          else {
            localArrayList.add(new i(str1, str2, i1, i2, l2));
          }
        }
        catch (Exception localException)
        {
          if (!h.p()) {
            break label366;
          }
        }
        Log.d("KahunaEngine", "Encountered error processing geofence regions from Kahuna servers.");
        localException.printStackTrace();
      }
      else
      {
        c.a(???.optInt("am_interval", -1));
        if (a()) {
          c.c();
        }
        for (;;)
        {
          synchronized (ki)
          {
            if (localArrayList.size() > 0)
            {
              kj.addAll(localArrayList);
              c.a(paramh);
              ag.a(paramh, paramContext, a(kj));
              return;
            }
          }
          kj.clear();
          c.b(paramh);
        }
      }
      label366:
      m += 1;
    }
  }
  
  protected static boolean a()
  {
    return d == KahunaIBeaconManager.ScanState.SCANNING;
  }
  
  public static boolean a(h paramh)
  {
    if ((paramh == null) || (!(paramh instanceof h)))
    {
      Log.e("KahunaEngine", "You cannot use IBeacon Manager externally from the Kahuna SDK. Aborting!");
      return false;
    }
    return kh;
  }
  
  private boolean a(byte[] paramArrayOfByte)
  {
    boolean bool2 = false;
    boolean bool1 = bool2;
    if (Arrays.equals(Arrays.copyOfRange(a, 0, 2), Arrays.copyOfRange(paramArrayOfByte, 0, 2)))
    {
      bool1 = bool2;
      if (Arrays.equals(Arrays.copyOfRange(a, 3, a.length), Arrays.copyOfRange(paramArrayOfByte, 3, a.length))) {
        bool1 = true;
      }
    }
    return bool1;
  }
  
  private i b(byte[] paramArrayOfByte)
  {
    if (a(paramArrayOfByte))
    {
      Object localObject = Arrays.copyOfRange(paramArrayOfByte, a.length, a.length + 16);
      int m = a.length + 16;
      int n = paramArrayOfByte[m];
      int i1 = paramArrayOfByte[(m + 1)];
      int i2 = paramArrayOfByte[(m + 2)];
      int i3 = paramArrayOfByte[(m + 3)];
      localObject = new i(null, i.a((byte[])localObject), n << 8 & 0xFF00 | i1 & 0xFF, i2 << 8 & 0xFF00 | i3 & 0xFF, 0L);
      ((i)localObject).a(paramArrayOfByte[(m + 4)] << 24 >> 24);
      return (i)localObject;
    }
    return null;
  }
  
  public static void b(h arg0)
  {
    if ((??? == null) || (!(??? instanceof h))) {
      Log.e("KahunaEngine", "You cannot use IBeacon Manager externally from the Kahuna SDK. Aborting!");
    }
    do
    {
      do
      {
        return;
        if (kh) {
          break;
        }
      } while (!h.p());
      Log.w("KahunaEngine", "App doens't have required permissions for iBeacon Monitoring. Aborting request for scan");
      return;
      synchronized (ki)
      {
        if (kj.size() == 0) {
          return;
        }
      }
      if (d == KahunaIBeaconManager.ScanState.NOT_SCANNING)
      {
        new Thread(e).start();
        return;
      }
    } while ((e == null) || (e.b()));
    new Thread(e).start();
  }
  
  private static boolean b(Set<i> paramSet, i parami)
  {
    if ((paramSet == null) || (paramSet.isEmpty())) {
      return false;
    }
    paramSet = paramSet.iterator();
    while (paramSet.hasNext())
    {
      i locali = (i)paramSet.next();
      if (locali.equals(parami))
      {
        if (aj.a(parami.a())) {
          parami.a(locali.a());
        }
        return true;
      }
    }
    return false;
  }
  
  public static void c(h arg0)
  {
    if ((??? == null) || (!(??? instanceof h))) {
      Log.e("KahunaEngine", "You cannot use IBeacon Manager externally from the Kahuna SDK. Aborting!");
    }
    for (;;)
    {
      return;
      try
      {
        if ((e != null) && (d == KahunaIBeaconManager.ScanState.SCANNING)) {
          e.a();
        }
        synchronized (ki)
        {
          Iterator localIterator = kf.iterator();
          i locali;
          do
          {
            if (!localIterator.hasNext()) {
              break;
            }
            locali = (i)localIterator.next();
          } while (!b(kj, locali));
          if (h.p()) {
            Log.d("KahunaEngine", "Tracking iBeacon exit for UUID: " + locali.b());
          }
          h.a(kb, locali, "exit");
        }
        kf.clear();
      }
      catch (Exception ???) {}
      while ((!kh) && (h.p()))
      {
        Log.w("KahunaEngine", "App doens't have required permissions for iBeacon Monitoring. Aborting request for scan");
        return;
      }
    }
  }
  
  public static Set<String> d(h paramh)
  {
    if ((paramh == null) || (!(paramh instanceof h)))
    {
      Log.e("KahunaEngine", "You cannot use IBeacon Manager externally from the Kahuna SDK. Aborting!");
      return new HashSet();
    }
    paramh = new HashSet();
    try
    {
      synchronized (ki)
      {
        Iterator localIterator = kj.iterator();
        if (!localIterator.hasNext()) {
          break label128;
        }
        paramh.add(((i)localIterator.next()).a());
      }
      return paramh;
    }
    catch (Exception localException)
    {
      if (h.p()) {
        Log.w("KahunaEngine", "Caught exception when getting currently monitored beacons: " + localException);
      }
    }
    label128:
    for (;;) {}
  }
}

/* Location:
 * Qualified Name:     com.kahuna.sdk.location.KahunaIBeaconManager
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */