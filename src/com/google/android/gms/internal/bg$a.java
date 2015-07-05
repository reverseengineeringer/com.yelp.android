package com.google.android.gms.internal;

import android.location.Location;
import android.os.Bundle;
import com.google.ads.mediation.admob.AdMobAdapter;
import com.google.android.gms.ads.mediation.MediationAdapter;
import com.google.android.gms.ads.mediation.NetworkExtras;
import com.google.android.gms.ads.mediation.admob.AdMobExtras;
import com.google.android.gms.ads.mediation.customevent.CustomEvent;
import java.util.Date;
import java.util.HashMap;
import java.util.HashSet;

public final class bg$a
{
  private Date d;
  private Location h;
  private String oA;
  private int oC = -1;
  private final HashSet<String> oE = new HashSet();
  private final HashMap<Class<? extends NetworkExtras>, NetworkExtras> oF = new HashMap();
  private final HashSet<String> oG = new HashSet();
  private String ov;
  private int ow = -1;
  private boolean ox = false;
  private final Bundle oy = new Bundle();
  
  public void a(Location paramLocation)
  {
    h = paramLocation;
  }
  
  @Deprecated
  public void a(NetworkExtras paramNetworkExtras)
  {
    if ((paramNetworkExtras instanceof AdMobExtras))
    {
      a(AdMobAdapter.class, ((AdMobExtras)paramNetworkExtras).getExtras());
      return;
    }
    oF.put(paramNetworkExtras.getClass(), paramNetworkExtras);
  }
  
  public void a(Class<? extends MediationAdapter> paramClass, Bundle paramBundle)
  {
    oy.putBundle(paramClass.getName(), paramBundle);
  }
  
  public void a(Date paramDate)
  {
    d = paramDate;
  }
  
  public void b(Class<? extends CustomEvent> paramClass, Bundle paramBundle)
  {
    if (oy.getBundle("com.google.android.gms.ads.mediation.customevent.CustomEventAdapter") == null) {
      oy.putBundle("com.google.android.gms.ads.mediation.customevent.CustomEventAdapter", new Bundle());
    }
    oy.getBundle("com.google.android.gms.ads.mediation.customevent.CustomEventAdapter").putBundle(paramClass.getName(), paramBundle);
  }
  
  public void h(int paramInt)
  {
    ow = paramInt;
  }
  
  public void i(boolean paramBoolean)
  {
    ox = paramBoolean;
  }
  
  public void j(boolean paramBoolean)
  {
    if (paramBoolean) {}
    for (int i = 1;; i = 0)
    {
      oC = i;
      return;
    }
  }
  
  public void r(String paramString)
  {
    oE.add(paramString);
  }
  
  public void s(String paramString)
  {
    oG.add(paramString);
  }
  
  public void t(String paramString)
  {
    ov = paramString;
  }
  
  public void u(String paramString)
  {
    oA = paramString;
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.internal.bg.a
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */