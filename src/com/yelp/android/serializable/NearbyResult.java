package com.yelp.android.serializable;

import com.yelp.parcelgen.JsonParser.DualCreator;

public class NearbyResult
  extends _NearbyResult
{
  public static final JsonParser.DualCreator<NearbyResult> CREATOR = new bk();
  private String mRowId;
  
  public String getRowId()
  {
    return mRowId;
  }
  
  public void setRowId(String paramString)
  {
    mRowId = paramString;
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.serializable.NearbyResult
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */