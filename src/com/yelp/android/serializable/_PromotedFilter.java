package com.yelp.android.serializable;

import android.os.Parcel;
import android.os.Parcelable;
import org.json.JSONObject;

abstract class _PromotedFilter
  implements Parcelable
{
  protected String mAlias;
  protected String mLabelAttributed;
  protected String mName;
  protected String mType;
  
  protected _PromotedFilter() {}
  
  protected _PromotedFilter(String paramString1, String paramString2, String paramString3, String paramString4)
  {
    this();
    mAlias = paramString1;
    mName = paramString2;
    mType = paramString3;
    mLabelAttributed = paramString4;
  }
  
  public int describeContents()
  {
    return 0;
  }
  
  public String getAlias()
  {
    return mAlias;
  }
  
  public String getLabelAttributed()
  {
    return mLabelAttributed;
  }
  
  public String getName()
  {
    return mName;
  }
  
  public String getType()
  {
    return mType;
  }
  
  public void readFromJson(JSONObject paramJSONObject)
  {
    if (!paramJSONObject.isNull("alias")) {
      mAlias = paramJSONObject.optString("alias");
    }
    if (!paramJSONObject.isNull("name")) {
      mName = paramJSONObject.optString("name");
    }
    if (!paramJSONObject.isNull("type")) {
      mType = paramJSONObject.optString("type");
    }
    if (!paramJSONObject.isNull("label_attributed")) {
      mLabelAttributed = paramJSONObject.optString("label_attributed");
    }
  }
  
  public void readFromParcel(Parcel paramParcel)
  {
    mAlias = paramParcel.readString();
    mName = paramParcel.readString();
    mType = paramParcel.readString();
    mLabelAttributed = paramParcel.readString();
  }
  
  public void writeToParcel(Parcel paramParcel, int paramInt)
  {
    paramParcel.writeString(mAlias);
    paramParcel.writeString(mName);
    paramParcel.writeString(mType);
    paramParcel.writeString(mLabelAttributed);
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.serializable._PromotedFilter
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */