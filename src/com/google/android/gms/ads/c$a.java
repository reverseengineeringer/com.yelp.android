package com.google.android.gms.ads;

import android.location.Location;
import android.os.Bundle;
import com.google.ads.mediation.admob.AdMobAdapter;
import com.google.android.gms.ads.internal.client.b.a;
import com.yelp.android.bc.b;
import java.util.Date;

public final class c$a
{
  private final b.a a = new b.a();
  
  public c$a()
  {
    a.b(c.a);
  }
  
  public a a(int paramInt)
  {
    a.a(paramInt);
    return this;
  }
  
  public a a(Location paramLocation)
  {
    a.a(paramLocation);
    return this;
  }
  
  public a a(Class<? extends b> paramClass, Bundle paramBundle)
  {
    a.a(paramClass, paramBundle);
    if ((paramClass.equals(AdMobAdapter.class)) && (paramBundle.getBoolean("_emulatorLiveAds"))) {
      a.c(c.a);
    }
    return this;
  }
  
  public a a(String paramString)
  {
    a.a(paramString);
    return this;
  }
  
  public a a(Date paramDate)
  {
    a.a(paramDate);
    return this;
  }
  
  public a a(boolean paramBoolean)
  {
    a.a(paramBoolean);
    return this;
  }
  
  public c a()
  {
    return new c(this, null);
  }
  
  public a b(String paramString)
  {
    a.b(paramString);
    return this;
  }
  
  public a b(boolean paramBoolean)
  {
    a.b(paramBoolean);
    return this;
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.ads.c.a
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */