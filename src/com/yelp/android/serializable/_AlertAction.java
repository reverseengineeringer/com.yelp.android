package com.yelp.android.serializable;

import android.os.Parcel;
import android.os.Parcelable;
import org.json.JSONObject;

abstract class _AlertAction
  implements Parcelable
{
  protected String mActedLabel;
  protected String mLabel;
  protected String mPath;
  
  protected _AlertAction() {}
  
  protected _AlertAction(String paramString1, String paramString2, String paramString3)
  {
    this();
    mLabel = paramString1;
    mPath = paramString2;
    mActedLabel = paramString3;
  }
  
  public int describeContents()
  {
    return 0;
  }
  
  public String getActedLabel()
  {
    return mActedLabel;
  }
  
  public String getLabel()
  {
    return mLabel;
  }
  
  public String getPath()
  {
    return mPath;
  }
  
  public void readFromJson(JSONObject paramJSONObject)
  {
    if (!paramJSONObject.isNull("label")) {
      mLabel = paramJSONObject.optString("label");
    }
    if (!paramJSONObject.isNull("path")) {
      mPath = paramJSONObject.optString("path");
    }
    if (!paramJSONObject.isNull("acted_label")) {
      mActedLabel = paramJSONObject.optString("acted_label");
    }
  }
  
  public void readFromParcel(Parcel paramParcel)
  {
    mLabel = paramParcel.readString();
    mPath = paramParcel.readString();
    mActedLabel = paramParcel.readString();
  }
  
  public JSONObject writeJSON()
  {
    JSONObject localJSONObject = new JSONObject();
    if (mLabel != null) {
      localJSONObject.put("label", mLabel);
    }
    if (mPath != null) {
      localJSONObject.put("path", mPath);
    }
    if (mActedLabel != null) {
      localJSONObject.put("acted_label", mActedLabel);
    }
    return localJSONObject;
  }
  
  public void writeToParcel(Parcel paramParcel, int paramInt)
  {
    paramParcel.writeString(mLabel);
    paramParcel.writeString(mPath);
    paramParcel.writeString(mActedLabel);
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.serializable._AlertAction
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */