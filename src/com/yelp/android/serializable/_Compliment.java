package com.yelp.android.serializable;

import android.os.Parcel;
import android.os.Parcelable;
import com.yelp.parcelgen.JsonParser.DualCreator;
import com.yelp.parcelgen.JsonUtil;
import java.util.Date;
import org.json.JSONObject;

abstract class _Compliment
  implements Parcelable
{
  protected String mBusinessId;
  protected String mBusinessName;
  protected String mComplimentableId;
  protected Date mDateModified;
  protected String mId;
  protected String mMessage;
  protected Photo mPhoto;
  protected User mSender;
  
  protected _Compliment() {}
  
  protected _Compliment(Date paramDate, Photo paramPhoto, String paramString1, String paramString2, String paramString3, String paramString4, String paramString5, User paramUser)
  {
    this();
    mDateModified = paramDate;
    mPhoto = paramPhoto;
    mId = paramString1;
    mMessage = paramString2;
    mBusinessName = paramString3;
    mBusinessId = paramString4;
    mComplimentableId = paramString5;
    mSender = paramUser;
  }
  
  public int describeContents()
  {
    return 0;
  }
  
  public String getBusinessId()
  {
    return mBusinessId;
  }
  
  public String getBusinessName()
  {
    return mBusinessName;
  }
  
  public String getComplimentableId()
  {
    return mComplimentableId;
  }
  
  public Date getDateModified()
  {
    return mDateModified;
  }
  
  public String getId()
  {
    return mId;
  }
  
  public String getMessage()
  {
    return mMessage;
  }
  
  public Photo getPhoto()
  {
    return mPhoto;
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
    if (!paramJSONObject.isNull("photo")) {
      mPhoto = ((Photo)Photo.CREATOR.parse(paramJSONObject.getJSONObject("photo")));
    }
    if (!paramJSONObject.isNull("id")) {
      mId = paramJSONObject.optString("id");
    }
    if (!paramJSONObject.isNull("message")) {
      mMessage = paramJSONObject.optString("message");
    }
    if (!paramJSONObject.isNull("business_name")) {
      mBusinessName = paramJSONObject.optString("business_name");
    }
    if (!paramJSONObject.isNull("business_id")) {
      mBusinessId = paramJSONObject.optString("business_id");
    }
    if (!paramJSONObject.isNull("complimentable_id")) {
      mComplimentableId = paramJSONObject.optString("complimentable_id");
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
    mPhoto = ((Photo)paramParcel.readParcelable(Photo.class.getClassLoader()));
    mId = paramParcel.readString();
    mMessage = paramParcel.readString();
    mBusinessName = paramParcel.readString();
    mBusinessId = paramParcel.readString();
    mComplimentableId = paramParcel.readString();
    mSender = ((User)paramParcel.readParcelable(User.class.getClassLoader()));
  }
  
  public void writeToParcel(Parcel paramParcel, int paramInt)
  {
    if (mDateModified == null) {}
    for (long l = -2147483648L;; l = mDateModified.getTime())
    {
      paramParcel.writeLong(l);
      paramParcel.writeParcelable(mPhoto, 0);
      paramParcel.writeString(mId);
      paramParcel.writeString(mMessage);
      paramParcel.writeString(mBusinessName);
      paramParcel.writeString(mBusinessId);
      paramParcel.writeString(mComplimentableId);
      paramParcel.writeParcelable(mSender, 0);
      return;
    }
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.serializable._Compliment
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */