package com.yelp.android.serializable;

import android.os.Parcel;
import com.yelp.parcelgen.JsonParser.DualCreator;
import org.json.JSONObject;

final class dd
  extends JsonParser.DualCreator<SurveyQuestion>
{
  public SurveyQuestion a(Parcel paramParcel)
  {
    SurveyQuestion localSurveyQuestion = new SurveyQuestion();
    localSurveyQuestion.readFromParcel(paramParcel);
    return localSurveyQuestion;
  }
  
  public SurveyQuestion a(JSONObject paramJSONObject)
  {
    SurveyQuestion localSurveyQuestion = new SurveyQuestion();
    localSurveyQuestion.readFromJson(paramJSONObject);
    return localSurveyQuestion;
  }
  
  public SurveyQuestion[] a(int paramInt)
  {
    return new SurveyQuestion[paramInt];
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.serializable.dd
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */