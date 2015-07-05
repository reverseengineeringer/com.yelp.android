package com.yelp.android.serializable;

import android.os.Parcel;
import org.json.JSONObject;

final class bw
  extends ah<PlatformSearchAction>
{
  public PlatformSearchAction a(Parcel paramParcel)
  {
    PlatformSearchAction localPlatformSearchAction = new PlatformSearchAction();
    localPlatformSearchAction.readFromParcel(paramParcel);
    return localPlatformSearchAction;
  }
  
  public PlatformSearchAction a(JSONObject paramJSONObject)
  {
    PlatformSearchAction localPlatformSearchAction = new PlatformSearchAction();
    localPlatformSearchAction.readFromJson(paramJSONObject);
    return localPlatformSearchAction;
  }
  
  public PlatformSearchAction[] a(int paramInt)
  {
    return new PlatformSearchAction[paramInt];
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.serializable.bw
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */