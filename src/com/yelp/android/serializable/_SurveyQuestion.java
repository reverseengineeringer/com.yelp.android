package com.yelp.android.serializable;

import android.os.Parcel;
import android.os.Parcelable;
import com.yelp.parcelgen.JsonUtil;
import java.util.ArrayList;
import java.util.Iterator;
import org.json.JSONArray;
import org.json.JSONObject;

abstract class _SurveyQuestion
  implements Parcelable
{
  protected ArrayList<SurveyAnswer> mAnswers;
  protected String mQuestion;
  protected String mQuestionIdentifier;
  
  protected _SurveyQuestion() {}
  
  protected _SurveyQuestion(ArrayList<SurveyAnswer> paramArrayList, String paramString1, String paramString2)
  {
    this();
    mAnswers = paramArrayList;
    mQuestion = paramString1;
    mQuestionIdentifier = paramString2;
  }
  
  public int describeContents()
  {
    return 0;
  }
  
  public ArrayList<SurveyAnswer> getAnswers()
  {
    return mAnswers;
  }
  
  public String getQuestion()
  {
    return mQuestion;
  }
  
  public String getQuestionIdentifier()
  {
    return mQuestionIdentifier;
  }
  
  public void readFromJson(JSONObject paramJSONObject)
  {
    if (!paramJSONObject.isNull("answers")) {}
    for (mAnswers = JsonUtil.parseJsonList(paramJSONObject.optJSONArray("answers"), SurveyAnswer.CREATOR);; mAnswers = new ArrayList())
    {
      if (!paramJSONObject.isNull("question")) {
        mQuestion = paramJSONObject.optString("question");
      }
      if (!paramJSONObject.isNull("question_identifier")) {
        mQuestionIdentifier = paramJSONObject.optString("question_identifier");
      }
      return;
    }
  }
  
  public void readFromParcel(Parcel paramParcel)
  {
    mAnswers = paramParcel.createTypedArrayList(SurveyAnswer.CREATOR);
    mQuestion = paramParcel.readString();
    mQuestionIdentifier = paramParcel.readString();
  }
  
  public JSONObject writeJSON()
  {
    JSONObject localJSONObject = new JSONObject();
    if (mAnswers != null)
    {
      JSONArray localJSONArray = new JSONArray();
      Iterator localIterator = mAnswers.iterator();
      while (localIterator.hasNext()) {
        localJSONArray.put(((SurveyAnswer)localIterator.next()).writeJSON());
      }
      localJSONObject.put("answers", localJSONArray);
    }
    if (mQuestion != null) {
      localJSONObject.put("question", mQuestion);
    }
    if (mQuestionIdentifier != null) {
      localJSONObject.put("question_identifier", mQuestionIdentifier);
    }
    return localJSONObject;
  }
  
  public void writeToParcel(Parcel paramParcel, int paramInt)
  {
    paramParcel.writeTypedList(mAnswers);
    paramParcel.writeString(mQuestion);
    paramParcel.writeString(mQuestionIdentifier);
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.serializable._SurveyQuestion
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */