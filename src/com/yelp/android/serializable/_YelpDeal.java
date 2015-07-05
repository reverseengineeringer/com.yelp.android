package com.yelp.android.serializable;

import android.os.Parcel;
import android.os.Parcelable;
import com.yelp.parcelgen.JsonUtil;
import java.util.Collections;
import java.util.Date;
import java.util.Iterator;
import java.util.List;
import org.json.JSONArray;
import org.json.JSONObject;

abstract class _YelpDeal
  implements Parcelable
{
  protected String mBusinessName;
  protected String mCanonicalBusinessId;
  protected String mCurrencyCode;
  protected List<String> mDescription;
  protected String mId;
  protected String mImageUrl;
  protected String mLocation;
  protected int mMaxGiftQuantity;
  protected int mMaxQuantity;
  protected int mMaxUserQuantity;
  protected List<YelpDealOption> mOptions;
  protected int mPurchasedCount;
  protected List<DealPurchase> mPurchases;
  protected int mRemainingCount;
  protected String mShareUrl;
  protected long mSystemClockExpiration;
  protected String mTerms;
  protected long mTimeEnd;
  protected long mTimeReference;
  protected long mTimeStart;
  protected Date mTimeUpdated;
  protected String mTitle;
  protected String mTosUrl;
  
  protected _YelpDeal() {}
  
  protected _YelpDeal(Date paramDate, List<DealPurchase> paramList, List<String> paramList1, List<YelpDealOption> paramList2, String paramString1, String paramString2, String paramString3, String paramString4, String paramString5, String paramString6, String paramString7, String paramString8, String paramString9, String paramString10, int paramInt1, int paramInt2, int paramInt3, int paramInt4, int paramInt5, long paramLong1, long paramLong2, long paramLong3, long paramLong4)
  {
    this();
    mTimeUpdated = paramDate;
    mPurchases = paramList;
    mDescription = paramList1;
    mOptions = paramList2;
    mId = paramString1;
    mTitle = paramString2;
    mImageUrl = paramString3;
    mLocation = paramString4;
    mCurrencyCode = paramString5;
    mBusinessName = paramString6;
    mTerms = paramString7;
    mTosUrl = paramString8;
    mShareUrl = paramString9;
    mCanonicalBusinessId = paramString10;
    mMaxUserQuantity = paramInt1;
    mMaxGiftQuantity = paramInt2;
    mMaxQuantity = paramInt3;
    mPurchasedCount = paramInt4;
    mRemainingCount = paramInt5;
    mTimeStart = paramLong1;
    mTimeEnd = paramLong2;
    mTimeReference = paramLong3;
    mSystemClockExpiration = paramLong4;
  }
  
  public int describeContents()
  {
    return 0;
  }
  
  public String getBusinessName()
  {
    return mBusinessName;
  }
  
  public String getCanonicalBusinessId()
  {
    return mCanonicalBusinessId;
  }
  
  public String getCurrencyCode()
  {
    return mCurrencyCode;
  }
  
  public List<String> getDescription()
  {
    return mDescription;
  }
  
  public String getId()
  {
    return mId;
  }
  
  public String getImageUrl()
  {
    return mImageUrl;
  }
  
  public String getLocation()
  {
    return mLocation;
  }
  
  public int getMaxGiftQuantity()
  {
    return mMaxGiftQuantity;
  }
  
  public int getMaxQuantity()
  {
    return mMaxQuantity;
  }
  
  public int getMaxUserQuantity()
  {
    return mMaxUserQuantity;
  }
  
  public List<YelpDealOption> getOptions()
  {
    return mOptions;
  }
  
  public int getPurchasedCount()
  {
    return mPurchasedCount;
  }
  
  public List<DealPurchase> getPurchases()
  {
    return mPurchases;
  }
  
  public int getRemainingCount()
  {
    return mRemainingCount;
  }
  
  public String getShareUrl()
  {
    return mShareUrl;
  }
  
  public long getSystemClockExpiration()
  {
    return mSystemClockExpiration;
  }
  
  public String getTerms()
  {
    return mTerms;
  }
  
  public long getTimeEnd()
  {
    return mTimeEnd;
  }
  
  public long getTimeReference()
  {
    return mTimeReference;
  }
  
  public long getTimeStart()
  {
    return mTimeStart;
  }
  
  public Date getTimeUpdated()
  {
    return mTimeUpdated;
  }
  
  public String getTitle()
  {
    return mTitle;
  }
  
  public String getTosUrl()
  {
    return mTosUrl;
  }
  
  public void readFromJson(JSONObject paramJSONObject)
  {
    if (!paramJSONObject.isNull("time_updated")) {
      mTimeUpdated = JsonUtil.parseTimestamp(paramJSONObject, "time_updated");
    }
    if (!paramJSONObject.isNull("purchases"))
    {
      mPurchases = JsonUtil.parseJsonList(paramJSONObject.optJSONArray("purchases"), DealPurchase.CREATOR);
      if (paramJSONObject.isNull("description")) {
        break label444;
      }
      mDescription = JsonUtil.getStringList(paramJSONObject.optJSONArray("description"));
      label66:
      if (paramJSONObject.isNull("options")) {
        break label454;
      }
      mOptions = JsonUtil.parseJsonList(paramJSONObject.optJSONArray("options"), YelpDealOption.CREATOR);
      label91:
      if (!paramJSONObject.isNull("id")) {
        mId = paramJSONObject.optString("id");
      }
      if (!paramJSONObject.isNull("title")) {
        mTitle = paramJSONObject.optString("title");
      }
      if (!paramJSONObject.isNull("image_url")) {
        mImageUrl = paramJSONObject.optString("image_url");
      }
      if (!paramJSONObject.isNull("location")) {
        mLocation = paramJSONObject.optString("location");
      }
      if (!paramJSONObject.isNull("currency_code")) {
        mCurrencyCode = paramJSONObject.optString("currency_code");
      }
      if (!paramJSONObject.isNull("business_name")) {
        mBusinessName = paramJSONObject.optString("business_name");
      }
      if (!paramJSONObject.isNull("terms")) {
        mTerms = paramJSONObject.optString("terms");
      }
      if (!paramJSONObject.isNull("tos_url")) {
        mTosUrl = paramJSONObject.optString("tos_url");
      }
      if (!paramJSONObject.isNull("share_url")) {
        mShareUrl = paramJSONObject.optString("share_url");
      }
      if (!paramJSONObject.isNull("canonical_business_id")) {
        mCanonicalBusinessId = paramJSONObject.optString("canonical_business_id");
      }
      if (paramJSONObject.isNull("max_user_quantity")) {
        break label464;
      }
      mMaxUserQuantity = paramJSONObject.optInt("max_user_quantity");
      label300:
      if (paramJSONObject.isNull("max_gift_quantity")) {
        break label472;
      }
      mMaxGiftQuantity = paramJSONObject.optInt("max_gift_quantity");
      label319:
      if (paramJSONObject.isNull("max_quantity")) {
        break label480;
      }
      mMaxQuantity = paramJSONObject.optInt("max_quantity");
      label338:
      if (paramJSONObject.isNull("purchased_count")) {
        break label488;
      }
      mPurchasedCount = paramJSONObject.optInt("purchased_count");
      label357:
      if (paramJSONObject.isNull("remaining_count")) {
        break label496;
      }
      mRemainingCount = paramJSONObject.optInt("remaining_count");
      label376:
      if (paramJSONObject.isNull("time_start")) {
        break label504;
      }
      mTimeStart = paramJSONObject.optLong("time_start");
      label395:
      if (paramJSONObject.isNull("time_end")) {
        break label514;
      }
    }
    label444:
    label454:
    label464:
    label472:
    label480:
    label488:
    label496:
    label504:
    label514:
    for (mTimeEnd = paramJSONObject.optLong("time_end");; mTimeEnd = -1L)
    {
      if (paramJSONObject.isNull("time_reference")) {
        break label524;
      }
      mTimeReference = paramJSONObject.optLong("time_reference");
      return;
      mPurchases = Collections.emptyList();
      break;
      mDescription = Collections.emptyList();
      break label66;
      mOptions = Collections.emptyList();
      break label91;
      mMaxUserQuantity = -1;
      break label300;
      mMaxGiftQuantity = -1;
      break label319;
      mMaxQuantity = -1;
      break label338;
      mPurchasedCount = -1;
      break label357;
      mRemainingCount = -1;
      break label376;
      mTimeStart = -1L;
      break label395;
    }
    label524:
    mTimeReference = -1L;
  }
  
  public void readFromParcel(Parcel paramParcel)
  {
    long l = paramParcel.readLong();
    if (l != -2147483648L) {
      mTimeUpdated = new Date(l);
    }
    mPurchases = paramParcel.createTypedArrayList(DealPurchase.CREATOR);
    mDescription = paramParcel.createStringArrayList();
    mOptions = paramParcel.createTypedArrayList(YelpDealOption.CREATOR);
    mId = paramParcel.readString();
    mTitle = paramParcel.readString();
    mImageUrl = paramParcel.readString();
    mLocation = paramParcel.readString();
    mCurrencyCode = paramParcel.readString();
    mBusinessName = paramParcel.readString();
    mTerms = paramParcel.readString();
    mTosUrl = paramParcel.readString();
    mShareUrl = paramParcel.readString();
    mCanonicalBusinessId = paramParcel.readString();
    mMaxUserQuantity = paramParcel.readInt();
    mMaxGiftQuantity = paramParcel.readInt();
    mMaxQuantity = paramParcel.readInt();
    mPurchasedCount = paramParcel.readInt();
    mRemainingCount = paramParcel.readInt();
    mTimeStart = paramParcel.readLong();
    mTimeEnd = paramParcel.readLong();
    mTimeReference = paramParcel.readLong();
    mSystemClockExpiration = paramParcel.readLong();
  }
  
  public JSONObject writeJSON()
  {
    JSONObject localJSONObject = new JSONObject();
    if (mTimeUpdated != null) {
      localJSONObject.put("time_updated", mTimeUpdated.getTime() / 1000L);
    }
    JSONArray localJSONArray;
    Iterator localIterator;
    if (mPurchases != null)
    {
      localJSONArray = new JSONArray();
      localIterator = mPurchases.iterator();
      while (localIterator.hasNext()) {
        localJSONArray.put(((DealPurchase)localIterator.next()).writeJSON());
      }
      localJSONObject.put("purchases", localJSONArray);
    }
    if (mDescription != null)
    {
      localJSONArray = new JSONArray();
      localIterator = mDescription.iterator();
      while (localIterator.hasNext()) {
        localJSONArray.put((String)localIterator.next());
      }
      localJSONObject.put("description", localJSONArray);
    }
    if (mOptions != null)
    {
      localJSONArray = new JSONArray();
      localIterator = mOptions.iterator();
      while (localIterator.hasNext()) {
        localJSONArray.put(((YelpDealOption)localIterator.next()).writeJSON());
      }
      localJSONObject.put("options", localJSONArray);
    }
    if (mId != null) {
      localJSONObject.put("id", mId);
    }
    if (mTitle != null) {
      localJSONObject.put("title", mTitle);
    }
    if (mImageUrl != null) {
      localJSONObject.put("image_url", mImageUrl);
    }
    if (mLocation != null) {
      localJSONObject.put("location", mLocation);
    }
    if (mCurrencyCode != null) {
      localJSONObject.put("currency_code", mCurrencyCode);
    }
    if (mBusinessName != null) {
      localJSONObject.put("business_name", mBusinessName);
    }
    if (mTerms != null) {
      localJSONObject.put("terms", mTerms);
    }
    if (mTosUrl != null) {
      localJSONObject.put("tos_url", mTosUrl);
    }
    if (mShareUrl != null) {
      localJSONObject.put("share_url", mShareUrl);
    }
    if (mCanonicalBusinessId != null) {
      localJSONObject.put("canonical_business_id", mCanonicalBusinessId);
    }
    localJSONObject.put("max_user_quantity", mMaxUserQuantity);
    localJSONObject.put("max_gift_quantity", mMaxGiftQuantity);
    localJSONObject.put("max_quantity", mMaxQuantity);
    localJSONObject.put("purchased_count", mPurchasedCount);
    localJSONObject.put("remaining_count", mRemainingCount);
    localJSONObject.put("time_start", mTimeStart);
    localJSONObject.put("time_end", mTimeEnd);
    localJSONObject.put("time_reference", mTimeReference);
    return localJSONObject;
  }
  
  public void writeToParcel(Parcel paramParcel, int paramInt)
  {
    if (mTimeUpdated == null) {}
    for (long l = -2147483648L;; l = mTimeUpdated.getTime())
    {
      paramParcel.writeLong(l);
      paramParcel.writeTypedList(mPurchases);
      paramParcel.writeStringList(mDescription);
      paramParcel.writeTypedList(mOptions);
      paramParcel.writeString(mId);
      paramParcel.writeString(mTitle);
      paramParcel.writeString(mImageUrl);
      paramParcel.writeString(mLocation);
      paramParcel.writeString(mCurrencyCode);
      paramParcel.writeString(mBusinessName);
      paramParcel.writeString(mTerms);
      paramParcel.writeString(mTosUrl);
      paramParcel.writeString(mShareUrl);
      paramParcel.writeString(mCanonicalBusinessId);
      paramParcel.writeInt(mMaxUserQuantity);
      paramParcel.writeInt(mMaxGiftQuantity);
      paramParcel.writeInt(mMaxQuantity);
      paramParcel.writeInt(mPurchasedCount);
      paramParcel.writeInt(mRemainingCount);
      paramParcel.writeLong(mTimeStart);
      paramParcel.writeLong(mTimeEnd);
      paramParcel.writeLong(mTimeReference);
      paramParcel.writeLong(mSystemClockExpiration);
      return;
    }
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.serializable._YelpDeal
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */