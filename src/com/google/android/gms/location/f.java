package com.google.android.gms.location;

import android.os.SystemClock;
import com.google.android.gms.location.internal.ParcelableGeofence;

public abstract interface f
{
  public abstract String a();
  
  public static final class a
  {
    private String a = null;
    private int b = 0;
    private long c = Long.MIN_VALUE;
    private short d = -1;
    private double e;
    private double f;
    private float g;
    private int h = 0;
    private int i = -1;
    
    public a a(double paramDouble1, double paramDouble2, float paramFloat)
    {
      d = 1;
      e = paramDouble1;
      f = paramDouble2;
      g = paramFloat;
      return this;
    }
    
    public a a(int paramInt)
    {
      b = paramInt;
      return this;
    }
    
    public a a(long paramLong)
    {
      if (paramLong < 0L)
      {
        c = -1L;
        return this;
      }
      c = (SystemClock.elapsedRealtime() + paramLong);
      return this;
    }
    
    public a a(String paramString)
    {
      a = paramString;
      return this;
    }
    
    public f a()
    {
      if (a == null) {
        throw new IllegalArgumentException("Request ID not set.");
      }
      if (b == 0) {
        throw new IllegalArgumentException("Transitions types not set.");
      }
      if (((b & 0x4) != 0) && (i < 0)) {
        throw new IllegalArgumentException("Non-negative loitering delay needs to be set when transition types include GEOFENCE_TRANSITION_DWELLING.");
      }
      if (c == Long.MIN_VALUE) {
        throw new IllegalArgumentException("Expiration not set.");
      }
      if (d == -1) {
        throw new IllegalArgumentException("Geofence region not set.");
      }
      if (h < 0) {
        throw new IllegalArgumentException("Notification responsiveness should be nonnegative.");
      }
      return new ParcelableGeofence(a, b, (short)1, e, f, g, c, h, i);
    }
    
    public a b(int paramInt)
    {
      h = paramInt;
      return this;
    }
    
    public a c(int paramInt)
    {
      i = paramInt;
      return this;
    }
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.location.f
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */