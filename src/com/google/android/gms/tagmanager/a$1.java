package com.google.android.gms.tagmanager;

import com.google.android.gms.ads.identifier.AdvertisingIdClient;
import com.google.android.gms.ads.identifier.AdvertisingIdClient.Info;
import com.google.android.gms.common.GooglePlayServicesNotAvailableException;
import com.google.android.gms.common.GooglePlayServicesRepairableException;
import java.io.IOException;

class a$1
  implements a.a
{
  a$1(a parama) {}
  
  public AdvertisingIdClient.Info pd()
  {
    try
    {
      AdvertisingIdClient.Info localInfo = AdvertisingIdClient.getAdvertisingIdInfo(a.a(aqb));
      return localInfo;
    }
    catch (IllegalStateException localIllegalStateException)
    {
      bh.W("IllegalStateException getting Advertising Id Info");
      return null;
    }
    catch (GooglePlayServicesRepairableException localGooglePlayServicesRepairableException)
    {
      bh.W("GooglePlayServicesRepairableException getting Advertising Id Info");
      return null;
    }
    catch (IOException localIOException)
    {
      bh.W("IOException getting Ad Id Info");
      return null;
    }
    catch (GooglePlayServicesNotAvailableException localGooglePlayServicesNotAvailableException)
    {
      bh.W("GooglePlayServicesNotAvailableException getting Advertising Id Info");
      return null;
    }
    catch (Exception localException)
    {
      bh.W("Unknown exception. Could not get the Advertising Id Info.");
    }
    return null;
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.tagmanager.a.1
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */