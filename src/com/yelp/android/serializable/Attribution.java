package com.yelp.android.serializable;

import com.yelp.parcelgen.JsonParser.DualCreator;

public class Attribution
  extends _Attribution
{
  public static final JsonParser.DualCreator<Attribution> CREATOR = new h();
  
  public Attribution.Type getType()
  {
    return Attribution.Type.getType(getTypeString());
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.serializable.Attribution
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */