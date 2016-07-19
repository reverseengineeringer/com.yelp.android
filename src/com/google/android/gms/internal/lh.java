package com.google.android.gms.internal;

import android.annotation.SuppressLint;
import android.content.Context;
import android.os.PowerManager;
import android.os.PowerManager.WakeLock;
import android.os.WorkSource;
import android.text.TextUtils;
import android.util.Log;
import com.google.android.gms.common.internal.zzd;
import com.google.android.gms.common.internal.zzx;
import com.google.android.gms.common.stats.zzg;
import com.google.android.gms.common.stats.zzi;

public class lh
{
  private static String a = "WakeLock";
  private static String b = "*gcore*:";
  private static boolean c = false;
  private final PowerManager.WakeLock d;
  private WorkSource e;
  private final int f;
  private final String g;
  private final String h;
  private final Context i;
  private boolean j = true;
  private int k;
  private int l;
  
  public lh(Context paramContext, int paramInt, String paramString) {}
  
  @SuppressLint({"UnwrappedWakeLock"})
  public lh(Context paramContext, int paramInt, String paramString1, String paramString2, String paramString3)
  {
    zzx.zzh(paramString1, "Wake lock name can NOT be empty");
    f = paramInt;
    h = paramString2;
    i = paramContext.getApplicationContext();
    if ((!kh.a(paramString3)) && ("com.google.android.gms" != paramString3))
    {
      g = (b + paramString1);
      d = ((PowerManager)paramContext.getSystemService("power")).newWakeLock(paramInt, paramString1);
      if (ki.a(i))
      {
        paramString1 = paramString3;
        if (kh.a(paramString3))
        {
          if ((!zzd.zzakE) || (!jb.b())) {
            break label195;
          }
          Log.e(a, "callingPackage is not supposed to be empty for wakelock " + g + "!", new IllegalArgumentException());
        }
      }
    }
    label195:
    for (paramString1 = "com.google.android.gms";; paramString1 = paramContext.getPackageName())
    {
      e = ki.a(paramContext, paramString1);
      a(e);
      return;
      g = paramString1;
      break;
    }
  }
  
  private String a(String paramString, boolean paramBoolean)
  {
    if (j)
    {
      if (paramBoolean) {
        return paramString;
      }
      return h;
    }
    return h;
  }
  
  private void a(String paramString)
  {
    boolean bool = b(paramString);
    String str = a(paramString, bool);
    if (c) {
      Log.d(a, "Release:\n mWakeLockName: " + g + "\n mSecondaryName: " + h + "\nmReferenceCounted: " + j + "\nreason: " + paramString + "\n mOpenEventCount" + l + "\nuseWithReason: " + bool + "\ntrackingName: " + str);
    }
    try
    {
      if (j)
      {
        int m = k - 1;
        k = m;
        if ((m == 0) || (bool)) {}
      }
      else
      {
        if ((j) || (l != 1)) {
          break label205;
        }
      }
      zzi.zzrZ().zza(i, zzg.zza(d, str), 8, g, str, f, ki.b(e));
      l -= 1;
      label205:
      return;
    }
    finally {}
  }
  
  private void a(String paramString, long paramLong)
  {
    boolean bool = b(paramString);
    String str = a(paramString, bool);
    if (c) {
      Log.d(a, "Acquire:\n mWakeLockName: " + g + "\n mSecondaryName: " + h + "\nmReferenceCounted: " + j + "\nreason: " + paramString + "\nmOpenEventCount" + l + "\nuseWithReason: " + bool + "\ntrackingName: " + str + "\ntimeout: " + paramLong);
    }
    try
    {
      if (j)
      {
        int m = k;
        k = (m + 1);
        if ((m == 0) || (bool)) {}
      }
      else
      {
        if ((j) || (l != 0)) {
          break label221;
        }
      }
      zzi.zzrZ().zza(i, zzg.zza(d, str), 7, g, str, f, ki.b(e), paramLong);
      l += 1;
      label221:
      return;
    }
    finally {}
  }
  
  private boolean b(String paramString)
  {
    return (!TextUtils.isEmpty(paramString)) && (!paramString.equals(h));
  }
  
  public void a()
  {
    a(null);
    d.release();
  }
  
  public void a(long paramLong)
  {
    if ((!kf.c()) && (j)) {
      Log.wtf(a, "Do not acquire with timeout on reference counted WakeLocks before ICS. wakelock: " + g);
    }
    a(null, paramLong);
    d.acquire(paramLong);
  }
  
  public void a(WorkSource paramWorkSource)
  {
    if ((ki.a(i)) && (paramWorkSource != null))
    {
      if (e == null) {
        break label42;
      }
      e.add(paramWorkSource);
    }
    for (;;)
    {
      d.setWorkSource(e);
      return;
      label42:
      e = paramWorkSource;
    }
  }
  
  public void a(boolean paramBoolean)
  {
    d.setReferenceCounted(paramBoolean);
    j = paramBoolean;
  }
  
  public boolean b()
  {
    return d.isHeld();
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.internal.lh
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */