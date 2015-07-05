package com.yelp.android.serializable;

import android.os.Parcel;
import android.os.Parcelable;
import org.json.JSONObject;

abstract class _DealPurchase
  implements Parcelable
{
  protected String mCustomerEmail;
  protected String mCustomerName;
  protected String mId;
  protected boolean mIsRedeemed;
  protected String mOptionId;
  protected String mPurchasedByName;
  protected String mRedemptionCode;
  protected String mRedemptionTitle;
  protected String mTerms;
  protected long mTimeExpire;
  protected long mTimeRedeemed;
  
  protected _DealPurchase() {}
  
  protected _DealPurchase(String paramString1, String paramString2, String paramString3, String paramString4, String paramString5, String paramString6, String paramString7, String paramString8, boolean paramBoolean, long paramLong1, long paramLong2)
  {
    this();
    mId = paramString1;
    mOptionId = paramString2;
    mRedemptionCode = paramString3;
    mCustomerName = paramString4;
    mCustomerEmail = paramString5;
    mPurchasedByName = paramString6;
    mRedemptionTitle = paramString7;
    mTerms = paramString8;
    mIsRedeemed = paramBoolean;
    mTimeExpire = paramLong1;
    mTimeRedeemed = paramLong2;
  }
  
  public int describeContents()
  {
    return 0;
  }
  
  public String getCustomerEmail()
  {
    return mCustomerEmail;
  }
  
  public String getCustomerName()
  {
    return mCustomerName;
  }
  
  public String getId()
  {
    return mId;
  }
  
  public String getOptionId()
  {
    return mOptionId;
  }
  
  public String getPurchasedByName()
  {
    return mPurchasedByName;
  }
  
  public String getRedemptionCode()
  {
    return mRedemptionCode;
  }
  
  public String getRedemptionTitle()
  {
    return mRedemptionTitle;
  }
  
  public String getTerms()
  {
    return mTerms;
  }
  
  public long getTimeExpire()
  {
    return mTimeExpire;
  }
  
  public long getTimeRedeemed()
  {
    return mTimeRedeemed;
  }
  
  public boolean isRedeemed()
  {
    return mIsRedeemed;
  }
  
  public void readFromJson(JSONObject paramJSONObject)
  {
    if (!paramJSONObject.isNull("id")) {
      mId = paramJSONObject.optString("id");
    }
    if (!paramJSONObject.isNull("option_id")) {
      mOptionId = paramJSONObject.optString("option_id");
    }
    if (!paramJSONObject.isNull("redemption_code")) {
      mRedemptionCode = paramJSONObject.optString("redemption_code");
    }
    if (!paramJSONObject.isNull("customer_name")) {
      mCustomerName = paramJSONObject.optString("customer_name");
    }
    if (!paramJSONObject.isNull("customer_email")) {
      mCustomerEmail = paramJSONObject.optString("customer_email");
    }
    if (!paramJSONObject.isNull("purchased_by_name")) {
      mPurchasedByName = paramJSONObject.optString("purchased_by_name");
    }
    if (!paramJSONObject.isNull("redemption_title")) {
      mRedemptionTitle = paramJSONObject.optString("redemption_title");
    }
    if (!paramJSONObject.isNull("terms")) {
      mTerms = paramJSONObject.optString("terms");
    }
    mIsRedeemed = paramJSONObject.optBoolean("is_redeemed");
    if (!paramJSONObject.isNull("time_expire")) {}
    for (mTimeExpire = paramJSONObject.optLong("time_expire"); !paramJSONObject.isNull("time_redeemed"); mTimeExpire = -1L)
    {
      mTimeRedeemed = paramJSONObject.optLong("time_redeemed");
      return;
    }
    mTimeRedeemed = -1L;
  }
  
  public void readFromParcel(Parcel paramParcel)
  {
    mId = paramParcel.readString();
    mOptionId = paramParcel.readString();
    mRedemptionCode = paramParcel.readString();
    mCustomerName = paramParcel.readString();
    mCustomerEmail = paramParcel.readString();
    mPurchasedByName = paramParcel.readString();
    mRedemptionTitle = paramParcel.readString();
    mTerms = paramParcel.readString();
    mIsRedeemed = paramParcel.createBooleanArray()[0];
    mTimeExpire = paramParcel.readLong();
    mTimeRedeemed = paramParcel.readLong();
  }
  
  public JSONObject writeJSON()
  {
    JSONObject localJSONObject = new JSONObject();
    if (mId != null) {
      localJSONObject.put("id", mId);
    }
    if (mOptionId != null) {
      localJSONObject.put("option_id", mOptionId);
    }
    if (mRedemptionCode != null) {
      localJSONObject.put("redemption_code", mRedemptionCode);
    }
    if (mCustomerName != null) {
      localJSONObject.put("customer_name", mCustomerName);
    }
    if (mCustomerEmail != null) {
      localJSONObject.put("customer_email", mCustomerEmail);
    }
    if (mPurchasedByName != null) {
      localJSONObject.put("purchased_by_name", mPurchasedByName);
    }
    if (mRedemptionTitle != null) {
      localJSONObject.put("redemption_title", mRedemptionTitle);
    }
    if (mTerms != null) {
      localJSONObject.put("terms", mTerms);
    }
    localJSONObject.put("is_redeemed", mIsRedeemed);
    localJSONObject.put("time_expire", mTimeExpire);
    localJSONObject.put("time_redeemed", mTimeRedeemed);
    return localJSONObject;
  }
  
  public void writeToParcel(Parcel paramParcel, int paramInt)
  {
    paramParcel.writeString(mId);
    paramParcel.writeString(mOptionId);
    paramParcel.writeString(mRedemptionCode);
    paramParcel.writeString(mCustomerName);
    paramParcel.writeString(mCustomerEmail);
    paramParcel.writeString(mPurchasedByName);
    paramParcel.writeString(mRedemptionTitle);
    paramParcel.writeString(mTerms);
    paramParcel.writeBooleanArray(new boolean[] { mIsRedeemed });
    paramParcel.writeLong(mTimeExpire);
    paramParcel.writeLong(mTimeRedeemed);
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.serializable._DealPurchase
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */