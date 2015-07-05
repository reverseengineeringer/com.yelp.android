package com.google.android.gms.ads.search;

import android.content.Context;
import android.location.Location;
import android.os.Bundle;
import com.google.android.gms.ads.mediation.MediationAdapter;
import com.google.android.gms.ads.mediation.NetworkExtras;
import com.google.android.gms.ads.mediation.customevent.CustomEvent;
import com.google.android.gms.internal.bg;

public final class SearchAdRequest
{
  public static final int BORDER_TYPE_DASHED = 1;
  public static final int BORDER_TYPE_DOTTED = 2;
  public static final int BORDER_TYPE_NONE = 0;
  public static final int BORDER_TYPE_SOLID = 3;
  public static final int CALL_BUTTON_COLOR_DARK = 2;
  public static final int CALL_BUTTON_COLOR_LIGHT = 0;
  public static final int CALL_BUTTON_COLOR_MEDIUM = 1;
  public static final String DEVICE_ID_EMULATOR = bg.DEVICE_ID_EMULATOR;
  public static final int ERROR_CODE_INTERNAL_ERROR = 0;
  public static final int ERROR_CODE_INVALID_REQUEST = 1;
  public static final int ERROR_CODE_NETWORK_ERROR = 2;
  public static final int ERROR_CODE_NO_FILL = 3;
  private final bg lg;
  private final int xA;
  private final int xB;
  private final int xC;
  private final int xD;
  private final int xE;
  private final int xF;
  private final int xG;
  private final int xH;
  private final String xI;
  private final int xJ;
  private final String xK;
  private final int xL;
  private final int xM;
  private final String xN;
  
  private SearchAdRequest(SearchAdRequest.Builder paramBuilder)
  {
    xA = SearchAdRequest.Builder.a(paramBuilder);
    xB = SearchAdRequest.Builder.b(paramBuilder);
    xC = SearchAdRequest.Builder.c(paramBuilder);
    xD = SearchAdRequest.Builder.d(paramBuilder);
    xE = SearchAdRequest.Builder.e(paramBuilder);
    xF = SearchAdRequest.Builder.f(paramBuilder);
    xG = SearchAdRequest.Builder.g(paramBuilder);
    xH = SearchAdRequest.Builder.h(paramBuilder);
    xI = SearchAdRequest.Builder.i(paramBuilder);
    xJ = SearchAdRequest.Builder.j(paramBuilder);
    xK = SearchAdRequest.Builder.k(paramBuilder);
    xL = SearchAdRequest.Builder.l(paramBuilder);
    xM = SearchAdRequest.Builder.m(paramBuilder);
    xN = SearchAdRequest.Builder.n(paramBuilder);
    lg = new bg(SearchAdRequest.Builder.o(paramBuilder), this);
  }
  
  bg Y()
  {
    return lg;
  }
  
  public int getAnchorTextColor()
  {
    return xA;
  }
  
  public int getBackgroundColor()
  {
    return xB;
  }
  
  public int getBackgroundGradientBottom()
  {
    return xC;
  }
  
  public int getBackgroundGradientTop()
  {
    return xD;
  }
  
  public int getBorderColor()
  {
    return xE;
  }
  
  public int getBorderThickness()
  {
    return xF;
  }
  
  public int getBorderType()
  {
    return xG;
  }
  
  public int getCallButtonColor()
  {
    return xH;
  }
  
  public String getCustomChannels()
  {
    return xI;
  }
  
  public <T extends CustomEvent> Bundle getCustomEventExtrasBundle(Class<T> paramClass)
  {
    return lg.getCustomEventExtrasBundle(paramClass);
  }
  
  public int getDescriptionTextColor()
  {
    return xJ;
  }
  
  public String getFontFace()
  {
    return xK;
  }
  
  public int getHeaderTextColor()
  {
    return xL;
  }
  
  public int getHeaderTextSize()
  {
    return xM;
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
  
  public String getQuery()
  {
    return xN;
  }
  
  public boolean isTestDevice(Context paramContext)
  {
    return lg.isTestDevice(paramContext);
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.ads.search.SearchAdRequest
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */