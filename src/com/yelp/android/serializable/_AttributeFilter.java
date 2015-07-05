package com.yelp.android.serializable;

import android.os.Parcel;
import android.os.Parcelable;
import org.json.JSONObject;

abstract class _AttributeFilter
  implements Parcelable
{
  protected String mAlias;
  protected boolean mIsPopular;
  protected String mLocalizedLabel;
  
  protected _AttributeFilter() {}
  
  protected _AttributeFilter(String paramString1, String paramString2, boolean paramBoolean)
  {
    this();
    mAlias = paramString1;
    mLocalizedLabel = paramString2;
    mIsPopular = paramBoolean;
  }
  
  public int describeContents()
  {
    return 0;
  }
  
  public String getAlias()
  {
    return mAlias;
  }
  
  public String getLocalizedLabel()
  {
    return mLocalizedLabel;
  }
  
  public boolean isPopular()
  {
    return mIsPopular;
  }
  
  public void readFromJson(JSONObject paramJSONObject)
  {
    if (!paramJSONObject.isNull("alias")) {
      mAlias = paramJSONObject.optString("alias");
    }
    if (!paramJSONObject.isNull("localized_label")) {
      mLocalizedLabel = paramJSONObject.optString("localized_label");
    }
    mIsPopular = paramJSONObject.optBoolean("is_popular");
  }
  
  public void readFromParcel(Parcel paramParcel)
  {
    mAlias = paramParcel.readString();
    mLocalizedLabel = paramParcel.readString();
    mIsPopular = paramParcel.createBooleanArray()[0];
  }
  
  public void writeToParcel(Parcel paramParcel, int paramInt)
  {
    paramParcel.writeString(mAlias);
    paramParcel.writeString(mLocalizedLabel);
    paramParcel.writeBooleanArray(new boolean[] { mIsPopular });
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.serializable._AttributeFilter
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */