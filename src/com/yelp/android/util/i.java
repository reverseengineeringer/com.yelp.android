package com.yelp.android.util;

import android.location.Location;
import com.google.android.gms.maps.model.LatLng;

public class i
{
  public static double a(double paramDouble)
  {
    return 1000.0D * paramDouble / 0.62137119224D;
  }
  
  public static double a(double paramDouble1, double paramDouble2, double paramDouble3, double paramDouble4)
  {
    if ((Double.isNaN(paramDouble1)) || (Double.isNaN(paramDouble2)) || (Double.isNaN(paramDouble3)) || (Double.isNaN(paramDouble4))) {
      return NaN.0D;
    }
    float[] arrayOfFloat = new float[1];
    Location.distanceBetween(paramDouble1, paramDouble2, paramDouble3, paramDouble4, arrayOfFloat);
    return arrayOfFloat[0] / 1000.0F;
  }
  
  public static double a(LatLng paramLatLng1, LatLng paramLatLng2)
  {
    double d2 = a(a, b, a, b) * 1000.0D;
    double d1 = d2;
    if (d2 < 0.0D) {
      d1 = d2 * -1.0D;
    }
    return d1;
  }
  
  public static final boolean a(Location paramLocation)
  {
    return (paramLocation != null) && (paramLocation.hasAccuracy()) && (paramLocation.getAccuracy() < 241.0F);
  }
  
  public static double b(double paramDouble)
  {
    return paramDouble / 0.62137119224D;
  }
  
  public static double c(double paramDouble)
  {
    return paramDouble / 1000.0D;
  }
  
  public static double d(double paramDouble)
  {
    return 0.62137119224D * paramDouble / 1000.0D;
  }
  
  public static double e(double paramDouble)
  {
    return 0.62137119224D * paramDouble;
  }
  
  public static double f(double paramDouble)
  {
    return paramDouble / 1000.0D;
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.util.i
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */