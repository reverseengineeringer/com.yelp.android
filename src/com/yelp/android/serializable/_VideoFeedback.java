package com.yelp.android.serializable;

import android.os.Parcel;
import android.os.Parcelable;
import com.yelp.parcelgen.JsonParser.DualCreator;
import com.yelp.parcelgen.JsonUtil;
import java.util.Date;
import org.json.JSONObject;

abstract class _VideoFeedback
  implements Parcelable
{
  protected String mId;
  protected Date mTimeCreated;
  protected Passport mUserPassport;
  
  protected _VideoFeedback() {}
  
  protected _VideoFeedback(Date paramDate, Passport paramPassport, String paramString)
  {
    this();
    mTimeCreated = paramDate;
    mUserPassport = paramPassport;
    mId = paramString;
  }
  
  public int describeContents()
  {
    return 0;
  }
  
  public String getId()
  {
    return mId;
  }
  
  public Date getTimeCreated()
  {
    return mTimeCreated;
  }
  
  public Passport getUserPassport()
  {
    return mUserPassport;
  }
  
  public void readFromJson(JSONObject paramJSONObject)
  {
    if (!paramJSONObject.isNull("time_created")) {
      mTimeCreated = JsonUtil.parseTimestamp(paramJSONObject, "time_created");
    }
    if (!paramJSONObject.isNull("user_passport")) {
      mUserPassport = ((Passport)Passport.CREATOR.parse(paramJSONObject.getJSONObject("user_passport")));
    }
    if (!paramJSONObject.isNull("id")) {
      mId = paramJSONObject.optString("id");
    }
  }
  
  public void readFromParcel(Parcel paramParcel)
  {
    long l = paramParcel.readLong();
    if (l != -2147483648L) {
      mTimeCreated = new Date(l);
    }
    mUserPassport = ((Passport)paramParcel.readParcelable(Passport.class.getClassLoader()));
    mId = paramParcel.readString();
  }
  
  public void writeToParcel(Parcel paramParcel, int paramInt)
  {
    if (mTimeCreated == null) {}
    for (long l = -2147483648L;; l = mTimeCreated.getTime())
    {
      paramParcel.writeLong(l);
      paramParcel.writeParcelable(mUserPassport, 0);
      paramParcel.writeString(mId);
      return;
    }
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.serializable._VideoFeedback
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */