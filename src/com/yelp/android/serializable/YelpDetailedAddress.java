package com.yelp.android.serializable;

import com.yelp.parcelgen.JsonParser.DualCreator;

public class YelpDetailedAddress
  extends _YelpDetailedAddress
{
  public static final JsonParser.DualCreator<YelpDetailedAddress> CREATOR = new YelpDetailedAddress.1();
  
  public YelpDetailedAddress() {}
  
  public YelpDetailedAddress(String paramString1, String paramString2, String paramString3)
  {
    super(paramString1, paramString2, paramString3);
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.serializable.YelpDetailedAddress
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */