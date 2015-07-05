package com.google.android.gms.deviceconnection.features;

import com.google.android.gms.common.data.DataBuffer;

public class DeviceFeatureBuffer
  extends DataBuffer<DeviceFeature>
{
  public DeviceFeature get(int paramInt)
  {
    return new a(JG, paramInt);
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.deviceconnection.features.DeviceFeatureBuffer
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */