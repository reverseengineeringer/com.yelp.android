package com.yelp.android.serializable;

import android.os.Parcel;
import android.os.Parcelable;
import com.yelp.parcelgen.JsonUtil;
import java.util.Date;
import org.json.JSONObject;

abstract class _Comment
  implements Parcelable
{
  protected Date mDateUpdated;
  protected String mId;
  protected String mText;
  protected User mUser;
  
  protected _Comment() {}
  
  protected _Comment(Date paramDate, String paramString1, String paramString2, User paramUser)
  {
    this();
    mDateUpdated = paramDate;
    mId = paramString1;
    mText = paramString2;
    mUser = paramUser;
  }
  
  public int describeContents()
  {
    return 0;
  }
  
  public Date getDateUpdated()
  {
    return mDateUpdated;
  }
  
  public String getId()
  {
    return mId;
  }
  
  public String getText()
  {
    return mText;
  }
  
  public User getUser()
  {
    return mUser;
  }
  
  public void readFromJson(JSONObject paramJSONObject)
  {
    if (!paramJSONObject.isNull("time_updated")) {
      mDateUpdated = JsonUtil.parseTimestamp(paramJSONObject, "time_updated");
    }
    if (!paramJSONObject.isNull("id")) {
      mId = paramJSONObject.optString("id");
    }
    if (!paramJSONObject.isNull("text")) {
      mText = paramJSONObject.optString("text");
    }
    if (!paramJSONObject.isNull("user")) {
      mUser = ((User)User.CREATOR.parse(paramJSONObject.getJSONObject("user")));
    }
  }
  
  public void readFromParcel(Parcel paramParcel)
  {
    long l = paramParcel.readLong();
    if (l != -2147483648L) {
      mDateUpdated = new Date(l);
    }
    mId = paramParcel.readString();
    mText = paramParcel.readString();
    mUser = ((User)paramParcel.readParcelable(User.class.getClassLoader()));
  }
  
  public JSONObject writeJSON()
  {
    JSONObject localJSONObject = new JSONObject();
    if (mDateUpdated != null) {
      localJSONObject.put("time_updated", mDateUpdated.getTime() / 1000L);
    }
    if (mId != null) {
      localJSONObject.put("id", mId);
    }
    if (mText != null) {
      localJSONObject.put("text", mText);
    }
    if (mUser != null) {
      localJSONObject.put("user", mUser.writeJSON());
    }
    return localJSONObject;
  }
  
  public void writeToParcel(Parcel paramParcel, int paramInt)
  {
    if (mDateUpdated == null) {}
    for (long l = -2147483648L;; l = mDateUpdated.getTime())
    {
      paramParcel.writeLong(l);
      paramParcel.writeString(mId);
      paramParcel.writeString(mText);
      paramParcel.writeParcelable(mUser, 0);
      return;
    }
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.serializable._Comment
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */