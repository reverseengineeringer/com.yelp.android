package com.ooyala.android;

final class WidevineStuckMonitor$VideoAtWallMsec
{
  public final int videoMsec;
  public final long wallMsec;
  
  public WidevineStuckMonitor$VideoAtWallMsec(int paramInt)
  {
    videoMsec = paramInt;
    wallMsec = System.currentTimeMillis();
  }
  
  public String toString()
  {
    return "[" + getClass().getSimpleName() + ":videoMsec=" + videoMsec + ",wallMsec=" + wallMsec + "]";
  }
}

/* Location:
 * Qualified Name:     com.ooyala.android.WidevineStuckMonitor.VideoAtWallMsec
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */