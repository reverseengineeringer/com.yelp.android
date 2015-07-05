package com.yelp.android.serializable;

import android.os.Parcel;
import com.yelp.parcelgen.JsonParser.DualCreator;
import org.json.JSONObject;

final class y
  extends JsonParser.DualCreator<CheckInFeedback>
{
  public CheckInFeedback a(Parcel paramParcel)
  {
    CheckInFeedback localCheckInFeedback = new CheckInFeedback();
    localCheckInFeedback.readFromParcel(paramParcel);
    return localCheckInFeedback;
  }
  
  public CheckInFeedback a(JSONObject paramJSONObject)
  {
    CheckInFeedback localCheckInFeedback = new CheckInFeedback();
    localCheckInFeedback.readFromJson(paramJSONObject);
    return localCheckInFeedback;
  }
  
  public CheckInFeedback[] a(int paramInt)
  {
    return new CheckInFeedback[paramInt];
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.serializable.y
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */