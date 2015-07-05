package com.yelp.android.serializable;

import android.os.Parcel;
import com.yelp.parcelgen.JsonParser.DualCreator;
import org.json.JSONObject;

final class dr
  extends JsonParser.DualCreator<WeeklyIssueResponse>
{
  public WeeklyIssueResponse a(Parcel paramParcel)
  {
    WeeklyIssueResponse localWeeklyIssueResponse = new WeeklyIssueResponse();
    localWeeklyIssueResponse.readFromParcel(paramParcel);
    return localWeeklyIssueResponse;
  }
  
  public WeeklyIssueResponse a(JSONObject paramJSONObject)
  {
    WeeklyIssueResponse localWeeklyIssueResponse = new WeeklyIssueResponse();
    localWeeklyIssueResponse.readFromJson(paramJSONObject);
    return localWeeklyIssueResponse;
  }
  
  public WeeklyIssueResponse[] a(int paramInt)
  {
    return new WeeklyIssueResponse[paramInt];
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.serializable.dr
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */