package com.yelp.android.serializable;

import android.os.Parcel;
import android.os.Parcelable;
import org.json.JSONObject;

abstract class _BusinessCategorySuggest
  implements Parcelable
{
  protected String mAlias;
  protected boolean mExactMatch;
  protected String mParentTitle;
  protected boolean mParentTitleMatch;
  protected String mTitle;
  protected boolean mTitleMatch;
  
  protected _BusinessCategorySuggest() {}
  
  protected _BusinessCategorySuggest(String paramString1, String paramString2, String paramString3, boolean paramBoolean1, boolean paramBoolean2, boolean paramBoolean3)
  {
    this();
    mAlias = paramString1;
    mParentTitle = paramString2;
    mTitle = paramString3;
    mExactMatch = paramBoolean1;
    mTitleMatch = paramBoolean2;
    mParentTitleMatch = paramBoolean3;
  }
  
  public int describeContents()
  {
    return 0;
  }
  
  public String getAlias()
  {
    return mAlias;
  }
  
  public boolean getExactMatch()
  {
    return mExactMatch;
  }
  
  public String getParentTitle()
  {
    return mParentTitle;
  }
  
  public boolean getParentTitleMatch()
  {
    return mParentTitleMatch;
  }
  
  public String getTitle()
  {
    return mTitle;
  }
  
  public boolean getTitleMatch()
  {
    return mTitleMatch;
  }
  
  public void readFromJson(JSONObject paramJSONObject)
  {
    if (!paramJSONObject.isNull("alias")) {
      mAlias = paramJSONObject.optString("alias");
    }
    if (!paramJSONObject.isNull("parent_title")) {
      mParentTitle = paramJSONObject.optString("parent_title");
    }
    if (!paramJSONObject.isNull("title")) {
      mTitle = paramJSONObject.optString("title");
    }
    mExactMatch = paramJSONObject.optBoolean("exact_match");
    mTitleMatch = paramJSONObject.optBoolean("title_match");
    mParentTitleMatch = paramJSONObject.optBoolean("parent_title_match");
  }
  
  public void readFromParcel(Parcel paramParcel)
  {
    mAlias = paramParcel.readString();
    mParentTitle = paramParcel.readString();
    mTitle = paramParcel.readString();
    paramParcel = paramParcel.createBooleanArray();
    mExactMatch = paramParcel[0];
    mTitleMatch = paramParcel[1];
    mParentTitleMatch = paramParcel[2];
  }
  
  public void writeToParcel(Parcel paramParcel, int paramInt)
  {
    paramParcel.writeString(mAlias);
    paramParcel.writeString(mParentTitle);
    paramParcel.writeString(mTitle);
    paramParcel.writeBooleanArray(new boolean[] { mExactMatch, mTitleMatch, mParentTitleMatch });
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.serializable._BusinessCategorySuggest
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */