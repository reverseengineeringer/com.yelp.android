package com.yelp.android.serializable;

import android.os.Parcel;
import android.os.Parcelable;
import com.yelp.parcelgen.JsonParser.DualCreator;
import com.yelp.parcelgen.JsonUtil;
import java.util.Date;
import org.json.JSONObject;

abstract class _ExternalCheckIn
  implements Parcelable
{
  protected String mAppCheckInId;
  protected String mAppId;
  protected String mAppName;
  protected String mAppUserId;
  protected String mAppUserImageUrl;
  protected String mAppUserName;
  protected YelpBusiness mBusiness;
  protected String mBusinessId;
  protected Date mDateCreated;
  protected String mLocation;
  protected String mUserId;
  
  protected _ExternalCheckIn() {}
  
  protected _ExternalCheckIn(Date paramDate, String paramString1, String paramString2, String paramString3, String paramString4, String paramString5, String paramString6, String paramString7, String paramString8, String paramString9, YelpBusiness paramYelpBusiness)
  {
    this();
    mDateCreated = paramDate;
    mUserId = paramString1;
    mAppId = paramString2;
    mAppCheckInId = paramString3;
    mAppName = paramString4;
    mAppUserId = paramString5;
    mAppUserName = paramString6;
    mAppUserImageUrl = paramString7;
    mBusinessId = paramString8;
    mLocation = paramString9;
    mBusiness = paramYelpBusiness;
  }
  
  public int describeContents()
  {
    return 0;
  }
  
  public String getAppCheckInId()
  {
    return mAppCheckInId;
  }
  
  public String getAppId()
  {
    return mAppId;
  }
  
  public String getAppName()
  {
    return mAppName;
  }
  
  public String getAppUserId()
  {
    return mAppUserId;
  }
  
  public String getAppUserImageUrl()
  {
    return mAppUserImageUrl;
  }
  
  public String getAppUserName()
  {
    return mAppUserName;
  }
  
  public YelpBusiness getBusiness()
  {
    return mBusiness;
  }
  
  public String getBusinessId()
  {
    return mBusinessId;
  }
  
  public Date getDateCreated()
  {
    return mDateCreated;
  }
  
  public String getLocation()
  {
    return mLocation;
  }
  
  public String getUserId()
  {
    return mUserId;
  }
  
  public void readFromJson(JSONObject paramJSONObject)
  {
    if (!paramJSONObject.isNull("time_created")) {
      mDateCreated = JsonUtil.parseTimestamp(paramJSONObject, "time_created");
    }
    if (!paramJSONObject.isNull("user_id")) {
      mUserId = paramJSONObject.optString("user_id");
    }
    if (!paramJSONObject.isNull("app_id")) {
      mAppId = paramJSONObject.optString("app_id");
    }
    if (!paramJSONObject.isNull("app_check_in_id")) {
      mAppCheckInId = paramJSONObject.optString("app_check_in_id");
    }
    if (!paramJSONObject.isNull("app_name")) {
      mAppName = paramJSONObject.optString("app_name");
    }
    if (!paramJSONObject.isNull("app_user_id")) {
      mAppUserId = paramJSONObject.optString("app_user_id");
    }
    if (!paramJSONObject.isNull("app_user_name")) {
      mAppUserName = paramJSONObject.optString("app_user_name");
    }
    if (!paramJSONObject.isNull("app_user_image_url")) {
      mAppUserImageUrl = paramJSONObject.optString("app_user_image_url");
    }
    if (!paramJSONObject.isNull("business_id")) {
      mBusinessId = paramJSONObject.optString("business_id");
    }
    if (!paramJSONObject.isNull("location")) {
      mLocation = paramJSONObject.optString("location");
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
    mUserId = paramParcel.readString();
    mAppId = paramParcel.readString();
    mAppCheckInId = paramParcel.readString();
    mAppName = paramParcel.readString();
    mAppUserId = paramParcel.readString();
    mAppUserName = paramParcel.readString();
    mAppUserImageUrl = paramParcel.readString();
    mBusinessId = paramParcel.readString();
    mLocation = paramParcel.readString();
    mBusiness = ((YelpBusiness)paramParcel.readParcelable(YelpBusiness.class.getClassLoader()));
  }
  
  public void writeToParcel(Parcel paramParcel, int paramInt)
  {
    if (mDateCreated == null) {}
    for (long l = -2147483648L;; l = mDateCreated.getTime())
    {
      paramParcel.writeLong(l);
      paramParcel.writeString(mUserId);
      paramParcel.writeString(mAppId);
      paramParcel.writeString(mAppCheckInId);
      paramParcel.writeString(mAppName);
      paramParcel.writeString(mAppUserId);
      paramParcel.writeString(mAppUserName);
      paramParcel.writeString(mAppUserImageUrl);
      paramParcel.writeString(mBusinessId);
      paramParcel.writeString(mLocation);
      paramParcel.writeParcelable(mBusiness, 0);
      return;
    }
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.serializable._ExternalCheckIn
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */