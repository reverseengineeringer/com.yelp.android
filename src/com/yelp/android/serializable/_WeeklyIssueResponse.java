package com.yelp.android.serializable;

import android.os.Parcel;
import android.os.Parcelable;
import com.yelp.parcelgen.JsonParser.DualCreator;
import org.json.JSONObject;

abstract class _WeeklyIssueResponse
  implements Parcelable
{
  protected WeeklyIssue mWeeklyIssue;
  
  protected _WeeklyIssueResponse() {}
  
  protected _WeeklyIssueResponse(WeeklyIssue paramWeeklyIssue)
  {
    this();
    mWeeklyIssue = paramWeeklyIssue;
  }
  
  public int describeContents()
  {
    return 0;
  }
  
  public WeeklyIssue getWeeklyIssue()
  {
    return mWeeklyIssue;
  }
  
  public void readFromJson(JSONObject paramJSONObject)
  {
    if (!paramJSONObject.isNull("weekly_issue")) {
      mWeeklyIssue = ((WeeklyIssue)WeeklyIssue.CREATOR.parse(paramJSONObject.getJSONObject("weekly_issue")));
    }
  }
  
  public void readFromParcel(Parcel paramParcel)
  {
    mWeeklyIssue = ((WeeklyIssue)paramParcel.readParcelable(WeeklyIssue.class.getClassLoader()));
  }
  
  public void writeToParcel(Parcel paramParcel, int paramInt)
  {
    paramParcel.writeParcelable(mWeeklyIssue, 0);
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.serializable._WeeklyIssueResponse
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */