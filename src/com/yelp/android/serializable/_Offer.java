package com.yelp.android.serializable;

import android.os.Parcel;
import android.os.Parcelable;
import com.yelp.parcelgen.JsonParser.DualCreator;
import com.yelp.parcelgen.JsonUtil;
import java.util.Date;
import org.json.JSONObject;

abstract class _Offer
  implements Parcelable
{
  protected YelpBusiness mBusiness;
  protected int mCheckInsRemaining;
  protected Date mDateAwarded;
  protected Date mDateExpires;
  protected String mId;
  protected String mOfferText;
  protected String mPromoText;
  protected OfferRedemption mRedemption;
  protected Offer.OfferState mState;
  
  protected _Offer() {}
  
  protected _Offer(Date paramDate1, Date paramDate2, OfferRedemption paramOfferRedemption, Offer.OfferState paramOfferState, String paramString1, String paramString2, String paramString3, YelpBusiness paramYelpBusiness, int paramInt)
  {
    this();
    mDateAwarded = paramDate1;
    mDateExpires = paramDate2;
    mRedemption = paramOfferRedemption;
    mState = paramOfferState;
    mOfferText = paramString1;
    mPromoText = paramString2;
    mId = paramString3;
    mBusiness = paramYelpBusiness;
    mCheckInsRemaining = paramInt;
  }
  
  public int describeContents()
  {
    return 0;
  }
  
  public YelpBusiness getBusiness()
  {
    return mBusiness;
  }
  
  public int getCheckInsRemaining()
  {
    return mCheckInsRemaining;
  }
  
  public Date getDateAwarded()
  {
    return mDateAwarded;
  }
  
  public Date getDateExpires()
  {
    return mDateExpires;
  }
  
  public String getId()
  {
    return mId;
  }
  
  public String getOfferText()
  {
    return mOfferText;
  }
  
  public String getPromoText()
  {
    return mPromoText;
  }
  
  public OfferRedemption getRedemption()
  {
    return mRedemption;
  }
  
  public Offer.OfferState getState()
  {
    return mState;
  }
  
  public void readFromJson(JSONObject paramJSONObject)
  {
    if (!paramJSONObject.isNull("time_awarded")) {
      mDateAwarded = JsonUtil.parseTimestamp(paramJSONObject, "time_awarded");
    }
    if (!paramJSONObject.isNull("time_expires")) {
      mDateExpires = JsonUtil.parseTimestamp(paramJSONObject, "time_expires");
    }
    if (!paramJSONObject.isNull("redemption")) {
      mRedemption = ((OfferRedemption)OfferRedemption.CREATOR.parse(paramJSONObject.getJSONObject("redemption")));
    }
    if (!paramJSONObject.isNull("offer_text")) {
      mOfferText = paramJSONObject.optString("offer_text");
    }
    if (!paramJSONObject.isNull("promo_text")) {
      mPromoText = paramJSONObject.optString("promo_text");
    }
    if (!paramJSONObject.isNull("id")) {
      mId = paramJSONObject.optString("id");
    }
    if (!paramJSONObject.isNull("business")) {
      mBusiness = ((YelpBusiness)YelpBusiness.CREATOR.parse(paramJSONObject.getJSONObject("business")));
    }
    mCheckInsRemaining = paramJSONObject.optInt("check_ins_remaining");
  }
  
  public void readFromParcel(Parcel paramParcel)
  {
    long l = paramParcel.readLong();
    if (l != -2147483648L) {
      mDateAwarded = new Date(l);
    }
    l = paramParcel.readLong();
    if (l != -2147483648L) {
      mDateExpires = new Date(l);
    }
    mRedemption = ((OfferRedemption)paramParcel.readParcelable(OfferRedemption.class.getClassLoader()));
    mState = ((Offer.OfferState)paramParcel.readSerializable());
    mOfferText = paramParcel.readString();
    mPromoText = paramParcel.readString();
    mId = paramParcel.readString();
    mBusiness = ((YelpBusiness)paramParcel.readParcelable(YelpBusiness.class.getClassLoader()));
    mCheckInsRemaining = paramParcel.readInt();
  }
  
  public JSONObject writeJSON()
  {
    JSONObject localJSONObject = new JSONObject();
    if (mDateAwarded != null) {
      localJSONObject.put("time_awarded", mDateAwarded.getTime() / 1000L);
    }
    if (mDateExpires != null) {
      localJSONObject.put("time_expires", mDateExpires.getTime() / 1000L);
    }
    if (mRedemption != null) {
      localJSONObject.put("redemption", mRedemption.writeJSON());
    }
    if (mOfferText != null) {
      localJSONObject.put("offer_text", mOfferText);
    }
    if (mPromoText != null) {
      localJSONObject.put("promo_text", mPromoText);
    }
    if (mId != null) {
      localJSONObject.put("id", mId);
    }
    if (mBusiness != null) {
      localJSONObject.put("business", mBusiness.writeJSON());
    }
    localJSONObject.put("check_ins_remaining", mCheckInsRemaining);
    return localJSONObject;
  }
  
  public void writeToParcel(Parcel paramParcel, int paramInt)
  {
    long l2 = -2147483648L;
    if (mDateAwarded == null)
    {
      l1 = -2147483648L;
      paramParcel.writeLong(l1);
      if (mDateExpires != null) {
        break label106;
      }
    }
    label106:
    for (long l1 = l2;; l1 = mDateExpires.getTime())
    {
      paramParcel.writeLong(l1);
      paramParcel.writeParcelable(mRedemption, 0);
      paramParcel.writeSerializable(mState);
      paramParcel.writeString(mOfferText);
      paramParcel.writeString(mPromoText);
      paramParcel.writeString(mId);
      paramParcel.writeParcelable(mBusiness, 0);
      paramParcel.writeInt(mCheckInsRemaining);
      return;
      l1 = mDateAwarded.getTime();
      break;
    }
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.serializable._Offer
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */