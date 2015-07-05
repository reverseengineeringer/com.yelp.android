package com.yelp.android.serializable;

import android.os.Parcel;
import android.os.Parcelable;
import org.json.JSONObject;

abstract class _SurveyAnswer
  implements Parcelable
{
  protected String mAnswerIdentifier;
  protected String mSuccessMessage;
  protected String mText;
  protected String mTitle;
  
  protected _SurveyAnswer() {}
  
  protected _SurveyAnswer(String paramString1, String paramString2, String paramString3, String paramString4)
  {
    this();
    mTitle = paramString1;
    mText = paramString2;
    mAnswerIdentifier = paramString3;
    mSuccessMessage = paramString4;
  }
  
  public int describeContents()
  {
    return 0;
  }
  
  public String getAnswerIdentifier()
  {
    return mAnswerIdentifier;
  }
  
  public String getSuccessMessage()
  {
    return mSuccessMessage;
  }
  
  public String getText()
  {
    return mText;
  }
  
  public String getTitle()
  {
    return mTitle;
  }
  
  public void readFromJson(JSONObject paramJSONObject)
  {
    if (!paramJSONObject.isNull("title")) {
      mTitle = paramJSONObject.optString("title");
    }
    if (!paramJSONObject.isNull("text")) {
      mText = paramJSONObject.optString("text");
    }
    if (!paramJSONObject.isNull("answer_identifier")) {
      mAnswerIdentifier = paramJSONObject.optString("answer_identifier");
    }
    if (!paramJSONObject.isNull("success_message")) {
      mSuccessMessage = paramJSONObject.optString("success_message");
    }
  }
  
  public void readFromParcel(Parcel paramParcel)
  {
    mTitle = paramParcel.readString();
    mText = paramParcel.readString();
    mAnswerIdentifier = paramParcel.readString();
    mSuccessMessage = paramParcel.readString();
  }
  
  public JSONObject writeJSON()
  {
    JSONObject localJSONObject = new JSONObject();
    if (mTitle != null) {
      localJSONObject.put("title", mTitle);
    }
    if (mText != null) {
      localJSONObject.put("text", mText);
    }
    if (mAnswerIdentifier != null) {
      localJSONObject.put("answer_identifier", mAnswerIdentifier);
    }
    if (mSuccessMessage != null) {
      localJSONObject.put("success_message", mSuccessMessage);
    }
    return localJSONObject;
  }
  
  public void writeToParcel(Parcel paramParcel, int paramInt)
  {
    paramParcel.writeString(mTitle);
    paramParcel.writeString(mText);
    paramParcel.writeString(mAnswerIdentifier);
    paramParcel.writeString(mSuccessMessage);
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.serializable._SurveyAnswer
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */