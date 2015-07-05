package com.yelp.android.serializable;

import android.os.Parcel;
import android.os.Parcelable;
import org.json.JSONObject;

abstract class _DealLocation
  implements Parcelable
{
  protected String mId;
  protected boolean mIsEnabled;
  protected String mName;
  
  protected _DealLocation() {}
  
  protected _DealLocation(String paramString1, String paramString2, boolean paramBoolean)
  {
    this();
    mId = paramString1;
    mName = paramString2;
    mIsEnabled = paramBoolean;
  }
  
  public int describeContents()
  {
    return 0;
  }
  
  public String getId()
  {
    return mId;
  }
  
  public String getName()
  {
    return mName;
  }
  
  public boolean isEnabled()
  {
    return mIsEnabled;
  }
  
  public void readFromJson(JSONObject paramJSONObject)
  {
    if (!paramJSONObject.isNull("id")) {
      mId = paramJSONObject.optString("id");
    }
    if (!paramJSONObject.isNull("name")) {
      mName = paramJSONObject.optString("name");
    }
    mIsEnabled = paramJSONObject.optBoolean("is_enabled");
  }
  
  public void readFromParcel(Parcel paramParcel)
  {
    mId = paramParcel.readString();
    mName = paramParcel.readString();
    mIsEnabled = paramParcel.createBooleanArray()[0];
  }
  
  public void writeToParcel(Parcel paramParcel, int paramInt)
  {
    paramParcel.writeString(mId);
    paramParcel.writeString(mName);
    paramParcel.writeBooleanArray(new boolean[] { mIsEnabled });
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.serializable._DealLocation
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */