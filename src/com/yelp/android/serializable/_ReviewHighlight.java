package com.yelp.android.serializable;

import android.os.Parcel;
import android.os.Parcelable;
import org.json.JSONObject;

abstract class _ReviewHighlight
  implements Parcelable
{
  protected String mIdentifier;
  protected String mPhotoUrl;
  protected int mReviewCount;
  protected String mReviewId;
  protected String mSentence;
  protected String mTitle;
  protected String mType;
  
  protected _ReviewHighlight() {}
  
  protected _ReviewHighlight(String paramString1, String paramString2, String paramString3, String paramString4, String paramString5, String paramString6, int paramInt)
  {
    this();
    mType = paramString1;
    mIdentifier = paramString2;
    mSentence = paramString3;
    mReviewId = paramString4;
    mPhotoUrl = paramString5;
    mTitle = paramString6;
    mReviewCount = paramInt;
  }
  
  public int describeContents()
  {
    return 0;
  }
  
  public String getIdentifier()
  {
    return mIdentifier;
  }
  
  public String getPhotoUrl()
  {
    return mPhotoUrl;
  }
  
  public int getReviewCount()
  {
    return mReviewCount;
  }
  
  public String getReviewId()
  {
    return mReviewId;
  }
  
  public String getSentence()
  {
    return mSentence;
  }
  
  public String getTitle()
  {
    return mTitle;
  }
  
  public String getType()
  {
    return mType;
  }
  
  public void readFromJson(JSONObject paramJSONObject)
  {
    if (!paramJSONObject.isNull("type")) {
      mType = paramJSONObject.optString("type");
    }
    if (!paramJSONObject.isNull("identifier")) {
      mIdentifier = paramJSONObject.optString("identifier");
    }
    if (!paramJSONObject.isNull("sentence")) {
      mSentence = paramJSONObject.optString("sentence");
    }
    if (!paramJSONObject.isNull("review_id")) {
      mReviewId = paramJSONObject.optString("review_id");
    }
    if (!paramJSONObject.isNull("photo_url")) {
      mPhotoUrl = paramJSONObject.optString("photo_url");
    }
    if (!paramJSONObject.isNull("title")) {
      mTitle = paramJSONObject.optString("title");
    }
    mReviewCount = paramJSONObject.optInt("review_count");
  }
  
  public void readFromParcel(Parcel paramParcel)
  {
    mType = paramParcel.readString();
    mIdentifier = paramParcel.readString();
    mSentence = paramParcel.readString();
    mReviewId = paramParcel.readString();
    mPhotoUrl = paramParcel.readString();
    mTitle = paramParcel.readString();
    mReviewCount = paramParcel.readInt();
  }
  
  public void writeToParcel(Parcel paramParcel, int paramInt)
  {
    paramParcel.writeString(mType);
    paramParcel.writeString(mIdentifier);
    paramParcel.writeString(mSentence);
    paramParcel.writeString(mReviewId);
    paramParcel.writeString(mPhotoUrl);
    paramParcel.writeString(mTitle);
    paramParcel.writeInt(mReviewCount);
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.serializable._ReviewHighlight
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */