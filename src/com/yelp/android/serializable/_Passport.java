package com.yelp.android.serializable;

import android.os.Parcel;
import android.os.Parcelable;
import com.yelp.parcelgen.JsonParser.DualCreator;
import com.yelp.parcelgen.JsonUtil;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;
import org.json.JSONArray;
import org.json.JSONObject;

abstract class _Passport
  implements Parcelable
{
  protected List<String> mDisabledFeatures;
  protected int[] mEliteYears;
  protected String mFirstName;
  protected int mFriendCount;
  protected String mId;
  protected String mLastInitial;
  protected String mName;
  protected int mPhotoCount;
  protected Photo mProfilePhoto;
  protected int mReviewCount;
  protected int mVideoCount;
  
  protected _Passport() {}
  
  protected _Passport(List<String> paramList, Photo paramPhoto, String paramString1, String paramString2, String paramString3, String paramString4, int paramInt1, int paramInt2, int paramInt3, int paramInt4, int[] paramArrayOfInt)
  {
    this();
    mDisabledFeatures = paramList;
    mProfilePhoto = paramPhoto;
    mId = paramString1;
    mName = paramString2;
    mFirstName = paramString3;
    mLastInitial = paramString4;
    mReviewCount = paramInt1;
    mFriendCount = paramInt2;
    mVideoCount = paramInt3;
    mPhotoCount = paramInt4;
    mEliteYears = paramArrayOfInt;
  }
  
  public int describeContents()
  {
    return 0;
  }
  
  public List<String> getDisabledFeatures()
  {
    return mDisabledFeatures;
  }
  
  public int[] getEliteYears()
  {
    return mEliteYears;
  }
  
  public String getFirstName()
  {
    return mFirstName;
  }
  
  public int getFriendCount()
  {
    return mFriendCount;
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
  
  public int getPhotoCount()
  {
    return mPhotoCount;
  }
  
  public Photo getProfilePhoto()
  {
    return mProfilePhoto;
  }
  
  public int getReviewCount()
  {
    return mReviewCount;
  }
  
  public int getVideoCount()
  {
    return mVideoCount;
  }
  
  public void readFromJson(JSONObject paramJSONObject)
  {
    if (!paramJSONObject.isNull("disabled_features")) {}
    for (mDisabledFeatures = JsonUtil.getStringList(paramJSONObject.optJSONArray("disabled_features"));; mDisabledFeatures = Collections.emptyList())
    {
      if (!paramJSONObject.isNull("profile_photo")) {
        mProfilePhoto = ((Photo)Photo.CREATOR.parse(paramJSONObject.getJSONObject("profile_photo")));
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
      mReviewCount = paramJSONObject.optInt("review_count");
      mFriendCount = paramJSONObject.optInt("friend_count");
      mVideoCount = paramJSONObject.optInt("video_count");
      mPhotoCount = paramJSONObject.optInt("business_photo_count");
      if (paramJSONObject.isNull("elite_years")) {
        break;
      }
      paramJSONObject = paramJSONObject.getJSONArray("elite_years");
      int j = paramJSONObject.length();
      mEliteYears = new int[j];
      int i = 0;
      while (i < j)
      {
        mEliteYears[i] = paramJSONObject.getInt(i);
        i += 1;
      }
    }
  }
  
  public void readFromParcel(Parcel paramParcel)
  {
    mDisabledFeatures = paramParcel.createStringArrayList();
    mProfilePhoto = ((Photo)paramParcel.readParcelable(Photo.class.getClassLoader()));
    mId = paramParcel.readString();
    mName = paramParcel.readString();
    mFirstName = paramParcel.readString();
    mLastInitial = paramParcel.readString();
    mReviewCount = paramParcel.readInt();
    mFriendCount = paramParcel.readInt();
    mVideoCount = paramParcel.readInt();
    mPhotoCount = paramParcel.readInt();
    mEliteYears = paramParcel.createIntArray();
  }
  
  public JSONObject writeJSON()
  {
    JSONObject localJSONObject = new JSONObject();
    JSONArray localJSONArray;
    Object localObject;
    if (mDisabledFeatures != null)
    {
      localJSONArray = new JSONArray();
      localObject = mDisabledFeatures.iterator();
      while (((Iterator)localObject).hasNext()) {
        localJSONArray.put((String)((Iterator)localObject).next());
      }
      localJSONObject.put("disabled_features", localJSONArray);
    }
    if (mProfilePhoto != null) {
      localJSONObject.put("profile_photo", mProfilePhoto.writeJSON());
    }
    if (mId != null) {
      localJSONObject.put("id", mId);
    }
    if (mName != null) {
      localJSONObject.put("name", mName);
    }
    if (mFirstName != null) {
      localJSONObject.put("first_name", mFirstName);
    }
    if (mLastInitial != null) {
      localJSONObject.put("last_initial", mLastInitial);
    }
    localJSONObject.put("review_count", mReviewCount);
    localJSONObject.put("friend_count", mFriendCount);
    localJSONObject.put("video_count", mVideoCount);
    localJSONObject.put("business_photo_count", mPhotoCount);
    if (mEliteYears != null)
    {
      localJSONArray = new JSONArray();
      localObject = mEliteYears;
      int j = localObject.length;
      int i = 0;
      while (i < j)
      {
        localJSONArray.put(localObject[i]);
        i += 1;
      }
      localJSONObject.put("elite_years", localJSONArray);
    }
    return localJSONObject;
  }
  
  public void writeToParcel(Parcel paramParcel, int paramInt)
  {
    paramParcel.writeStringList(mDisabledFeatures);
    paramParcel.writeParcelable(mProfilePhoto, 0);
    paramParcel.writeString(mId);
    paramParcel.writeString(mName);
    paramParcel.writeString(mFirstName);
    paramParcel.writeString(mLastInitial);
    paramParcel.writeInt(mReviewCount);
    paramParcel.writeInt(mFriendCount);
    paramParcel.writeInt(mVideoCount);
    paramParcel.writeInt(mPhotoCount);
    paramParcel.writeIntArray(mEliteYears);
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.serializable._Passport
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */