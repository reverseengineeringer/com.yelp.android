package com.yelp.android.serializable;

import android.os.Parcel;
import com.yelp.parcelgen.JsonParser.DualCreator;
import org.json.JSONObject;

final class bh
  extends JsonParser.DualCreator<MoreInfoAction>
{
  public MoreInfoAction a(Parcel paramParcel)
  {
    MoreInfoAction localMoreInfoAction = new MoreInfoAction();
    localMoreInfoAction.readFromParcel(paramParcel);
    return localMoreInfoAction;
  }
  
  public MoreInfoAction a(JSONObject paramJSONObject)
  {
    MoreInfoAction localMoreInfoAction = new MoreInfoAction();
    localMoreInfoAction.readFromJson(paramJSONObject);
    return localMoreInfoAction;
  }
  
  public MoreInfoAction[] a(int paramInt)
  {
    return new MoreInfoAction[paramInt];
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.serializable.bh
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */