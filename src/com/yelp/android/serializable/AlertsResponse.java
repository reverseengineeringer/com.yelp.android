package com.yelp.android.serializable;

import com.yelp.parcelgen.JsonParser.DualCreator;

public class AlertsResponse
  extends _AlertsResponse
{
  public static final JsonParser.DualCreator<AlertsResponse> CREATOR = new c();
  
  public void setNextPage(String paramString)
  {
    mNextPage = paramString;
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.serializable.AlertsResponse
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */