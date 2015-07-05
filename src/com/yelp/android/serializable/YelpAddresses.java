package com.yelp.android.serializable;

import com.yelp.parcelgen.JsonParser.DualCreator;

public class YelpAddresses
  extends _YelpAddresses
{
  public static final JsonParser.DualCreator<YelpAddresses> CREATOR = new du();
  
  public YelpAddresses() {}
  
  public YelpAddresses(YelpAddress paramYelpAddress1, YelpAddress paramYelpAddress2)
  {
    super(paramYelpAddress1, paramYelpAddress2);
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.serializable.YelpAddresses
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */