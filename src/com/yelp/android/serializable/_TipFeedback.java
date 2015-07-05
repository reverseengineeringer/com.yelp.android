package com.yelp.android.serializable;

import android.os.Parcel;
import android.os.Parcelable;
import com.yelp.parcelgen.JsonParser.DualCreator;
import com.yelp.parcelgen.JsonUtil;
import java.util.Date;
import org.json.JSONObject;

abstract class _TipFeedback
  implements Parcelable
{
  protected YelpBusiness mBusiness;
  protected Date mDateCreated;
  protected String mId;
  protected String mText;
  protected String mTipId;
  protected Passport mUserPassport;
  
  protected _TipFeedback() {}
  
  protected _TipFeedback(Date paramDate, Passport paramPassport, String paramString1, String paramString2, String paramString3, YelpBusiness paramYelpBusiness)
  {
    this();
    mDateCreated = paramDate;
    mUserPassport = paramPassport;
    mId = paramString1;
    mTipId = paramString2;
    mText = paramString3;
    mBusiness = paramYelpBusiness;
  }
  
  public int describeContents()
  {
    return 0;
  }
  
  public YelpBusiness getBusiness()
  {
    return mBusiness;
  }
  
  public Date getDateCreated()
  {
    return mDateCreated;
  }
  
  public String getId()
  {
    return mId;
  }
  
  public String getText()
  {
    return mText;
  }
  
  public String getTipId()
  {
    return mTipId;
  }
  
  public Passport getUserPassport()
  {
    return mUserPassport;
  }
  
  public void readFromJson(JSONObject paramJSONObject)
  {
    if (!paramJSONObject.isNull("time_created")) {
      mDateCreated = JsonUtil.parseTimestamp(paramJSONObject, "time_created");
    }
    if (!paramJSONObject.isNull("user_passport")) {
      mUserPassport = ((Passport)Passport.CREATOR.parse(paramJSONObject.getJSONObject("user_passport")));
    }
    if (!paramJSONObject.isNull("id")) {
      mId = paramJSONObject.optString("id");
    }
    if (!paramJSONObject.isNull("quicktip_id")) {
      mTipId = paramJSONObject.optString("quicktip_id");
    }
    if (!paramJSONObject.isNull("text")) {
      mText = paramJSONObject.optString("text");
    }
    if (!paramJSONObject.isNull("business")) {
      mBusiness = ((YelpBusiness)YelpBusiness.CREATOR.parse(paramJSONObject.getJSONObject("business")));
    }
  }
  
  public void readFromParcel(Parcel paramParcel)
  {
    long l = paramParcel.readLong();
    if (l != -2147483648L) {
      mDateCreated = new Date(l);
    }
    mUserPassport = ((Passport)paramParcel.readParcelable(Passport.class.getClassLoader()));
    mId = paramParcel.readString();
    mTipId = paramParcel.readString();
    mText = paramParcel.readString();
    mBusiness = ((YelpBusiness)paramParcel.readParcelable(YelpBusiness.class.getClassLoader()));
  }
  
  public void writeToParcel(Parcel paramParcel, int paramInt)
  {
    if (mDateCreated == null) {}
    for (long l = -2147483648L;; l = mDateCreated.getTime())
    {
      paramParcel.writeLong(l);
      paramParcel.writeParcelable(mUserPassport, 0);
      paramParcel.writeString(mId);
      paramParcel.writeString(mTipId);
      paramParcel.writeString(mText);
      paramParcel.writeParcelable(mBusiness, 0);
      return;
    }
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.serializable._TipFeedback
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */