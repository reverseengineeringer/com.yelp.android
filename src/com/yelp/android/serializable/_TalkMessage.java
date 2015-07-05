package com.yelp.android.serializable;

import android.os.Parcel;
import android.os.Parcelable;
import com.yelp.parcelgen.JsonUtil;
import java.util.Date;
import org.json.JSONObject;

abstract class _TalkMessage
  implements Parcelable
{
  protected String mId;
  protected String mRemoved;
  protected String mText;
  protected Date mTimeCreated;
  protected Date mTimeModified;
  protected String mUserId;
  protected String mUserName;
  protected String mUserPhotoUrl;
  protected String mUserRemoved;
  
  protected _TalkMessage() {}
  
  protected _TalkMessage(Date paramDate1, Date paramDate2, String paramString1, String paramString2, String paramString3, String paramString4, String paramString5, String paramString6, String paramString7)
  {
    this();
    mTimeCreated = paramDate1;
    mTimeModified = paramDate2;
    mId = paramString1;
    mUserId = paramString2;
    mText = paramString3;
    mRemoved = paramString4;
    mUserRemoved = paramString5;
    mUserName = paramString6;
    mUserPhotoUrl = paramString7;
  }
  
  public int describeContents()
  {
    return 0;
  }
  
  public String getId()
  {
    return mId;
  }
  
  public String getRemoved()
  {
    return mRemoved;
  }
  
  public String getText()
  {
    return mText;
  }
  
  public Date getTimeCreated()
  {
    return mTimeCreated;
  }
  
  public Date getTimeModified()
  {
    return mTimeModified;
  }
  
  public String getUserId()
  {
    return mUserId;
  }
  
  public String getUserName()
  {
    return mUserName;
  }
  
  public String getUserPhotoUrl()
  {
    return mUserPhotoUrl;
  }
  
  public String getUserRemoved()
  {
    return mUserRemoved;
  }
  
  public void readFromJson(JSONObject paramJSONObject)
  {
    if (!paramJSONObject.isNull("time_created")) {
      mTimeCreated = JsonUtil.parseTimestamp(paramJSONObject, "time_created");
    }
    if (!paramJSONObject.isNull("time_modified")) {
      mTimeModified = JsonUtil.parseTimestamp(paramJSONObject, "time_modified");
    }
    if (!paramJSONObject.isNull("id")) {
      mId = paramJSONObject.optString("id");
    }
    if (!paramJSONObject.isNull("user_id")) {
      mUserId = paramJSONObject.optString("user_id");
    }
    if (!paramJSONObject.isNull("text")) {
      mText = paramJSONObject.optString("text");
    }
    if (!paramJSONObject.isNull("removed")) {
      mRemoved = paramJSONObject.optString("removed");
    }
    if (!paramJSONObject.isNull("user_removed")) {
      mUserRemoved = paramJSONObject.optString("user_removed");
    }
    if (!paramJSONObject.isNull("user_name")) {
      mUserName = paramJSONObject.optString("user_name");
    }
    if (!paramJSONObject.isNull("user_photo_url")) {
      mUserPhotoUrl = paramJSONObject.optString("user_photo_url");
    }
  }
  
  public void readFromParcel(Parcel paramParcel)
  {
    long l = paramParcel.readLong();
    if (l != -2147483648L) {
      mTimeCreated = new Date(l);
    }
    l = paramParcel.readLong();
    if (l != -2147483648L) {
      mTimeModified = new Date(l);
    }
    mId = paramParcel.readString();
    mUserId = paramParcel.readString();
    mText = paramParcel.readString();
    mRemoved = paramParcel.readString();
    mUserRemoved = paramParcel.readString();
    mUserName = paramParcel.readString();
    mUserPhotoUrl = paramParcel.readString();
  }
  
  public void writeToParcel(Parcel paramParcel, int paramInt)
  {
    long l2 = -2147483648L;
    if (mTimeCreated == null)
    {
      l1 = -2147483648L;
      paramParcel.writeLong(l1);
      if (mTimeModified != null) {
        break label104;
      }
    }
    label104:
    for (long l1 = l2;; l1 = mTimeModified.getTime())
    {
      paramParcel.writeLong(l1);
      paramParcel.writeString(mId);
      paramParcel.writeString(mUserId);
      paramParcel.writeString(mText);
      paramParcel.writeString(mRemoved);
      paramParcel.writeString(mUserRemoved);
      paramParcel.writeString(mUserName);
      paramParcel.writeString(mUserPhotoUrl);
      return;
      l1 = mTimeCreated.getTime();
      break;
    }
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.serializable._TalkMessage
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */