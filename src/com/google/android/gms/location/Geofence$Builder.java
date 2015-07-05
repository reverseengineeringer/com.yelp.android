package com.google.android.gms.location;

import android.os.SystemClock;
import com.google.android.gms.internal.nn;

public final class Geofence$Builder
{
  private String Zt = null;
  private int agd = 0;
  private long age = Long.MIN_VALUE;
  private short agf = -1;
  private double agg;
  private double agh;
  private float agi;
  private int agj = 0;
  private int agk = -1;
  
  public Geofence build()
  {
    if (Zt == null) {
      throw new IllegalArgumentException("Request ID not set.");
    }
    if (agd == 0) {
      throw new IllegalArgumentException("Transitions types not set.");
    }
    if (((agd & 0x4) != 0) && (agk < 0)) {
      throw new IllegalArgumentException("Non-negative loitering delay needs to be set when transition types include GEOFENCE_TRANSITION_DWELLING.");
    }
    if (age == Long.MIN_VALUE) {
      throw new IllegalArgumentException("Expiration not set.");
    }
    if (agf == -1) {
      throw new IllegalArgumentException("Geofence region not set.");
    }
    if (agj < 0) {
      throw new IllegalArgumentException("Notification responsiveness should be nonnegative.");
    }
    return new nn(Zt, agd, (short)1, agg, agh, agi, age, agj, agk);
  }
  
  public Builder setCircularRegion(double paramDouble1, double paramDouble2, float paramFloat)
  {
    agf = 1;
    agg = paramDouble1;
    agh = paramDouble2;
    agi = paramFloat;
    return this;
  }
  
  public Builder setExpirationDuration(long paramLong)
  {
    if (paramLong < 0L)
    {
      age = -1L;
      return this;
    }
    age = (SystemClock.elapsedRealtime() + paramLong);
    return this;
  }
  
  public Builder setLoiteringDelay(int paramInt)
  {
    agk = paramInt;
    return this;
  }
  
  public Builder setNotificationResponsiveness(int paramInt)
  {
    agj = paramInt;
    return this;
  }
  
  public Builder setRequestId(String paramString)
  {
    Zt = paramString;
    return this;
  }
  
  public Builder setTransitionTypes(int paramInt)
  {
    agd = paramInt;
    return this;
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.location.Geofence.Builder
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */