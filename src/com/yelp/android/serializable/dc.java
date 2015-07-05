package com.yelp.android.serializable;

import android.os.Parcel;
import com.yelp.parcelgen.JsonParser.DualCreator;
import org.json.JSONObject;

final class dc
  extends JsonParser.DualCreator<SurveyAnswer>
{
  public SurveyAnswer a(Parcel paramParcel)
  {
    SurveyAnswer localSurveyAnswer = new SurveyAnswer();
    localSurveyAnswer.readFromParcel(paramParcel);
    return localSurveyAnswer;
  }
  
  public SurveyAnswer a(JSONObject paramJSONObject)
  {
    SurveyAnswer localSurveyAnswer = new SurveyAnswer();
    localSurveyAnswer.readFromJson(paramJSONObject);
    return localSurveyAnswer;
  }
  
  public SurveyAnswer[] a(int paramInt)
  {
    return new SurveyAnswer[paramInt];
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.serializable.dc
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */