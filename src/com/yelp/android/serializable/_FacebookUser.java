package com.yelp.android.serializable;

import android.os.Parcel;
import android.os.Parcelable;
import org.json.JSONObject;

abstract class _FacebookUser
  implements Parcelable
{
  protected String mBirthday;
  protected String mEmail;
  protected String mFirstName;
  protected String mGender;
  protected String mId;
  protected String mLastName;
  protected boolean mVerified;
  
  protected _FacebookUser() {}
  
  protected _FacebookUser(String paramString1, String paramString2, String paramString3, String paramString4, String paramString5, String paramString6, boolean paramBoolean)
  {
    this();
    mFirstName = paramString1;
    mLastName = paramString2;
    mBirthday = paramString3;
    mGender = paramString4;
    mId = paramString5;
    mEmail = paramString6;
    mVerified = paramBoolean;
  }
  
  public int describeContents()
  {
    return 0;
  }
  
  public String getBirthday()
  {
    return mBirthday;
  }
  
  public String getEmail()
  {
    return mEmail;
  }
  
  public String getFirstName()
  {
    return mFirstName;
  }
  
  public String getGender()
  {
    return mGender;
  }
  
  public String getId()
  {
    return mId;
  }
  
  public String getLastName()
  {
    return mLastName;
  }
  
  public boolean getVerified()
  {
    return mVerified;
  }
  
  public void readFromJson(JSONObject paramJSONObject)
  {
    if (!paramJSONObject.isNull("first_name")) {
      mFirstName = paramJSONObject.optString("first_name");
    }
    if (!paramJSONObject.isNull("last_name")) {
      mLastName = paramJSONObject.optString("last_name");
    }
    if (!paramJSONObject.isNull("birthday")) {
      mBirthday = paramJSONObject.optString("birthday");
    }
    if (!paramJSONObject.isNull("gender")) {
      mGender = paramJSONObject.optString("gender");
    }
    if (!paramJSONObject.isNull("id")) {
      mId = paramJSONObject.optString("id");
    }
    if (!paramJSONObject.isNull("email")) {
      mEmail = paramJSONObject.optString("email");
    }
    mVerified = paramJSONObject.optBoolean("verified");
  }
  
  public void readFromParcel(Parcel paramParcel)
  {
    mFirstName = paramParcel.readString();
    mLastName = paramParcel.readString();
    mBirthday = paramParcel.readString();
    mGender = paramParcel.readString();
    mId = paramParcel.readString();
    mEmail = paramParcel.readString();
    mVerified = paramParcel.createBooleanArray()[0];
  }
  
  public void writeToParcel(Parcel paramParcel, int paramInt)
  {
    paramParcel.writeString(mFirstName);
    paramParcel.writeString(mLastName);
    paramParcel.writeString(mBirthday);
    paramParcel.writeString(mGender);
    paramParcel.writeString(mId);
    paramParcel.writeString(mEmail);
    paramParcel.writeBooleanArray(new boolean[] { mVerified });
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.serializable._FacebookUser
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */