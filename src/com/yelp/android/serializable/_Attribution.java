package com.yelp.android.serializable;

import android.os.Parcel;
import android.os.Parcelable;
import org.json.JSONObject;

abstract class _Attribution
  implements Parcelable
{
  protected String mText;
  protected String mTypeString;
  
  protected _Attribution() {}
  
  protected _Attribution(String paramString1, String paramString2)
  {
    this();
    mTypeString = paramString1;
    mText = paramString2;
  }
  
  public int describeContents()
  {
    return 0;
  }
  
  public String getText()
  {
    return mText;
  }
  
  public String getTypeString()
  {
    return mTypeString;
  }
  
  public void readFromJson(JSONObject paramJSONObject)
  {
    if (!paramJSONObject.isNull("type")) {
      mTypeString = paramJSONObject.optString("type");
    }
    if (!paramJSONObject.isNull("text")) {
      mText = paramJSONObject.optString("text");
    }
  }
  
  public void readFromParcel(Parcel paramParcel)
  {
    mTypeString = paramParcel.readString();
    mText = paramParcel.readString();
  }
  
  public JSONObject writeJSON()
  {
    JSONObject localJSONObject = new JSONObject();
    if (mTypeString != null) {
      localJSONObject.put("type", mTypeString);
    }
    if (mText != null) {
      localJSONObject.put("text", mText);
    }
    return localJSONObject;
  }
  
  public void writeToParcel(Parcel paramParcel, int paramInt)
  {
    paramParcel.writeString(mTypeString);
    paramParcel.writeString(mText);
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.serializable._Attribution
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */