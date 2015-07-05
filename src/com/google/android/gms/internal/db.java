package com.google.android.gms.internal;

import android.location.Location;
import com.google.android.gms.ads.mediation.MediationAdRequest;
import java.util.Date;
import java.util.Set;

@ey
public final class db
  implements MediationAdRequest
{
  private final Date d;
  private final Set<String> f;
  private final boolean g;
  private final Location h;
  private final int ow;
  private final int qU;
  
  public db(Date paramDate, int paramInt1, Set<String> paramSet, Location paramLocation, boolean paramBoolean, int paramInt2)
  {
    d = paramDate;
    ow = paramInt1;
    f = paramSet;
    h = paramLocation;
    g = paramBoolean;
    qU = paramInt2;
  }
  
  public Date getBirthday()
  {
    return d;
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
  
  public boolean isTesting()
  {
    return g;
  }
  
  public int taggedForChildDirectedTreatment()
  {
    return qU;
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.internal.db
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */