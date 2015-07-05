package com.yelp.android.serializable;

import android.os.Parcel;
import android.os.Parcelable;
import com.yelp.parcelgen.JsonParser.DualCreator;
import org.json.JSONObject;

abstract class _UserTiny
  implements Parcelable
{
  protected String mFirstName;
  protected String mId;
  protected boolean mIsBlocked;
  protected String mLastInitial;
  protected String mName;
  protected Photo mPhoto;
  
  protected _UserTiny() {}
  
  protected _UserTiny(Photo paramPhoto, String paramString1, String paramString2, String paramString3, String paramString4, boolean paramBoolean)
  {
    this();
    mPhoto = paramPhoto;
    mId = paramString1;
    mName = paramString2;
    mFirstName = paramString3;
    mLastInitial = paramString4;
    mIsBlocked = paramBoolean;
  }
  
  public int describeContents()
  {
    return 0;
  }
  
  public String getFirstName()
  {
    return mFirstName;
  }
  
  public String getId()
  {
    return mId;
  }
  
  public String getLastInitial()
  {
    return mLastInitial;
  }
  
  public String getName()
  {
    return mName;
  }
  
  public Photo getPhoto()
  {
    return mPhoto;
  }
  
  public boolean isBlocked()
  {
    return mIsBlocked;
  }
  
  public void readFromJson(JSONObject paramJSONObject)
  {
    if (!paramJSONObject.isNull("photo")) {
      mPhoto = ((Photo)Photo.CREATOR.parse(paramJSONObject.getJSONObject("photo")));
    }
    if (!paramJSONObject.isNull("id")) {
      mId = paramJSONObject.optString("id");
    }
    if (!paramJSONObject.isNull("name")) {
      mName = paramJSONObject.optString("name");
    }
    if (!paramJSONObject.isNull("first_name")) {
      mFirstName = paramJSONObject.optString("first_name");
    }
    if (!paramJSONObject.isNull("last_initial")) {
      mLastInitial = paramJSONObject.optString("last_initial");
    }
    mIsBlocked = paramJSONObject.optBoolean("is_blocked");
  }
  
  public void readFromParcel(Parcel paramParcel)
  {
    mPhoto = ((Photo)paramParcel.readParcelable(Photo.class.getClassLoader()));
    mId = paramParcel.readString();
    mName = paramParcel.readString();
    mFirstName = paramParcel.readString();
    mLastInitial = paramParcel.readString();
    mIsBlocked = paramParcel.createBooleanArray()[0];
  }
  
  public void writeToParcel(Parcel paramParcel, int paramInt)
  {
    paramParcel.writeParcelable(mPhoto, 0);
    paramParcel.writeString(mId);
    paramParcel.writeString(mName);
    paramParcel.writeString(mFirstName);
    paramParcel.writeString(mLastInitial);
    paramParcel.writeBooleanArray(new boolean[] { mIsBlocked });
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.serializable._UserTiny
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */