package com.google.android.gms.maps.model;

import com.google.android.gms.internal.jx;

public final class LatLngBounds$Builder
{
  private double amk = Double.POSITIVE_INFINITY;
  private double aml = Double.NEGATIVE_INFINITY;
  private double amm = NaN.0D;
  private double amn = NaN.0D;
  
  private boolean d(double paramDouble)
  {
    boolean bool = false;
    if (amm <= amn) {
      return (amm <= paramDouble) && (paramDouble <= amn);
    }
    if ((amm <= paramDouble) || (paramDouble <= amn)) {
      bool = true;
    }
    return bool;
  }
  
  public LatLngBounds build()
  {
    if (!Double.isNaN(amm)) {}
    for (boolean bool = true;; bool = false)
    {
      jx.a(bool, "no included points");
      return new LatLngBounds(new LatLng(amk, amm), new LatLng(aml, amn));
    }
  }
  
  public Builder include(LatLng paramLatLng)
  {
    amk = Math.min(amk, latitude);
    aml = Math.max(aml, latitude);
    double d = longitude;
    if (Double.isNaN(amm))
    {
      amm = d;
      amn = d;
    }
    while (d(d)) {
      return this;
    }
    if (LatLngBounds.d(amm, d) < LatLngBounds.e(amn, d))
    {
      amm = d;
      return this;
    }
    amn = d;
    return this;
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.maps.model.LatLngBounds.Builder
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */