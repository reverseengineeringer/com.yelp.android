package com.yelp.android.serializable;

import android.os.Parcel;
import com.yelp.parcelgen.JsonParser.DualCreator;
import org.json.JSONObject;

final class bv
  extends JsonParser.DualCreator<PlatformAction>
{
  public PlatformAction a(Parcel paramParcel)
  {
    PlatformAction localPlatformAction = new PlatformAction();
    localPlatformAction.readFromParcel(paramParcel);
    return localPlatformAction;
  }
  
  public PlatformAction a(JSONObject paramJSONObject)
  {
    PlatformAction localPlatformAction = new PlatformAction();
    localPlatformAction.readFromJson(paramJSONObject);
    return localPlatformAction;
  }
  
  public PlatformAction[] a(int paramInt)
  {
    return new PlatformAction[paramInt];
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.serializable.bv
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */