package com.yelp.android.serializable;

import android.os.Parcel;
import com.yelp.parcelgen.JsonParser.DualCreator;
import org.json.JSONObject;

final class t
  extends JsonParser.DualCreator<CallToAction>
{
  public CallToAction a(Parcel paramParcel)
  {
    CallToAction localCallToAction = new CallToAction();
    localCallToAction.readFromParcel(paramParcel);
    return localCallToAction;
  }
  
  public CallToAction a(JSONObject paramJSONObject)
  {
    CallToAction localCallToAction = new CallToAction();
    localCallToAction.readFromJson(paramJSONObject);
    return localCallToAction;
  }
  
  public CallToAction[] a(int paramInt)
  {
    return new CallToAction[paramInt];
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.serializable.t
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */