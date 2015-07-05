package com.yelp.android.serializable;

import android.os.Parcel;
import android.os.Parcelable;
import com.yelp.parcelgen.JsonParser.DualCreator;
import com.yelp.parcelgen.JsonUtil;
import java.util.Collections;
import java.util.Date;
import java.util.List;
import org.json.JSONObject;

abstract class _Conversation
  implements Parcelable
{
  protected BusinessUser mBizUser;
  protected String mBusinessId;
  protected String mId;
  protected boolean mIsRead;
  protected List<ConversationMessage> mLatestMessages;
  protected String mReviewId;
  protected String mSubject;
  protected String mSubjectInConversationList;
  protected Date mTimeCreated;
  protected List<UserTiny> mUsers;
  
  protected _Conversation() {}
  
  protected _Conversation(BusinessUser paramBusinessUser, Date paramDate, List<ConversationMessage> paramList, List<UserTiny> paramList1, String paramString1, String paramString2, String paramString3, String paramString4, String paramString5, boolean paramBoolean)
  {
    this();
    mBizUser = paramBusinessUser;
    mTimeCreated = paramDate;
    mLatestMessages = paramList;
    mUsers = paramList1;
    mId = paramString1;
    mSubject = paramString2;
    mReviewId = paramString3;
    mBusinessId = paramString4;
    mSubjectInConversationList = paramString5;
    mIsRead = paramBoolean;
  }
  
  public int describeContents()
  {
    return 0;
  }
  
  public BusinessUser getBizUser()
  {
    return mBizUser;
  }
  
  public String getBusinessId()
  {
    return mBusinessId;
  }
  
  public String getId()
  {
    return mId;
  }
  
  public List<ConversationMessage> getLatestMessages()
  {
    return mLatestMessages;
  }
  
  public String getReviewId()
  {
    return mReviewId;
  }
  
  public String getSubject()
  {
    return mSubject;
  }
  
  public String getSubjectInConversationList()
  {
    return mSubjectInConversationList;
  }
  
  public Date getTimeCreated()
  {
    return mTimeCreated;
  }
  
  public List<UserTiny> getUsers()
  {
    return mUsers;
  }
  
  public boolean isRead()
  {
    return mIsRead;
  }
  
  public void readFromJson(JSONObject paramJSONObject)
  {
    if (!paramJSONObject.isNull("biz_user")) {
      mBizUser = ((BusinessUser)BusinessUser.CREATOR.parse(paramJSONObject.getJSONObject("biz_user")));
    }
    if (!paramJSONObject.isNull("time_created")) {
      mTimeCreated = JsonUtil.parseTimestamp(paramJSONObject, "time_created");
    }
    if (!paramJSONObject.isNull("latest_messages"))
    {
      mLatestMessages = JsonUtil.parseJsonList(paramJSONObject.optJSONArray("latest_messages"), ConversationMessage.CREATOR);
      if (paramJSONObject.isNull("users")) {
        break label213;
      }
    }
    label213:
    for (mUsers = JsonUtil.parseJsonList(paramJSONObject.optJSONArray("users"), UserTiny.CREATOR);; mUsers = Collections.emptyList())
    {
      if (!paramJSONObject.isNull("id")) {
        mId = paramJSONObject.optString("id");
      }
      if (!paramJSONObject.isNull("subject")) {
        mSubject = paramJSONObject.optString("subject");
      }
      if (!paramJSONObject.isNull("review_id")) {
        mReviewId = paramJSONObject.optString("review_id");
      }
      if (!paramJSONObject.isNull("business_id")) {
        mBusinessId = paramJSONObject.optString("business_id");
      }
      if (!paramJSONObject.isNull("subject_in_conversation_list")) {
        mSubjectInConversationList = paramJSONObject.optString("subject_in_conversation_list");
      }
      mIsRead = paramJSONObject.optBoolean("is_read");
      return;
      mLatestMessages = Collections.emptyList();
      break;
    }
  }
  
  public void readFromParcel(Parcel paramParcel)
  {
    mBizUser = ((BusinessUser)paramParcel.readParcelable(BusinessUser.class.getClassLoader()));
    long l = paramParcel.readLong();
    if (l != -2147483648L) {
      mTimeCreated = new Date(l);
    }
    mLatestMessages = paramParcel.createTypedArrayList(ConversationMessage.CREATOR);
    mUsers = paramParcel.createTypedArrayList(UserTiny.CREATOR);
    mId = paramParcel.readString();
    mSubject = paramParcel.readString();
    mReviewId = paramParcel.readString();
    mBusinessId = paramParcel.readString();
    mSubjectInConversationList = paramParcel.readString();
    mIsRead = paramParcel.createBooleanArray()[0];
  }
  
  public void writeToParcel(Parcel paramParcel, int paramInt)
  {
    paramParcel.writeParcelable(mBizUser, 0);
    if (mTimeCreated == null) {}
    for (long l = -2147483648L;; l = mTimeCreated.getTime())
    {
      paramParcel.writeLong(l);
      paramParcel.writeTypedList(mLatestMessages);
      paramParcel.writeTypedList(mUsers);
      paramParcel.writeString(mId);
      paramParcel.writeString(mSubject);
      paramParcel.writeString(mReviewId);
      paramParcel.writeString(mBusinessId);
      paramParcel.writeString(mSubjectInConversationList);
      paramParcel.writeBooleanArray(new boolean[] { mIsRead });
      return;
    }
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.serializable._Conversation
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */