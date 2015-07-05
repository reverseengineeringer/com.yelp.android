package com.yelp.android.serializable;

import com.yelp.parcelgen.JsonParser.DualCreator;

public class DealLocation
  extends _DealLocation
{
  public static final JsonParser.DualCreator<DealLocation> CREATOR = new ad();
  
  public void setEnabled(boolean paramBoolean)
  {
    mIsEnabled = paramBoolean;
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.serializable.DealLocation
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */