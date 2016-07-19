package com.yelp.android.serializable;

import com.yelp.parcelgen.JsonParser.DualCreator;

public class Distance
  extends _Distance
{
  public static final JsonParser.DualCreator<Distance> CREATOR = new Distance.1();
  
  private Distance() {}
  
  public Distance(String paramString, double paramDouble)
  {
    super(paramString, paramDouble);
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.serializable.Distance
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */