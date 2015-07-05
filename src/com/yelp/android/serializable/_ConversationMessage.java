package com.yelp.android.serializable;

import android.os.Parcel;
import android.os.Parcelable;
import com.yelp.parcelgen.JsonParser.DualCreator;
import com.yelp.parcelgen.JsonUtil;
import java.util.Date;
import org.json.JSONObject;

abstract class _ConversationMessage
  implements Parcelable
{
  protected BusinessUser mBizUser;
  protected String mId;
  protected String mMessage;
  protected Date mTimeSent;
  protected UserTiny mUser;
  
  protected _ConversationMessage() {}
  
  protected _ConversationMessage(BusinessUser paramBusinessUser, Date paramDate, String paramString1, String paramString2, UserTiny paramUserTiny)
  {
    this();
    mBizUser = paramBusinessUser;
    mTimeSent = paramDate;
    mId = paramString1;
    mMessage = paramString2;
    mUser = paramUserTiny;
  }
  
  public int describeContents()
  {
    return 0;
  }
  
  public BusinessUser getBizUser()
  {
    return mBizUser;
  }
  
  public String getId()
  {
    return mId;
  }
  
  public String getMessage()
  {
    return mMessage;
  }
  
  public Date getTimeSent()
  {
    return mTimeSent;
  }
  
  public UserTiny getUser()
  {
    return mUser;
  }
  
  public void readFromJson(JSONObject paramJSONObject)
  {
    if (!paramJSONObject.isNull("biz_user")) {
      mBizUser = ((BusinessUser)BusinessUser.CREATOR.parse(paramJSONObject.getJSONObject("biz_user")));
    }
    if (!paramJSONObject.isNull("time_sent")) {
      mTimeSent = JsonUtil.parseTimestamp(paramJSONObject, "time_sent");
    }
    if (!paramJSONObject.isNull("id")) {
      mId = paramJSONObject.optString("id");
    }
    if (!paramJSONObject.isNull("message")) {
      mMessage = paramJSONObject.optString("message");
    }
    if (!paramJSONObject.isNull("user")) {
      mUser = ((UserTiny)UserTiny.CREATOR.parse(paramJSONObject.getJSONObject("user")));
    }
  }
  
  public void readFromParcel(Parcel paramParcel)
  {
    mBizUser = ((BusinessUser)paramParcel.readParcelable(BusinessUser.class.getClassLoader()));
    long l = paramParcel.readLong();
    if (l != -2147483648L) {
      mTimeSent = new Date(l);
    }
    mId = paramParcel.readString();
    mMessage = paramParcel.readString();
    mUser = ((UserTiny)paramParcel.readParcelable(UserTiny.class.getClassLoader()));
  }
  
  public void writeToParcel(Parcel paramParcel, int paramInt)
  {
    paramParcel.writeParcelable(mBizUser, 0);
    if (mTimeSent == null) {}
    for (long l = -2147483648L;; l = mTimeSent.getTime())
    {
      paramParcel.writeLong(l);
      paramParcel.writeString(mId);
      paramParcel.writeString(mMessage);
      paramParcel.writeParcelable(mUser, 0);
      return;
    }
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.serializable._ConversationMessage
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */