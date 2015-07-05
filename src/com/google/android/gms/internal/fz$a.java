package com.google.android.gms.internal;

import android.os.Bundle;
import android.os.SystemClock;

@ey
final class fz$a
{
  private long vV = -1L;
  private long vW = -1L;
  
  public long cZ()
  {
    return vW;
  }
  
  public void da()
  {
    vW = SystemClock.elapsedRealtime();
  }
  
  public void db()
  {
    vV = SystemClock.elapsedRealtime();
  }
  
  public Bundle toBundle()
  {
    Bundle localBundle = new Bundle();
    localBundle.putLong("topen", vV);
    localBundle.putLong("tclose", vW);
    return localBundle;
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.internal.fz.a
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */