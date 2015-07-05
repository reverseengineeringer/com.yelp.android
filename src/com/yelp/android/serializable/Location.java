package com.yelp.android.serializable;

import com.google.android.gms.maps.model.LatLng;
import com.yelp.parcelgen.JsonParser.DualCreator;

public class Location
  extends _Location
{
  public static final JsonParser.DualCreator<Location> CREATOR = new bc();
  
  public LatLng getLatLng()
  {
    return new LatLng(getLatitude(), getLongitude());
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.serializable.Location
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */