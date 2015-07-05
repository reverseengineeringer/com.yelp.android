package com.yelp.android.serializable;

import android.os.Parcel;
import android.os.Parcelable;
import org.json.JSONObject;

abstract class _YelpAddress
  implements Parcelable
{
  protected String mCrossStreets;
  protected String mLongForm;
  protected String mShortForm;
  
  protected _YelpAddress() {}
  
  protected _YelpAddress(String paramString1, String paramString2, String paramString3)
  {
    this();
    mCrossStreets = paramString1;
    mShortForm = paramString2;
    mLongForm = paramString3;
  }
  
  public int describeContents()
  {
    return 0;
  }
  
  public String getCrossStreets()
  {
    return mCrossStreets;
  }
  
  public String getLongForm()
  {
    return mLongForm;
  }
  
  public String getShortForm()
  {
    return mShortForm;
  }
  
  public void readFromJson(JSONObject paramJSONObject)
  {
    if (!paramJSONObject.isNull("cross_streets")) {
      mCrossStreets = paramJSONObject.optString("cross_streets");
    }
    if (!paramJSONObject.isNull("short_form")) {
      mShortForm = paramJSONObject.optString("short_form");
    }
    if (!paramJSONObject.isNull("long_form")) {
      mLongForm = paramJSONObject.optString("long_form");
    }
  }
  
  public void readFromParcel(Parcel paramParcel)
  {
    mCrossStreets = paramParcel.readString();
    mShortForm = paramParcel.readString();
    mLongForm = paramParcel.readString();
  }
  
  public JSONObject writeJSON()
  {
    JSONObject localJSONObject = new JSONObject();
    if (mCrossStreets != null) {
      localJSONObject.put("cross_streets", mCrossStreets);
    }
    if (mShortForm != null) {
      localJSONObject.put("short_form", mShortForm);
    }
    if (mLongForm != null) {
      localJSONObject.put("long_form", mLongForm);
    }
    return localJSONObject;
  }
  
  public void writeToParcel(Parcel paramParcel, int paramInt)
  {
    paramParcel.writeString(mCrossStreets);
    paramParcel.writeString(mShortForm);
    paramParcel.writeString(mLongForm);
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.serializable._YelpAddress
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */