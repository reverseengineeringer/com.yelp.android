package com.google.android.gms.ads;

import android.content.Context;
import android.location.Location;
import android.os.Bundle;
import com.google.android.gms.ads.mediation.MediationAdapter;
import com.google.android.gms.ads.mediation.NetworkExtras;
import com.google.android.gms.ads.mediation.customevent.CustomEvent;
import com.google.android.gms.internal.bg;
import java.util.Date;
import java.util.Set;

public final class AdRequest
{
  public static final String DEVICE_ID_EMULATOR = bg.DEVICE_ID_EMULATOR;
  public static final int ERROR_CODE_INTERNAL_ERROR = 0;
  public static final int ERROR_CODE_INVALID_REQUEST = 1;
  public static final int ERROR_CODE_NETWORK_ERROR = 2;
  public static final int ERROR_CODE_NO_FILL = 3;
  public static final int GENDER_FEMALE = 2;
  public static final int GENDER_MALE = 1;
  public static final int GENDER_UNKNOWN = 0;
  public static final int MAX_CONTENT_URL_LENGTH = 512;
  private final bg lg;
  
  private AdRequest(AdRequest.Builder paramBuilder)
  {
    lg = new bg(AdRequest.Builder.a(paramBuilder));
  }
  
  bg Y()
  {
    return lg;
  }
  
  public Date getBirthday()
  {
    return lg.getBirthday();
  }
  
  public String getContentUrl()
  {
    return lg.getContentUrl();
  }
  
  public <T extends CustomEvent> Bundle getCustomEventExtrasBundle(Class<T> paramClass)
  {
    return lg.getCustomEventExtrasBundle(paramClass);
  }
  
  public int getGender()
  {
    return lg.getGender();
  }
  
  public Set<String> getKeywords()
  {
    return lg.getKeywords();
  }
  
  public Location getLocation()
  {
    return lg.getLocation();
  }
  
  @Deprecated
  public <T extends NetworkExtras> T getNetworkExtras(Class<T> paramClass)
  {
    return lg.getNetworkExtras(paramClass);
  }
  
  public <T extends MediationAdapter> Bundle getNetworkExtrasBundle(Class<T> paramClass)
  {
    return lg.getNetworkExtrasBundle(paramClass);
  }
  
  public boolean isTestDevice(Context paramContext)
  {
    return lg.isTestDevice(paramContext);
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.ads.AdRequest
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */