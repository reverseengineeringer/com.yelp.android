package com.yelp.android.serializable;

import com.yelp.parcelgen.JsonParser.DualCreator;

public class Badge
  extends _Badge
{
  public static final JsonParser.DualCreator<Badge> CREATOR = new Badge.1();
  
  public int a()
  {
    return (int)(207.0D * c()) << 24 | 0xFFFFFF;
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.serializable.Badge
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */