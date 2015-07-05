package com.yelp.android.serializable;

import android.os.Parcel;
import android.os.Parcelable;
import org.json.JSONObject;

abstract class _AttributedLabelValuePair
  implements Parcelable
{
  protected String mLabel;
  protected String mValue;
  
  protected _AttributedLabelValuePair() {}
  
  protected _AttributedLabelValuePair(String paramString1, String paramString2)
  {
    this();
    mLabel = paramString1;
    mValue = paramString2;
  }
  
  public int describeContents()
  {
    return 0;
  }
  
  public String getLabel()
  {
    return mLabel;
  }
  
  public String getValue()
  {
    return mValue;
  }
  
  public void readFromJson(JSONObject paramJSONObject)
  {
    if (!paramJSONObject.isNull("label")) {
      mLabel = paramJSONObject.optString("label");
    }
    if (!paramJSONObject.isNull("value")) {
      mValue = paramJSONObject.optString("value");
    }
  }
  
  public void readFromParcel(Parcel paramParcel)
  {
    mLabel = paramParcel.readString();
    mValue = paramParcel.readString();
  }
  
  public JSONObject writeJSON()
  {
    JSONObject localJSONObject = new JSONObject();
    if (mLabel != null) {
      localJSONObject.put("label", mLabel);
    }
    if (mValue != null) {
      localJSONObject.put("value", mValue);
    }
    return localJSONObject;
  }
  
  public void writeToParcel(Parcel paramParcel, int paramInt)
  {
    paramParcel.writeString(mLabel);
    paramParcel.writeString(mValue);
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.serializable._AttributedLabelValuePair
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */