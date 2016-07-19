package com.google.android.gms.ads.identifier;

public final class AdvertisingIdClient$Info
{
  private final String zzpc;
  private final boolean zzpd;
  
  public AdvertisingIdClient$Info(String paramString, boolean paramBoolean)
  {
    zzpc = paramString;
    zzpd = paramBoolean;
  }
  
  public String getId()
  {
    return zzpc;
  }
  
  public boolean isLimitAdTrackingEnabled()
  {
    return zzpd;
  }
  
  public String toString()
  {
    return "{" + zzpc + "}" + zzpd;
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.ads.identifier.AdvertisingIdClient.Info
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */