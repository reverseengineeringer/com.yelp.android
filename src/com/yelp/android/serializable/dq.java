package com.yelp.android.serializable;

import android.os.Parcel;
import com.yelp.parcelgen.JsonParser.DualCreator;
import org.json.JSONObject;

final class dq
  extends JsonParser.DualCreator<WeeklyIssue>
{
  public WeeklyIssue a(Parcel paramParcel)
  {
    WeeklyIssue localWeeklyIssue = new WeeklyIssue();
    localWeeklyIssue.readFromParcel(paramParcel);
    return localWeeklyIssue;
  }
  
  public WeeklyIssue a(JSONObject paramJSONObject)
  {
    WeeklyIssue localWeeklyIssue = new WeeklyIssue();
    localWeeklyIssue.readFromJson(paramJSONObject);
    return localWeeklyIssue;
  }
  
  public WeeklyIssue[] a(int paramInt)
  {
    return new WeeklyIssue[paramInt];
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.serializable.dq
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */