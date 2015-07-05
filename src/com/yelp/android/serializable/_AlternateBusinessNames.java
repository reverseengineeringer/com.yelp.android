package com.yelp.android.serializable;

import android.os.Parcel;
import android.os.Parcelable;
import org.json.JSONObject;

abstract class _AlternateBusinessNames
  implements Parcelable
{
  protected String mPrimary;
  protected String mRomanized;
  protected String mSecondary;
  
  protected _AlternateBusinessNames() {}
  
  protected _AlternateBusinessNames(String paramString1, String paramString2, String paramString3)
  {
    this();
    mPrimary = paramString1;
    mSecondary = paramString2;
    mRomanized = paramString3;
  }
  
  public int describeContents()
  {
    return 0;
  }
  
  public String getPrimary()
  {
    return mPrimary;
  }
  
  public String getRomanized()
  {
    return mRomanized;
  }
  
  public String getSecondary()
  {
    return mSecondary;
  }
  
  public void readFromJson(JSONObject paramJSONObject)
  {
    if (!paramJSONObject.isNull("primary")) {
      mPrimary = paramJSONObject.optString("primary");
    }
    if (!paramJSONObject.isNull("secondary")) {
      mSecondary = paramJSONObject.optString("secondary");
    }
    if (!paramJSONObject.isNull("romanized")) {
      mRomanized = paramJSONObject.optString("romanized");
    }
  }
  
  public void readFromParcel(Parcel paramParcel)
  {
    mPrimary = paramParcel.readString();
    mSecondary = paramParcel.readString();
    mRomanized = paramParcel.readString();
  }
  
  public JSONObject writeJSON()
  {
    JSONObject localJSONObject = new JSONObject();
    if (mPrimary != null) {
      localJSONObject.put("primary", mPrimary);
    }
    if (mSecondary != null) {
      localJSONObject.put("secondary", mSecondary);
    }
    if (mRomanized != null) {
      localJSONObject.put("romanized", mRomanized);
    }
    return localJSONObject;
  }
  
  public void writeToParcel(Parcel paramParcel, int paramInt)
  {
    paramParcel.writeString(mPrimary);
    paramParcel.writeString(mSecondary);
    paramParcel.writeString(mRomanized);
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.serializable._AlternateBusinessNames
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */