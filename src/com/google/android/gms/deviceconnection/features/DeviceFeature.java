package com.google.android.gms.deviceconnection.features;

public abstract interface DeviceFeature
{
  public abstract String getFeatureName();
  
  public abstract long getLastConnectionTimestampMillis();
}

/* Location:
 * Qualified Name:     com.google.android.gms.deviceconnection.features.DeviceFeature
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */