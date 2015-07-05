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

abstract class _Reservation
  implements Parcelable
{
  protected List<AttributedLabelValuePair> mAttributes;
  protected String mCancelString;
  protected String mConfirmationNumber;
  protected String mConfirmationSubtitle;
  protected String mConfirmationTitle;
  protected boolean mCreditCardHold;
  protected Date mDatestamp;
  protected String mHeaderTitle;
  protected int mPartySize;
  protected String mQueryId;
  protected String mSelectedTimeId;
  protected int mTimeId;
  protected String mTransactionLockId;
  protected String mViewTitle;
  
  protected _Reservation() {}
  
  protected _Reservation(Date paramDate, List<AttributedLabelValuePair> paramList, String paramString1, String paramString2, String paramString3, String paramString4, String paramString5, String paramString6, String paramString7, String paramString8, String paramString9, boolean paramBoolean, int paramInt1, int paramInt2)
  {
    this();
    mDatestamp = paramDate;
    mAttributes = paramList;
    mConfirmationTitle = paramString1;
    mConfirmationSubtitle = paramString2;
    mViewTitle = paramString3;
    mHeaderTitle = paramString4;
    mConfirmationNumber = paramString5;
    mCancelString = paramString6;
    mQueryId = paramString7;
    mSelectedTimeId = paramString8;
    mTransactionLockId = paramString9;
    mCreditCardHold = paramBoolean;
    mPartySize = paramInt1;
    mTimeId = paramInt2;
  }
  
  public int describeContents()
  {
    return 0;
  }
  
  public List<AttributedLabelValuePair> getAttributes()
  {
    return mAttributes;
  }
  
  public String getCancelString()
  {
    return mCancelString;
  }
  
  public String getConfirmationNumber()
  {
    return mConfirmationNumber;
  }
  
  public String getConfirmationSubtitle()
  {
    return mConfirmationSubtitle;
  }
  
  public String getConfirmationTitle()
  {
    return mConfirmationTitle;
  }
  
  public boolean getCreditCardHold()
  {
    return mCreditCardHold;
  }
  
  public Date getDatestamp()
  {
    return mDatestamp;
  }
  
  public String getHeaderTitle()
  {
    return mHeaderTitle;
  }
  
  public int getPartySize()
  {
    return mPartySize;
  }
  
  public String getQueryId()
  {
    return mQueryId;
  }
  
  public String getSelectedTimeId()
  {
    return mSelectedTimeId;
  }
  
  public int getTimeId()
  {
    return mTimeId;
  }
  
  public String getTransactionLockId()
  {
    return mTransactionLockId;
  }
  
  public String getViewTitle()
  {
    return mViewTitle;
  }
  
  public void readFromJson(JSONObject paramJSONObject)
  {
    if (!paramJSONObject.isNull("timestamp")) {
      mDatestamp = JsonUtil.parseTimestamp(paramJSONObject, "timestamp");
    }
    if (!paramJSONObject.isNull("attributes")) {}
    for (mAttributes = JsonUtil.parseJsonList(paramJSONObject.optJSONArray("attributes"), AttributedLabelValuePair.CREATOR);; mAttributes = Collections.emptyList())
    {
      if (!paramJSONObject.isNull("confirmation_title")) {
        mConfirmationTitle = paramJSONObject.optString("confirmation_title");
      }
      if (!paramJSONObject.isNull("confirmation_details_title")) {
        mConfirmationSubtitle = paramJSONObject.optString("confirmation_details_title");
      }
      if (!paramJSONObject.isNull("view_title")) {
        mViewTitle = paramJSONObject.optString("view_title");
      }
      if (!paramJSONObject.isNull("header_title")) {
        mHeaderTitle = paramJSONObject.optString("header_title");
      }
      if (!paramJSONObject.isNull("confirmation_number")) {
        mConfirmationNumber = paramJSONObject.optString("confirmation_number");
      }
      if (!paramJSONObject.isNull("cancel_action_title")) {
        mCancelString = paramJSONObject.optString("cancel_action_title");
      }
      if (!paramJSONObject.isNull("query_id")) {
        mQueryId = paramJSONObject.optString("query_id");
      }
      if (!paramJSONObject.isNull("time_id")) {
        mSelectedTimeId = paramJSONObject.optString("time_id");
      }
      if (!paramJSONObject.isNull("reservation_lease_id")) {
        mTransactionLockId = paramJSONObject.optString("reservation_lease_id");
      }
      mCreditCardHold = paramJSONObject.optBoolean("cc_hold");
      mPartySize = paramJSONObject.optInt("party_size");
      mTimeId = paramJSONObject.optInt("time_id");
      return;
    }
  }
  
  public void readFromParcel(Parcel paramParcel)
  {
    long l = paramParcel.readLong();
    if (l != -2147483648L) {
      mDatestamp = new Date(l);
    }
    mAttributes = paramParcel.createTypedArrayList(AttributedLabelValuePair.CREATOR);
    mConfirmationTitle = paramParcel.readString();
    mConfirmationSubtitle = paramParcel.readString();
    mViewTitle = paramParcel.readString();
    mHeaderTitle = paramParcel.readString();
    mConfirmationNumber = paramParcel.readString();
    mCancelString = paramParcel.readString();
    mQueryId = paramParcel.readString();
    mSelectedTimeId = paramParcel.readString();
    mTransactionLockId = paramParcel.readString();
    mCreditCardHold = paramParcel.createBooleanArray()[0];
    mPartySize = paramParcel.readInt();
    mTimeId = paramParcel.readInt();
  }
  
  public JSONObject writeJSON()
  {
    JSONObject localJSONObject = new JSONObject();
    if (mDatestamp != null) {
      localJSONObject.put("timestamp", mDatestamp.getTime() / 1000L);
    }
    if (mAttributes != null)
    {
      JSONArray localJSONArray = new JSONArray();
      Iterator localIterator = mAttributes.iterator();
      while (localIterator.hasNext()) {
        localJSONArray.put(((AttributedLabelValuePair)localIterator.next()).writeJSON());
      }
      localJSONObject.put("attributes", localJSONArray);
    }
    if (mConfirmationTitle != null) {
      localJSONObject.put("confirmation_title", mConfirmationTitle);
    }
    if (mConfirmationSubtitle != null) {
      localJSONObject.put("confirmation_details_title", mConfirmationSubtitle);
    }
    if (mViewTitle != null) {
      localJSONObject.put("view_title", mViewTitle);
    }
    if (mHeaderTitle != null) {
      localJSONObject.put("header_title", mHeaderTitle);
    }
    if (mConfirmationNumber != null) {
      localJSONObject.put("confirmation_number", mConfirmationNumber);
    }
    if (mCancelString != null) {
      localJSONObject.put("cancel_action_title", mCancelString);
    }
    if (mQueryId != null) {
      localJSONObject.put("query_id", mQueryId);
    }
    if (mSelectedTimeId != null) {
      localJSONObject.put("time_id", mSelectedTimeId);
    }
    if (mTransactionLockId != null) {
      localJSONObject.put("reservation_lease_id", mTransactionLockId);
    }
    localJSONObject.put("cc_hold", mCreditCardHold);
    localJSONObject.put("party_size", mPartySize);
    localJSONObject.put("time_id", mTimeId);
    return localJSONObject;
  }
  
  public void writeToParcel(Parcel paramParcel, int paramInt)
  {
    if (mDatestamp == null) {}
    for (long l = -2147483648L;; l = mDatestamp.getTime())
    {
      paramParcel.writeLong(l);
      paramParcel.writeTypedList(mAttributes);
      paramParcel.writeString(mConfirmationTitle);
      paramParcel.writeString(mConfirmationSubtitle);
      paramParcel.writeString(mViewTitle);
      paramParcel.writeString(mHeaderTitle);
      paramParcel.writeString(mConfirmationNumber);
      paramParcel.writeString(mCancelString);
      paramParcel.writeString(mQueryId);
      paramParcel.writeString(mSelectedTimeId);
      paramParcel.writeString(mTransactionLockId);
      paramParcel.writeBooleanArray(new boolean[] { mCreditCardHold });
      paramParcel.writeInt(mPartySize);
      paramParcel.writeInt(mTimeId);
      return;
    }
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.serializable._Reservation
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */