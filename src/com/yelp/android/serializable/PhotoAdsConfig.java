package com.yelp.android.serializable;

import com.yelp.parcelgen.JsonParser.DualCreator;

public class PhotoAdsConfig
  extends _PhotoAdsConfig
{
  public static final JsonParser.DualCreator<PhotoAdsConfig> CREATOR = new PhotoAdsConfig.1();
  
  public PhotoAdsConfig() {}
  
  public PhotoAdsConfig(int paramInt1, int paramInt2)
  {
    super(paramInt1, paramInt2);
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.serializable.PhotoAdsConfig
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */