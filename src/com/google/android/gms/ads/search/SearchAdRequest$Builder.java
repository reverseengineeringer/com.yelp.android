package com.google.android.gms.ads.search;

import android.graphics.Color;
import android.location.Location;
import android.os.Bundle;
import com.google.android.gms.ads.mediation.MediationAdapter;
import com.google.android.gms.ads.mediation.NetworkExtras;
import com.google.android.gms.ads.mediation.customevent.CustomEvent;
import com.google.android.gms.internal.bg.a;

public final class SearchAdRequest$Builder
{
  private final bg.a lh = new bg.a();
  private int xA;
  private int xB;
  private int xC;
  private int xD;
  private int xE;
  private int xF;
  private int xG = 0;
  private int xH;
  private String xI;
  private int xJ;
  private String xK;
  private int xL;
  private int xM;
  private String xN;
  
  public Builder addCustomEventExtrasBundle(Class<? extends CustomEvent> paramClass, Bundle paramBundle)
  {
    lh.b(paramClass, paramBundle);
    return this;
  }
  
  public Builder addNetworkExtras(NetworkExtras paramNetworkExtras)
  {
    lh.a(paramNetworkExtras);
    return this;
  }
  
  public Builder addNetworkExtrasBundle(Class<? extends MediationAdapter> paramClass, Bundle paramBundle)
  {
    lh.a(paramClass, paramBundle);
    return this;
  }
  
  public Builder addTestDevice(String paramString)
  {
    lh.s(paramString);
    return this;
  }
  
  public SearchAdRequest build()
  {
    return new SearchAdRequest(this, null);
  }
  
  public Builder setAnchorTextColor(int paramInt)
  {
    xA = paramInt;
    return this;
  }
  
  public Builder setBackgroundColor(int paramInt)
  {
    xB = paramInt;
    xC = Color.argb(0, 0, 0, 0);
    xD = Color.argb(0, 0, 0, 0);
    return this;
  }
  
  public Builder setBackgroundGradient(int paramInt1, int paramInt2)
  {
    xB = Color.argb(0, 0, 0, 0);
    xC = paramInt2;
    xD = paramInt1;
    return this;
  }
  
  public Builder setBorderColor(int paramInt)
  {
    xE = paramInt;
    return this;
  }
  
  public Builder setBorderThickness(int paramInt)
  {
    xF = paramInt;
    return this;
  }
  
  public Builder setBorderType(int paramInt)
  {
    xG = paramInt;
    return this;
  }
  
  public Builder setCallButtonColor(int paramInt)
  {
    xH = paramInt;
    return this;
  }
  
  public Builder setCustomChannels(String paramString)
  {
    xI = paramString;
    return this;
  }
  
  public Builder setDescriptionTextColor(int paramInt)
  {
    xJ = paramInt;
    return this;
  }
  
  public Builder setFontFace(String paramString)
  {
    xK = paramString;
    return this;
  }
  
  public Builder setHeaderTextColor(int paramInt)
  {
    xL = paramInt;
    return this;
  }
  
  public Builder setHeaderTextSize(int paramInt)
  {
    xM = paramInt;
    return this;
  }
  
  public Builder setLocation(Location paramLocation)
  {
    lh.a(paramLocation);
    return this;
  }
  
  public Builder setQuery(String paramString)
  {
    xN = paramString;
    return this;
  }
  
  public Builder tagForChildDirectedTreatment(boolean paramBoolean)
  {
    lh.j(paramBoolean);
    return this;
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.ads.search.SearchAdRequest.Builder
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */