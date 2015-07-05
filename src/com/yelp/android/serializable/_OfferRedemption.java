package com.yelp.android.serializable;

import android.os.Parcel;
import android.os.Parcelable;
import com.yelp.parcelgen.JsonUtil;
import java.util.Date;
import org.json.JSONObject;

abstract class _OfferRedemption
  implements Parcelable
{
  protected Date mDateExpires;
  protected Date mDateRedeemed;
  protected String mDiscountText;
  protected String mFinePrint;
  protected String mInstructionText;
  protected String mItemText;
  protected int mSecondsToRedeem;
  protected long mSystemClockExpiration;
  protected int mTotalCheckIns;
  
  protected _OfferRedemption() {}
  
  protected _OfferRedemption(Date paramDate1, Date paramDate2, String paramString1, String paramString2, String paramString3, String paramString4, int paramInt1, int paramInt2, long paramLong)
  {
    this();
    mDateRedeemed = paramDate1;
    mDateExpires = paramDate2;
    mDiscountText = paramString1;
    mItemText = paramString2;
    mInstructionText = paramString3;
    mFinePrint = paramString4;
    mTotalCheckIns = paramInt1;
    mSecondsToRedeem = paramInt2;
    mSystemClockExpiration = paramLong;
  }
  
  public int describeContents()
  {
    return 0;
  }
  
  public Date getDateExpires()
  {
    return mDateExpires;
  }
  
  public Date getDateRedeemed()
  {
    return mDateRedeemed;
  }
  
  public String getDiscountText()
  {
    return mDiscountText;
  }
  
  public String getFinePrint()
  {
    return mFinePrint;
  }
  
  public String getInstructionText()
  {
    return mInstructionText;
  }
  
  public String getItemText()
  {
    return mItemText;
  }
  
  public int getSecondsToRedeem()
  {
    return mSecondsToRedeem;
  }
  
  public long getSystemClockExpiration()
  {
    return mSystemClockExpiration;
  }
  
  public int getTotalCheckIns()
  {
    return mTotalCheckIns;
  }
  
  public void readFromJson(JSONObject paramJSONObject)
  {
    if (!paramJSONObject.isNull("time_redeemed")) {
      mDateRedeemed = JsonUtil.parseTimestamp(paramJSONObject, "time_redeemed");
    }
    if (!paramJSONObject.isNull("time_expires")) {
      mDateExpires = JsonUtil.parseTimestamp(paramJSONObject, "time_expires");
    }
    if (!paramJSONObject.isNull("discount_text")) {
      mDiscountText = paramJSONObject.optString("discount_text");
    }
    if (!paramJSONObject.isNull("item_text")) {
      mItemText = paramJSONObject.optString("item_text");
    }
    if (!paramJSONObject.isNull("instruction_text")) {
      mInstructionText = paramJSONObject.optString("instruction_text");
    }
    if (!paramJSONObject.isNull("fine_print_text")) {
      mFinePrint = paramJSONObject.optString("fine_print_text");
    }
    mTotalCheckIns = paramJSONObject.optInt("total_check_ins");
    mSecondsToRedeem = paramJSONObject.optInt("seconds_to_redeem");
  }
  
  public void readFromParcel(Parcel paramParcel)
  {
    long l = paramParcel.readLong();
    if (l != -2147483648L) {
      mDateRedeemed = new Date(l);
    }
    l = paramParcel.readLong();
    if (l != -2147483648L) {
      mDateExpires = new Date(l);
    }
    mDiscountText = paramParcel.readString();
    mItemText = paramParcel.readString();
    mInstructionText = paramParcel.readString();
    mFinePrint = paramParcel.readString();
    mTotalCheckIns = paramParcel.readInt();
    mSecondsToRedeem = paramParcel.readInt();
    mSystemClockExpiration = paramParcel.readLong();
  }
  
  public JSONObject writeJSON()
  {
    JSONObject localJSONObject = new JSONObject();
    if (mDateRedeemed != null) {
      localJSONObject.put("time_redeemed", mDateRedeemed.getTime() / 1000L);
    }
    if (mDateExpires != null) {
      localJSONObject.put("time_expires", mDateExpires.getTime() / 1000L);
    }
    if (mDiscountText != null) {
      localJSONObject.put("discount_text", mDiscountText);
    }
    if (mItemText != null) {
      localJSONObject.put("item_text", mItemText);
    }
    if (mInstructionText != null) {
      localJSONObject.put("instruction_text", mInstructionText);
    }
    if (mFinePrint != null) {
      localJSONObject.put("fine_print_text", mFinePrint);
    }
    localJSONObject.put("total_check_ins", mTotalCheckIns);
    localJSONObject.put("seconds_to_redeem", mSecondsToRedeem);
    return localJSONObject;
  }
  
  public void writeToParcel(Parcel paramParcel, int paramInt)
  {
    long l2 = -2147483648L;
    if (mDateRedeemed == null)
    {
      l1 = -2147483648L;
      paramParcel.writeLong(l1);
      if (mDateExpires != null) {
        break label104;
      }
    }
    label104:
    for (long l1 = l2;; l1 = mDateExpires.getTime())
    {
      paramParcel.writeLong(l1);
      paramParcel.writeString(mDiscountText);
      paramParcel.writeString(mItemText);
      paramParcel.writeString(mInstructionText);
      paramParcel.writeString(mFinePrint);
      paramParcel.writeInt(mTotalCheckIns);
      paramParcel.writeInt(mSecondsToRedeem);
      paramParcel.writeLong(mSystemClockExpiration);
      return;
      l1 = mDateRedeemed.getTime();
      break;
    }
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.serializable._OfferRedemption
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */