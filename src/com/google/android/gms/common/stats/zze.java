package com.google.android.gms.common.stats;

import android.os.SystemClock;
import android.util.Log;
import com.yelp.android.g.i;

public class zze
{
  private final long zzanN;
  private final int zzanO;
  private final i<String, Long> zzanP;
  
  public zze()
  {
    zzanN = 60000L;
    zzanO = 10;
    zzanP = new i(10);
  }
  
  public zze(int paramInt, long paramLong)
  {
    zzanN = paramLong;
    zzanO = paramInt;
    zzanP = new i();
  }
  
  private void zzb(long paramLong1, long paramLong2)
  {
    int i = zzanP.size() - 1;
    while (i >= 0)
    {
      if (paramLong2 - ((Long)zzanP.c(i)).longValue() > paramLong1) {
        zzanP.d(i);
      }
      i -= 1;
    }
  }
  
  public Long zzcS(String paramString)
  {
    long l2 = SystemClock.elapsedRealtime();
    long l1 = zzanN;
    try
    {
      while (zzanP.size() >= zzanO)
      {
        zzb(l1, l2);
        l1 /= 2L;
        Log.w("ConnectionTracker", "The max capacity " + zzanO + " is not enough. Current durationThreshold is: " + l1);
      }
      paramString = (Long)zzanP.put(paramString, Long.valueOf(l2));
    }
    finally {}
    return paramString;
  }
  
  public boolean zzcT(String paramString)
  {
    for (;;)
    {
      try
      {
        if (zzanP.remove(paramString) != null)
        {
          bool = true;
          return bool;
        }
      }
      finally {}
      boolean bool = false;
    }
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.common.stats.zze
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */