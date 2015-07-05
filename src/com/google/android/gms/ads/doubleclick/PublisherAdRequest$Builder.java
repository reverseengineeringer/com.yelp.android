package com.google.android.gms.ads.doubleclick;

import android.location.Location;
import android.os.Bundle;
import com.google.android.gms.ads.mediation.MediationAdapter;
import com.google.android.gms.ads.mediation.NetworkExtras;
import com.google.android.gms.ads.mediation.customevent.CustomEvent;
import com.google.android.gms.internal.bg.a;
import com.google.android.gms.internal.jx;
import java.util.Date;

public final class PublisherAdRequest$Builder
{
  private final bg.a lh = new bg.a();
  
  public Builder addCustomEventExtrasBundle(Class<? extends CustomEvent> paramClass, Bundle paramBundle)
  {
    lh.b(paramClass, paramBundle);
    return this;
  }
  
  public Builder addKeyword(String paramString)
  {
    lh.r(paramString);
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
  
  public PublisherAdRequest build()
  {
    return new PublisherAdRequest(this, null);
  }
  
  public Builder setBirthday(Date paramDate)
  {
    lh.a(paramDate);
    return this;
  }
  
  public Builder setContentUrl(String paramString)
  {
    jx.b(paramString, "Content URL must be non-null.");
    jx.b(paramString, "Content URL must be non-empty.");
    if (paramString.length() <= 512) {}
    for (boolean bool = true;; bool = false)
    {
      jx.b(bool, "Content URL must not exceed %d in length.  Provided length was %d.", new Object[] { Integer.valueOf(512), Integer.valueOf(paramString.length()) });
      lh.t(paramString);
      return this;
    }
  }
  
  public Builder setGender(int paramInt)
  {
    lh.h(paramInt);
    return this;
  }
  
  public Builder setLocation(Location paramLocation)
  {
    lh.a(paramLocation);
    return this;
  }
  
  public Builder setManualImpressionsEnabled(boolean paramBoolean)
  {
    lh.i(paramBoolean);
    return this;
  }
  
  public Builder setPublisherProvidedId(String paramString)
  {
    lh.u(paramString);
    return this;
  }
  
  public Builder tagForChildDirectedTreatment(boolean paramBoolean)
  {
    lh.j(paramBoolean);
    return this;
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.ads.doubleclick.PublisherAdRequest.Builder
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */