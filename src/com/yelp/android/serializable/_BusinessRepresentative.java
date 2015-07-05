package com.yelp.android.serializable;

import android.os.Parcel;
import android.os.Parcelable;
import com.yelp.parcelgen.JsonParser.DualCreator;
import org.json.JSONObject;

abstract class _BusinessRepresentative
  implements Parcelable
{
  protected String mBio;
  protected String mName;
  protected Photo mPhoto;
  protected String mRoleString;
  
  protected _BusinessRepresentative() {}
  
  protected _BusinessRepresentative(Photo paramPhoto, String paramString1, String paramString2, String paramString3)
  {
    this();
    mPhoto = paramPhoto;
    mName = paramString1;
    mBio = paramString2;
    mRoleString = paramString3;
  }
  
  public int describeContents()
  {
    return 0;
  }
  
  public String getBio()
  {
    return mBio;
  }
  
  public String getName()
  {
    return mName;
  }
  
  public Photo getPhoto()
  {
    return mPhoto;
  }
  
  public String getRoleString()
  {
    return mRoleString;
  }
  
  public void readFromJson(JSONObject paramJSONObject)
  {
    if (!paramJSONObject.isNull("photo")) {
      mPhoto = ((Photo)Photo.CREATOR.parse(paramJSONObject.getJSONObject("photo")));
    }
    if (!paramJSONObject.isNull("name")) {
      mName = paramJSONObject.optString("name");
    }
    if (!paramJSONObject.isNull("bio")) {
      mBio = paramJSONObject.optString("bio");
    }
    if (!paramJSONObject.isNull("role")) {
      mRoleString = paramJSONObject.optString("role");
    }
  }
  
  public void readFromParcel(Parcel paramParcel)
  {
    mPhoto = ((Photo)paramParcel.readParcelable(Photo.class.getClassLoader()));
    mName = paramParcel.readString();
    mBio = paramParcel.readString();
    mRoleString = paramParcel.readString();
  }
  
  public JSONObject writeJSON()
  {
    JSONObject localJSONObject = new JSONObject();
    if (mPhoto != null) {
      localJSONObject.put("photo", mPhoto.writeJSON());
    }
    if (mName != null) {
      localJSONObject.put("name", mName);
    }
    if (mBio != null) {
      localJSONObject.put("bio", mBio);
    }
    if (mRoleString != null) {
      localJSONObject.put("role", mRoleString);
    }
    return localJSONObject;
  }
  
  public void writeToParcel(Parcel paramParcel, int paramInt)
  {
    paramParcel.writeParcelable(mPhoto, 0);
    paramParcel.writeString(mName);
    paramParcel.writeString(mBio);
    paramParcel.writeString(mRoleString);
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.serializable._BusinessRepresentative
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */