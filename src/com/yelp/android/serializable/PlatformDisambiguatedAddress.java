package com.yelp.android.serializable;

import com.yelp.parcelgen.JsonParser.DualCreator;

public class PlatformDisambiguatedAddress
  extends _PlatformDisambiguatedAddress
{
  public static final JsonParser.DualCreator<PlatformDisambiguatedAddress> CREATOR = new PlatformDisambiguatedAddress.1();
  
  public boolean equals(Object paramObject)
  {
    return ((paramObject instanceof PlatformDisambiguatedAddress)) && (((PlatformDisambiguatedAddress)paramObject).c().equals(b));
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.serializable.PlatformDisambiguatedAddress
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */