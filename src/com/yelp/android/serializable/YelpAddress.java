package com.yelp.android.serializable;

import com.yelp.parcelgen.JsonParser.DualCreator;

public class YelpAddress
  extends _YelpAddress
{
  public static final JsonParser.DualCreator<YelpAddress> CREATOR = new dt();
  
  public YelpAddress() {}
  
  public YelpAddress(String paramString1, String paramString2, String paramString3)
  {
    super(paramString1, paramString2, paramString3);
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.serializable.YelpAddress
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */