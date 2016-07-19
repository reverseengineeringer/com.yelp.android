package com.google.android.gms.ads.internal.client;

import android.location.Location;
import android.os.Bundle;
import com.google.ads.mediation.admob.AdMobAdapter;
import com.yelp.android.bc.b;
import com.yelp.android.bc.m;
import com.yelp.android.bd.a;
import java.util.Date;
import java.util.HashMap;
import java.util.HashSet;

public final class b$a
{
  private final HashSet<String> a = new HashSet();
  private final Bundle b = new Bundle();
  private final HashMap<Class<? extends m>, m> c = new HashMap();
  private final HashSet<String> d = new HashSet();
  private final Bundle e = new Bundle();
  private final HashSet<String> f = new HashSet();
  private Date g;
  private String h;
  private int i = -1;
  private Location j;
  private boolean k = false;
  private String l;
  private String m;
  private int n = -1;
  private boolean o;
  
  public void a(int paramInt)
  {
    i = paramInt;
  }
  
  public void a(Location paramLocation)
  {
    j = paramLocation;
  }
  
  @Deprecated
  public void a(m paramm)
  {
    if ((paramm instanceof a))
    {
      a(AdMobAdapter.class, ((a)paramm).a());
      return;
    }
    c.put(paramm.getClass(), paramm);
  }
  
  public void a(Class<? extends b> paramClass, Bundle paramBundle)
  {
    b.putBundle(paramClass.getName(), paramBundle);
  }
  
  public void a(String paramString)
  {
    a.add(paramString);
  }
  
  public void a(Date paramDate)
  {
    g = paramDate;
  }
  
  public void a(boolean paramBoolean)
  {
    if (paramBoolean) {}
    for (int i1 = 1;; i1 = 0)
    {
      n = i1;
      return;
    }
  }
  
  public void b(String paramString)
  {
    d.add(paramString);
  }
  
  public void b(boolean paramBoolean)
  {
    o = paramBoolean;
  }
  
  public void c(String paramString)
  {
    d.remove(paramString);
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.ads.internal.client.b.a
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */