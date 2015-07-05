package com.google.android.gms.internal;

import android.content.Context;
import android.location.Location;
import android.os.Bundle;
import com.google.android.gms.ads.mediation.MediationAdapter;
import com.google.android.gms.ads.mediation.NetworkExtras;
import com.google.android.gms.ads.mediation.customevent.CustomEvent;
import com.google.android.gms.ads.search.SearchAdRequest;
import java.util.Collections;
import java.util.Date;
import java.util.Map;
import java.util.Set;

@ey
public final class bg
{
  public static final String DEVICE_ID_EMULATOR = gq.R("emulator");
  private final Date d;
  private final Set<String> f;
  private final Location h;
  private final String oA;
  private final SearchAdRequest oB;
  private final int oC;
  private final Set<String> oD;
  private final String ov;
  private final int ow;
  private final boolean ox;
  private final Bundle oy;
  private final Map<Class<? extends NetworkExtras>, NetworkExtras> oz;
  
  public bg(bg.a parama)
  {
    this(parama, null);
  }
  
  public bg(bg.a parama, SearchAdRequest paramSearchAdRequest)
  {
    d = bg.a.a(parama);
    ov = bg.a.b(parama);
    ow = bg.a.c(parama);
    f = Collections.unmodifiableSet(bg.a.d(parama));
    h = bg.a.e(parama);
    ox = bg.a.f(parama);
    oy = bg.a.g(parama);
    oz = Collections.unmodifiableMap(bg.a.h(parama));
    oA = bg.a.i(parama);
    oB = paramSearchAdRequest;
    oC = bg.a.j(parama);
    oD = Collections.unmodifiableSet(bg.a.k(parama));
  }
  
  public SearchAdRequest bi()
  {
    return oB;
  }
  
  public Map<Class<? extends NetworkExtras>, NetworkExtras> bj()
  {
    return oz;
  }
  
  public Bundle bk()
  {
    return oy;
  }
  
  public int bl()
  {
    return oC;
  }
  
  public Date getBirthday()
  {
    return d;
  }
  
  public String getContentUrl()
  {
    return ov;
  }
  
  public Bundle getCustomEventExtrasBundle(Class<? extends CustomEvent> paramClass)
  {
    Bundle localBundle = oy.getBundle("com.google.android.gms.ads.mediation.customevent.CustomEventAdapter");
    if (localBundle != null) {
      return localBundle.getBundle(paramClass.getClass().getName());
    }
    return null;
  }
  
  public int getGender()
  {
    return ow;
  }
  
  public Set<String> getKeywords()
  {
    return f;
  }
  
  public Location getLocation()
  {
    return h;
  }
  
  public boolean getManualImpressionsEnabled()
  {
    return ox;
  }
  
  @Deprecated
  public <T extends NetworkExtras> T getNetworkExtras(Class<T> paramClass)
  {
    return (NetworkExtras)oz.get(paramClass);
  }
  
  public Bundle getNetworkExtrasBundle(Class<? extends MediationAdapter> paramClass)
  {
    return oy.getBundle(paramClass.getName());
  }
  
  public String getPublisherProvidedId()
  {
    return oA;
  }
  
  public boolean isTestDevice(Context paramContext)
  {
    return oD.contains(gq.v(paramContext));
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.internal.bg
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */