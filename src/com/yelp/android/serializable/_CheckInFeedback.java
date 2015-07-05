package com.yelp.android.serializable;

import android.os.Parcel;
import android.os.Parcelable;
import com.yelp.parcelgen.JsonParser.DualCreator;
import com.yelp.parcelgen.JsonUtil;
import java.util.Date;
import org.json.JSONObject;

abstract class _CheckInFeedback
  implements Parcelable
{
  protected YelpBusiness mBusiness;
  protected YelpCheckIn mCheckIn;
  protected String mId;
  protected Date mTimeUpdated;
  protected User mUser;
  
  protected _CheckInFeedback() {}
  
  protected _CheckInFeedback(Date paramDate, String paramString, User paramUser, YelpBusiness paramYelpBusiness, YelpCheckIn paramYelpCheckIn)
  {
    this();
    mTimeUpdated = paramDate;
    mId = paramString;
    mUser = paramUser;
    mBusiness = paramYelpBusiness;
    mCheckIn = paramYelpCheckIn;
  }
  
  public int describeContents()
  {
    return 0;
  }
  
  public YelpBusiness getBusiness()
  {
    return mBusiness;
  }
  
  public YelpCheckIn getCheckIn()
  {
    return mCheckIn;
  }
  
  public String getId()
  {
    return mId;
  }
  
  public Date getTimeUpdated()
  {
    return mTimeUpdated;
  }
  
  public User getUser()
  {
    return mUser;
  }
  
  public void readFromJson(JSONObject paramJSONObject)
  {
    if (!paramJSONObject.isNull("time_updated")) {
      mTimeUpdated = JsonUtil.parseTimestamp(paramJSONObject, "time_updated");
    }
    if (!paramJSONObject.isNull("id")) {
      mId = paramJSONObject.optString("id");
    }
    if (!paramJSONObject.isNull("user")) {
      mUser = ((User)User.CREATOR.parse(paramJSONObject.getJSONObject("user")));
    }
    if (!paramJSONObject.isNull("business")) {
      mBusiness = ((YelpBusiness)YelpBusiness.CREATOR.parse(paramJSONObject.getJSONObject("business")));
    }
    if (!paramJSONObject.isNull("check_in")) {
      mCheckIn = ((YelpCheckIn)YelpCheckIn.CREATOR.parse(paramJSONObject.getJSONObject("check_in")));
    }
  }
  
  public void readFromParcel(Parcel paramParcel)
  {
    long l = paramParcel.readLong();
    if (l != -2147483648L) {
      mTimeUpdated = new Date(l);
    }
    mId = paramParcel.readString();
    mUser = ((User)paramParcel.readParcelable(User.class.getClassLoader()));
    mBusiness = ((YelpBusiness)paramParcel.readParcelable(YelpBusiness.class.getClassLoader()));
    mCheckIn = ((YelpCheckIn)paramParcel.readParcelable(YelpCheckIn.class.getClassLoader()));
  }
  
  public void writeToParcel(Parcel paramParcel, int paramInt)
  {
    if (mTimeUpdated == null) {}
    for (long l = -2147483648L;; l = mTimeUpdated.getTime())
    {
      paramParcel.writeLong(l);
      paramParcel.writeString(mId);
      paramParcel.writeParcelable(mUser, 0);
      paramParcel.writeParcelable(mBusiness, 0);
      paramParcel.writeParcelable(mCheckIn, 0);
      return;
    }
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.serializable._CheckInFeedback
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */