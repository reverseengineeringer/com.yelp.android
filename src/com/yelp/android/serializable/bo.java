package com.yelp.android.serializable;

import android.location.Location;
import java.util.Comparator;

public final class bo
  implements Comparator<Offer>
{
  private final Location a;
  
  public bo(Location paramLocation)
  {
    a = paramLocation;
  }
  
  private double a(Offer paramOffer)
  {
    double d = paramOffer.getBusiness().getDistance(a);
    if ((Double.isNaN(d)) || (!paramOffer.getBusiness().isLocationAccurate())) {
      d = Double.MAX_VALUE;
    }
    return d;
  }
  
  public int a(Offer paramOffer1, Offer paramOffer2)
  {
    double d1 = a(paramOffer1);
    double d2 = a(paramOffer2);
    if (d1 < d2) {
      return -1;
    }
    if (d1 > d2) {
      return 1;
    }
    return paramOffer1.getId().compareTo(paramOffer2.getId());
  }
  
  public boolean equals(Object paramObject)
  {
    if (this == paramObject) {}
    do
    {
      do
      {
        return true;
        if (paramObject == null) {
          return false;
        }
        if (!(paramObject instanceof bo)) {
          return false;
        }
        paramObject = (bo)paramObject;
        if (a != null) {
          break;
        }
      } while (a == null);
      return false;
    } while (a.equals(a));
    return false;
  }
  
  public int hashCode()
  {
    if (a == null) {}
    for (int i = 0;; i = a.hashCode()) {
      return i + 31;
    }
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.serializable.bo
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */