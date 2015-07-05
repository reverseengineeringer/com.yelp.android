package com.yelp.android.serializable;

import android.os.Parcel;
import android.os.Parcelable;
import org.json.JSONObject;

abstract class _YelpDealOption
  implements Parcelable
{
  protected int mAvailableCount;
  protected String mDescription;
  protected String mId;
  protected String mOriginalPrice;
  protected String mPrice;
  protected int mPurchasedCount;
  protected String mTitle;
  
  protected _YelpDealOption() {}
  
  protected _YelpDealOption(String paramString1, String paramString2, String paramString3, String paramString4, String paramString5, int paramInt1, int paramInt2)
  {
    this();
    mTitle = paramString1;
    mDescription = paramString2;
    mId = paramString3;
    mPrice = paramString4;
    mOriginalPrice = paramString5;
    mAvailableCount = paramInt1;
    mPurchasedCount = paramInt2;
  }
  
  public int describeContents()
  {
    return 0;
  }
  
  public int getAvailableCount()
  {
    return mAvailableCount;
  }
  
  public String getDescription()
  {
    return mDescription;
  }
  
  public String getId()
  {
    return mId;
  }
  
  public String getOriginalPrice()
  {
    return mOriginalPrice;
  }
  
  public String getPrice()
  {
    return mPrice;
  }
  
  public int getPurchasedCount()
  {
    return mPurchasedCount;
  }
  
  public String getTitle()
  {
    return mTitle;
  }
  
  public void readFromJson(JSONObject paramJSONObject)
  {
    if (!paramJSONObject.isNull("title")) {
      mTitle = paramJSONObject.optString("title");
    }
    if (!paramJSONObject.isNull("description")) {
      mDescription = paramJSONObject.optString("description");
    }
    if (!paramJSONObject.isNull("id")) {
      mId = paramJSONObject.optString("id");
    }
    if (!paramJSONObject.isNull("price")) {
      mPrice = paramJSONObject.optString("price");
    }
    if (!paramJSONObject.isNull("original_price")) {
      mOriginalPrice = paramJSONObject.optString("original_price");
    }
    if (!paramJSONObject.isNull("available_count")) {}
    for (mAvailableCount = paramJSONObject.optInt("available_count"); !paramJSONObject.isNull("purchased_count"); mAvailableCount = -1)
    {
      mPurchasedCount = paramJSONObject.optInt("purchased_count");
      return;
    }
    mPurchasedCount = -1;
  }
  
  public void readFromParcel(Parcel paramParcel)
  {
    mTitle = paramParcel.readString();
    mDescription = paramParcel.readString();
    mId = paramParcel.readString();
    mPrice = paramParcel.readString();
    mOriginalPrice = paramParcel.readString();
    mAvailableCount = paramParcel.readInt();
    mPurchasedCount = paramParcel.readInt();
  }
  
  public JSONObject writeJSON()
  {
    JSONObject localJSONObject = new JSONObject();
    if (mTitle != null) {
      localJSONObject.put("title", mTitle);
    }
    if (mDescription != null) {
      localJSONObject.put("description", mDescription);
    }
    if (mId != null) {
      localJSONObject.put("id", mId);
    }
    if (mPrice != null) {
      localJSONObject.put("price", mPrice);
    }
    if (mOriginalPrice != null) {
      localJSONObject.put("original_price", mOriginalPrice);
    }
    localJSONObject.put("available_count", mAvailableCount);
    localJSONObject.put("purchased_count", mPurchasedCount);
    return localJSONObject;
  }
  
  public void writeToParcel(Parcel paramParcel, int paramInt)
  {
    paramParcel.writeString(mTitle);
    paramParcel.writeString(mDescription);
    paramParcel.writeString(mId);
    paramParcel.writeString(mPrice);
    paramParcel.writeString(mOriginalPrice);
    paramParcel.writeInt(mAvailableCount);
    paramParcel.writeInt(mPurchasedCount);
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.serializable._YelpDealOption
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */