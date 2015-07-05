package com.yelp.android.serializable;

import android.os.Parcel;
import android.os.Parcelable;
import com.yelp.parcelgen.JsonUtil;
import java.util.Date;
import org.json.JSONObject;

abstract class _ReviewDraft
  implements Parcelable
{
  protected String mBusinessId;
  protected String mBusinessName;
  protected String mBusinessPhotoUrl;
  protected Date mDateCreated;
  protected Date mDateModified;
  protected String mId;
  protected int mNumHalfstars;
  protected String mText;
  
  protected _ReviewDraft() {}
  
  protected _ReviewDraft(Date paramDate1, Date paramDate2, String paramString1, String paramString2, String paramString3, String paramString4, String paramString5, int paramInt)
  {
    this();
    mDateCreated = paramDate1;
    mDateModified = paramDate2;
    mBusinessId = paramString1;
    mBusinessName = paramString2;
    mBusinessPhotoUrl = paramString3;
    mText = paramString4;
    mId = paramString5;
    mNumHalfstars = paramInt;
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
  
  public String getBusinessPhotoUrl()
  {
    return mBusinessPhotoUrl;
  }
  
  public Date getDateCreated()
  {
    return mDateCreated;
  }
  
  public Date getDateModified()
  {
    return mDateModified;
  }
  
  public String getId()
  {
    return mId;
  }
  
  public int getNumHalfstars()
  {
    return mNumHalfstars;
  }
  
  public String getText()
  {
    return mText;
  }
  
  public void readFromJson(JSONObject paramJSONObject)
  {
    if (!paramJSONObject.isNull("time_created")) {
      mDateCreated = JsonUtil.parseTimestamp(paramJSONObject, "time_created");
    }
    if (!paramJSONObject.isNull("time_modified")) {
      mDateModified = JsonUtil.parseTimestamp(paramJSONObject, "time_modified");
    }
    if (!paramJSONObject.isNull("business_id")) {
      mBusinessId = paramJSONObject.optString("business_id");
    }
    if (!paramJSONObject.isNull("business_name")) {
      mBusinessName = paramJSONObject.optString("business_name");
    }
    if (!paramJSONObject.isNull("business_photo_url")) {
      mBusinessPhotoUrl = paramJSONObject.optString("business_photo_url");
    }
    if (!paramJSONObject.isNull("text")) {
      mText = paramJSONObject.optString("text");
    }
    if (!paramJSONObject.isNull("id")) {
      mId = paramJSONObject.optString("id");
    }
    mNumHalfstars = paramJSONObject.optInt("num_halfstars");
  }
  
  public void readFromParcel(Parcel paramParcel)
  {
    long l = paramParcel.readLong();
    if (l != -2147483648L) {
      mDateCreated = new Date(l);
    }
    l = paramParcel.readLong();
    if (l != -2147483648L) {
      mDateModified = new Date(l);
    }
    mBusinessId = paramParcel.readString();
    mBusinessName = paramParcel.readString();
    mBusinessPhotoUrl = paramParcel.readString();
    mText = paramParcel.readString();
    mId = paramParcel.readString();
    mNumHalfstars = paramParcel.readInt();
  }
  
  public void writeToParcel(Parcel paramParcel, int paramInt)
  {
    long l2 = -2147483648L;
    if (mDateCreated == null)
    {
      l1 = -2147483648L;
      paramParcel.writeLong(l1);
      if (mDateModified != null) {
        break label96;
      }
    }
    label96:
    for (long l1 = l2;; l1 = mDateModified.getTime())
    {
      paramParcel.writeLong(l1);
      paramParcel.writeString(mBusinessId);
      paramParcel.writeString(mBusinessName);
      paramParcel.writeString(mBusinessPhotoUrl);
      paramParcel.writeString(mText);
      paramParcel.writeString(mId);
      paramParcel.writeInt(mNumHalfstars);
      return;
      l1 = mDateCreated.getTime();
      break;
    }
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.serializable._ReviewDraft
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */