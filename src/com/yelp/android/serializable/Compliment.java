package com.yelp.android.serializable;

import android.os.Parcel;
import java.util.Date;
import java.util.Locale;
import org.json.JSONObject;

public class Compliment
  extends _Compliment
  implements DisplayableAsUserBadge
{
  public static final ah<Compliment> CREATOR = new aa();
  private Compliment.ComplimentableItemType mItemType;
  private Compliment.ComplimentState mState;
  private Compliment.ComplimentType mType;
  
  public Compliment()
  {
    mState = Compliment.ComplimentState.ELIGIBLE;
    mItemType = Compliment.ComplimentableItemType.UNKNOWN;
  }
  
  public Compliment(String paramString, Compliment.ComplimentType paramComplimentType, Complimentable paramComplimentable, User paramUser)
  {
    mMessage = paramString;
    mType = paramComplimentType;
    mDateModified = new Date();
    mSender = paramUser;
    if (paramComplimentable != null)
    {
      mComplimentableId = paramComplimentable.getId();
      mItemType = paramComplimentable.getType();
    }
  }
  
  public Compliment(String paramString, Compliment paramCompliment)
  {
    super(paramCompliment.getDateModified(), paramCompliment.getPhoto(), paramString, paramCompliment.getMessage(), mBusinessName, mBusinessId, mComplimentableId, mSender);
    mItemType = mItemType;
    mType = mType;
    mState = mState;
  }
  
  public boolean equals(Object paramObject)
  {
    if (this == paramObject) {}
    do
    {
      do
      {
        return true;
        if (paramObject == null) {
          return false;
        }
        if (!(paramObject instanceof Compliment)) {
          return false;
        }
        paramObject = (Compliment)paramObject;
        if (mId != null) {
          break;
        }
      } while (mId == null);
      return false;
    } while (mId.equals(mId));
    return false;
  }
  
  public int getFriendCount()
  {
    return mSender.getFriendCount();
  }
  
  public Compliment.ComplimentableItemType getItem()
  {
    return mItemType;
  }
  
  public int getMediaCount()
  {
    return mSender.getMediaCount();
  }
  
  public int getPhotoCount()
  {
    return mSender.getLocalPhotoCount();
  }
  
  public int getReviewCount()
  {
    return mSender.getReviewCount();
  }
  
  public Compliment.ComplimentState getState()
  {
    return mState;
  }
  
  public Compliment.ComplimentType getType()
  {
    return mType;
  }
  
  public String getUserId()
  {
    return mSender.getUserId();
  }
  
  public String getUserName()
  {
    return getSender().getName();
  }
  
  public String getUserPhotoUrl()
  {
    return mSender.getUserPhotoUrl();
  }
  
  public int getVideoCount()
  {
    return mSender.getVideoCount();
  }
  
  public int hashCode()
  {
    if (mId == null) {}
    for (int i = 0;; i = mId.hashCode()) {
      return i + 31;
    }
  }
  
  public boolean isEliteUser()
  {
    return mSender.isEliteUser();
  }
  
  public void readFromJson(JSONObject paramJSONObject)
  {
    super.readFromJson(paramJSONObject);
    try
    {
      mItemType = Compliment.ComplimentableItemType.valueOf(paramJSONObject.optString("complimentable_type").toUpperCase(Locale.US));
    }
    catch (IllegalArgumentException localIllegalArgumentException)
    {
      for (;;)
      {
        try
        {
          mType = Compliment.ComplimentType.valueOf(paramJSONObject.getString("name").toUpperCase(Locale.US));
          return;
        }
        catch (IllegalArgumentException paramJSONObject)
        {
          mType = Compliment.ComplimentType.UNKNOWN;
        }
        localIllegalArgumentException = localIllegalArgumentException;
        mItemType = Compliment.ComplimentableItemType.UNKNOWN;
      }
    }
  }
  
  public void readFromParcel(Parcel paramParcel)
  {
    super.readFromParcel(paramParcel);
    mItemType = ((Compliment.ComplimentableItemType)paramParcel.readSerializable());
    mState = ((Compliment.ComplimentState)paramParcel.readSerializable());
    mType = ((Compliment.ComplimentType)paramParcel.readSerializable());
  }
  
  public void setState(Compliment.ComplimentState paramComplimentState)
  {
    mState = paramComplimentState;
  }
  
  public void writeToParcel(Parcel paramParcel, int paramInt)
  {
    super.writeToParcel(paramParcel, paramInt);
    paramParcel.writeSerializable(mItemType);
    paramParcel.writeSerializable(mState);
    paramParcel.writeSerializable(mType);
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.serializable.Compliment
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */