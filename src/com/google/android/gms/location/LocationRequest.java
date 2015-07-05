package com.google.android.gms.location;

import android.os.Parcel;
import android.os.SystemClock;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;
import com.google.android.gms.internal.jv;

public final class LocationRequest
  implements SafeParcelable
{
  public static final d CREATOR = new d();
  public static final int PRIORITY_BALANCED_POWER_ACCURACY = 102;
  public static final int PRIORITY_HIGH_ACCURACY = 100;
  public static final int PRIORITY_LOW_POWER = 104;
  public static final int PRIORITY_NO_POWER = 105;
  private final int CK;
  boolean Wg;
  long age;
  long agr;
  long ags;
  int agt;
  float agu;
  long agv;
  int mPriority;
  
  public LocationRequest()
  {
    CK = 1;
    mPriority = 102;
    agr = 3600000L;
    ags = 600000L;
    Wg = false;
    age = Long.MAX_VALUE;
    agt = Integer.MAX_VALUE;
    agu = 0.0F;
    agv = 0L;
  }
  
  LocationRequest(int paramInt1, int paramInt2, long paramLong1, long paramLong2, boolean paramBoolean, long paramLong3, int paramInt3, float paramFloat, long paramLong4)
  {
    CK = paramInt1;
    mPriority = paramInt2;
    agr = paramLong1;
    ags = paramLong2;
    Wg = paramBoolean;
    age = paramLong3;
    agt = paramInt3;
    agu = paramFloat;
    agv = paramLong4;
  }
  
  private static void a(float paramFloat)
  {
    if (paramFloat < 0.0F) {
      throw new IllegalArgumentException("invalid displacement: " + paramFloat);
    }
  }
  
  public static LocationRequest create()
  {
    return new LocationRequest();
  }
  
  private static void ey(int paramInt)
  {
    switch (paramInt)
    {
    case 101: 
    case 103: 
    default: 
      throw new IllegalArgumentException("invalid quality: " + paramInt);
    }
  }
  
  public static String ez(int paramInt)
  {
    switch (paramInt)
    {
    case 101: 
    case 103: 
    default: 
      return "???";
    case 100: 
      return "PRIORITY_HIGH_ACCURACY";
    case 102: 
      return "PRIORITY_BALANCED_POWER_ACCURACY";
    case 104: 
      return "PRIORITY_LOW_POWER";
    }
    return "PRIORITY_NO_POWER";
  }
  
  private static void v(long paramLong)
  {
    if (paramLong < 0L) {
      throw new IllegalArgumentException("invalid interval: " + paramLong);
    }
  }
  
  public int describeContents()
  {
    return 0;
  }
  
  public boolean equals(Object paramObject)
  {
    if (this == paramObject) {}
    do
    {
      return true;
      if (!(paramObject instanceof LocationRequest)) {
        return false;
      }
      paramObject = (LocationRequest)paramObject;
    } while ((mPriority == mPriority) && (agr == agr) && (ags == ags) && (Wg == Wg) && (age == age) && (agt == agt) && (agu == agu));
    return false;
  }
  
  public long getExpirationTime()
  {
    return age;
  }
  
  public long getFastestInterval()
  {
    return ags;
  }
  
  public long getInterval()
  {
    return agr;
  }
  
  public int getNumUpdates()
  {
    return agt;
  }
  
  public int getPriority()
  {
    return mPriority;
  }
  
  public float getSmallestDisplacement()
  {
    return agu;
  }
  
  int getVersionCode()
  {
    return CK;
  }
  
  public int hashCode()
  {
    return jv.hashCode(new Object[] { Integer.valueOf(mPriority), Long.valueOf(agr), Long.valueOf(ags), Boolean.valueOf(Wg), Long.valueOf(age), Integer.valueOf(agt), Float.valueOf(agu) });
  }
  
  public LocationRequest setExpirationDuration(long paramLong)
  {
    long l = SystemClock.elapsedRealtime();
    if (paramLong > Long.MAX_VALUE - l) {}
    for (age = Long.MAX_VALUE;; age = (l + paramLong))
    {
      if (age < 0L) {
        age = 0L;
      }
      return this;
    }
  }
  
  public LocationRequest setExpirationTime(long paramLong)
  {
    age = paramLong;
    if (age < 0L) {
      age = 0L;
    }
    return this;
  }
  
  public LocationRequest setFastestInterval(long paramLong)
  {
    v(paramLong);
    Wg = true;
    ags = paramLong;
    return this;
  }
  
  public LocationRequest setInterval(long paramLong)
  {
    v(paramLong);
    agr = paramLong;
    if (!Wg) {
      ags = ((agr / 6.0D));
    }
    return this;
  }
  
  public LocationRequest setNumUpdates(int paramInt)
  {
    if (paramInt <= 0) {
      throw new IllegalArgumentException("invalid numUpdates: " + paramInt);
    }
    agt = paramInt;
    return this;
  }
  
  public LocationRequest setPriority(int paramInt)
  {
    ey(paramInt);
    mPriority = paramInt;
    return this;
  }
  
  public LocationRequest setSmallestDisplacement(float paramFloat)
  {
    a(paramFloat);
    agu = paramFloat;
    return this;
  }
  
  public String toString()
  {
    StringBuilder localStringBuilder = new StringBuilder();
    localStringBuilder.append("Request[").append(ez(mPriority));
    if (mPriority != 105)
    {
      localStringBuilder.append(" requested=");
      localStringBuilder.append(agr + "ms");
    }
    localStringBuilder.append(" fastest=");
    localStringBuilder.append(ags + "ms");
    if (age != Long.MAX_VALUE)
    {
      long l1 = age;
      long l2 = SystemClock.elapsedRealtime();
      localStringBuilder.append(" expireIn=");
      localStringBuilder.append(l1 - l2 + "ms");
    }
    if (agt != Integer.MAX_VALUE) {
      localStringBuilder.append(" num=").append(agt);
    }
    localStringBuilder.append(']');
    return localStringBuilder.toString();
  }
  
  public void writeToParcel(Parcel paramParcel, int paramInt)
  {
    d.a(this, paramParcel, paramInt);
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.location.LocationRequest
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */