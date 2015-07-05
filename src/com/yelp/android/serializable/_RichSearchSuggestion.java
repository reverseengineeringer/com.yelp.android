package com.yelp.android.serializable;

import android.os.Parcel;
import android.os.Parcelable;
import com.yelp.parcelgen.JsonParser.DualCreator;
import org.json.JSONObject;

abstract class _RichSearchSuggestion
  implements Parcelable
{
  protected String mAlias;
  protected YelpBusiness mBusiness;
  protected String mDescription;
  protected String mImagePath;
  protected String mImageUrl;
  protected String mSuggestionTypeString;
  protected String mTerm;
  
  protected _RichSearchSuggestion() {}
  
  protected _RichSearchSuggestion(String paramString1, String paramString2, String paramString3, String paramString4, String paramString5, String paramString6, YelpBusiness paramYelpBusiness)
  {
    this();
    mSuggestionTypeString = paramString1;
    mTerm = paramString2;
    mDescription = paramString3;
    mImagePath = paramString4;
    mImageUrl = paramString5;
    mAlias = paramString6;
    mBusiness = paramYelpBusiness;
  }
  
  public int describeContents()
  {
    return 0;
  }
  
  public String getAlias()
  {
    return mAlias;
  }
  
  public YelpBusiness getBusiness()
  {
    return mBusiness;
  }
  
  public String getDescription()
  {
    return mDescription;
  }
  
  public String getImagePath()
  {
    return mImagePath;
  }
  
  public String getImageUrl()
  {
    return mImageUrl;
  }
  
  public String getSuggestionTypeString()
  {
    return mSuggestionTypeString;
  }
  
  public String getTerm()
  {
    return mTerm;
  }
  
  public void readFromJson(JSONObject paramJSONObject)
  {
    if (!paramJSONObject.isNull("type")) {
      mSuggestionTypeString = paramJSONObject.optString("type");
    }
    if (!paramJSONObject.isNull("term")) {
      mTerm = paramJSONObject.optString("term");
    }
    if (!paramJSONObject.isNull("description")) {
      mDescription = paramJSONObject.optString("description");
    }
    if (!paramJSONObject.isNull("image_path")) {
      mImagePath = paramJSONObject.optString("image_path");
    }
    if (!paramJSONObject.isNull("image_url")) {
      mImageUrl = paramJSONObject.optString("image_url");
    }
    if (!paramJSONObject.isNull("alias")) {
      mAlias = paramJSONObject.optString("alias");
    }
    if (!paramJSONObject.isNull("business")) {
      mBusiness = ((YelpBusiness)YelpBusiness.CREATOR.parse(paramJSONObject.getJSONObject("business")));
    }
  }
  
  public void readFromParcel(Parcel paramParcel)
  {
    mSuggestionTypeString = paramParcel.readString();
    mTerm = paramParcel.readString();
    mDescription = paramParcel.readString();
    mImagePath = paramParcel.readString();
    mImageUrl = paramParcel.readString();
    mAlias = paramParcel.readString();
    mBusiness = ((YelpBusiness)paramParcel.readParcelable(YelpBusiness.class.getClassLoader()));
  }
  
  public void writeToParcel(Parcel paramParcel, int paramInt)
  {
    paramParcel.writeString(mSuggestionTypeString);
    paramParcel.writeString(mTerm);
    paramParcel.writeString(mDescription);
    paramParcel.writeString(mImagePath);
    paramParcel.writeString(mImageUrl);
    paramParcel.writeString(mAlias);
    paramParcel.writeParcelable(mBusiness, 0);
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.serializable._RichSearchSuggestion
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */