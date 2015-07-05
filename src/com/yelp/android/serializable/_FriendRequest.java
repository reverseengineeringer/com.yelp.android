package com.yelp.android.serializable;

import android.os.Parcel;
import android.os.Parcelable;
import com.yelp.parcelgen.JsonUtil;
import java.util.Date;
import org.json.JSONObject;

abstract class _FriendRequest
  implements Parcelable
{
  protected Date mDateModified;
  protected String mMessage;
  protected User mSender;
  
  protected _FriendRequest() {}
  
  protected _FriendRequest(Date paramDate, String paramString, User paramUser)
  {
    this();
    mDateModified = paramDate;
    mMessage = paramString;
    mSender = paramUser;
  }
  
  public int describeContents()
  {
    return 0;
  }
  
  public Date getDateModified()
  {
    return mDateModified;
  }
  
  public String getMessage()
  {
    return mMessage;
  }
  
  public User getSender()
  {
    return mSender;
  }
  
  public void readFromJson(JSONObject paramJSONObject)
  {
    if (!paramJSONObject.isNull("time_created")) {
      mDateModified = JsonUtil.parseTimestamp(paramJSONObject, "time_created");
    }
    if (!paramJSONObject.isNull("message")) {
      mMessage = paramJSONObject.optString("message");
    }
    if (!paramJSONObject.isNull("user")) {
      mSender = ((User)User.CREATOR.parse(paramJSONObject.getJSONObject("user")));
    }
  }
  
  public void readFromParcel(Parcel paramParcel)
  {
    long l = paramParcel.readLong();
    if (l != -2147483648L) {
      mDateModified = new Date(l);
    }
    mMessage = paramParcel.readString();
    mSender = ((User)paramParcel.readParcelable(User.class.getClassLoader()));
  }
  
  public void writeToParcel(Parcel paramParcel, int paramInt)
  {
    if (mDateModified == null) {}
    for (long l = -2147483648L;; l = mDateModified.getTime())
    {
      paramParcel.writeLong(l);
      paramParcel.writeString(mMessage);
      paramParcel.writeParcelable(mSender, 0);
      return;
    }
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.serializable._FriendRequest
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */