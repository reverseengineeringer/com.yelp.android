package com.yelp.android.serializable;

import android.os.Parcel;
import android.os.Parcelable;
import com.yelp.parcelgen.JsonUtil;
import java.util.Collections;
import java.util.List;
import org.json.JSONObject;

abstract class _MenuItem
  implements Parcelable
{
  protected String mAlias;
  protected String mDescription;
  protected String mName;
  protected List<Photo> mPhotos;
  protected String mPrice;
  protected String mReviewSnippet;
  
  protected _MenuItem() {}
  
  protected _MenuItem(List<Photo> paramList, String paramString1, String paramString2, String paramString3, String paramString4, String paramString5)
  {
    this();
    mPhotos = paramList;
    mAlias = paramString1;
    mName = paramString2;
    mReviewSnippet = paramString3;
    mPrice = paramString4;
    mDescription = paramString5;
  }
  
  public int describeContents()
  {
    return 0;
  }
  
  public String getAlias()
  {
    return mAlias;
  }
  
  public String getDescription()
  {
    return mDescription;
  }
  
  public String getName()
  {
    return mName;
  }
  
  public List<Photo> getPhotos()
  {
    return mPhotos;
  }
  
  public String getPrice()
  {
    return mPrice;
  }
  
  public String getReviewSnippet()
  {
    return mReviewSnippet;
  }
  
  public void readFromJson(JSONObject paramJSONObject)
  {
    if (!paramJSONObject.isNull("photos")) {}
    for (mPhotos = JsonUtil.parseJsonList(paramJSONObject.optJSONArray("photos"), Photo.CREATOR);; mPhotos = Collections.emptyList())
    {
      if (!paramJSONObject.isNull("alias")) {
        mAlias = paramJSONObject.optString("alias");
      }
      if (!paramJSONObject.isNull("name")) {
        mName = paramJSONObject.optString("name");
      }
      if (!paramJSONObject.isNull("review_snippet")) {
        mReviewSnippet = paramJSONObject.optString("review_snippet");
      }
      if (!paramJSONObject.isNull("price")) {
        mPrice = paramJSONObject.optString("price");
      }
      if (!paramJSONObject.isNull("description")) {
        mDescription = paramJSONObject.optString("description");
      }
      return;
    }
  }
  
  public void readFromParcel(Parcel paramParcel)
  {
    mPhotos = paramParcel.createTypedArrayList(Photo.CREATOR);
    mAlias = paramParcel.readString();
    mName = paramParcel.readString();
    mReviewSnippet = paramParcel.readString();
    mPrice = paramParcel.readString();
    mDescription = paramParcel.readString();
  }
  
  public void writeToParcel(Parcel paramParcel, int paramInt)
  {
    paramParcel.writeTypedList(mPhotos);
    paramParcel.writeString(mAlias);
    paramParcel.writeString(mName);
    paramParcel.writeString(mReviewSnippet);
    paramParcel.writeString(mPrice);
    paramParcel.writeString(mDescription);
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.serializable._MenuItem
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */