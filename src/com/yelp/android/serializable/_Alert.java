package com.yelp.android.serializable;

import android.os.Parcel;
import android.os.Parcelable;
import com.yelp.parcelgen.JsonParser.DualCreator;
import com.yelp.parcelgen.JsonUtil;
import java.util.Collections;
import java.util.Date;
import java.util.Iterator;
import java.util.List;
import org.json.JSONArray;
import org.json.JSONObject;

abstract class _Alert
  implements Parcelable
{
  protected List<AlertAction> mActions;
  protected boolean mClearOnView;
  protected int mCount;
  protected String mId;
  protected String mImageUrl;
  protected String mOpenUrl;
  protected Photo mPhoto;
  protected String mText;
  protected Date mTimeModified;
  protected String mTitle;
  protected String mType;
  protected Video mVideo;
  
  protected _Alert() {}
  
  protected _Alert(Date paramDate, List<AlertAction> paramList, Photo paramPhoto, String paramString1, String paramString2, String paramString3, String paramString4, String paramString5, String paramString6, Video paramVideo, boolean paramBoolean, int paramInt)
  {
    this();
    mTimeModified = paramDate;
    mActions = paramList;
    mPhoto = paramPhoto;
    mId = paramString1;
    mType = paramString2;
    mText = paramString3;
    mImageUrl = paramString4;
    mOpenUrl = paramString5;
    mTitle = paramString6;
    mVideo = paramVideo;
    mClearOnView = paramBoolean;
    mCount = paramInt;
  }
  
  public int describeContents()
  {
    return 0;
  }
  
  public List<AlertAction> getActions()
  {
    return mActions;
  }
  
  public boolean getClearOnView()
  {
    return mClearOnView;
  }
  
  public int getCount()
  {
    return mCount;
  }
  
  public String getId()
  {
    return mId;
  }
  
  public String getImageUrl()
  {
    return mImageUrl;
  }
  
  public String getOpenUrl()
  {
    return mOpenUrl;
  }
  
  public Photo getPhoto()
  {
    return mPhoto;
  }
  
  public String getText()
  {
    return mText;
  }
  
  public Date getTimeModified()
  {
    return mTimeModified;
  }
  
  public String getTitle()
  {
    return mTitle;
  }
  
  public String getType()
  {
    return mType;
  }
  
  public Video getVideo()
  {
    return mVideo;
  }
  
  public void readFromJson(JSONObject paramJSONObject)
  {
    if (!paramJSONObject.isNull("time_modified")) {
      mTimeModified = JsonUtil.parseTimestamp(paramJSONObject, "time_modified");
    }
    if (!paramJSONObject.isNull("actions")) {}
    for (mActions = JsonUtil.parseJsonList(paramJSONObject.optJSONArray("actions"), AlertAction.CREATOR);; mActions = Collections.emptyList())
    {
      if (!paramJSONObject.isNull("photo")) {
        mPhoto = ((Photo)Photo.CREATOR.parse(paramJSONObject.getJSONObject("photo")));
      }
      if (!paramJSONObject.isNull("id")) {
        mId = paramJSONObject.optString("id");
      }
      if (!paramJSONObject.isNull("type")) {
        mType = paramJSONObject.optString("type");
      }
      if (!paramJSONObject.isNull("text")) {
        mText = paramJSONObject.optString("text");
      }
      if (!paramJSONObject.isNull("image_url")) {
        mImageUrl = paramJSONObject.optString("image_url");
      }
      if (!paramJSONObject.isNull("open_url")) {
        mOpenUrl = paramJSONObject.optString("open_url");
      }
      if (!paramJSONObject.isNull("title")) {
        mTitle = paramJSONObject.optString("title");
      }
      if (!paramJSONObject.isNull("video")) {
        mVideo = ((Video)Video.CREATOR.parse(paramJSONObject.getJSONObject("video")));
      }
      mClearOnView = paramJSONObject.optBoolean("clear_on_view");
      mCount = paramJSONObject.optInt("count");
      return;
    }
  }
  
  public void readFromParcel(Parcel paramParcel)
  {
    long l = paramParcel.readLong();
    if (l != -2147483648L) {
      mTimeModified = new Date(l);
    }
    mActions = paramParcel.createTypedArrayList(AlertAction.CREATOR);
    mPhoto = ((Photo)paramParcel.readParcelable(Photo.class.getClassLoader()));
    mId = paramParcel.readString();
    mType = paramParcel.readString();
    mText = paramParcel.readString();
    mImageUrl = paramParcel.readString();
    mOpenUrl = paramParcel.readString();
    mTitle = paramParcel.readString();
    mVideo = ((Video)paramParcel.readParcelable(Video.class.getClassLoader()));
    mClearOnView = paramParcel.createBooleanArray()[0];
    mCount = paramParcel.readInt();
  }
  
  public JSONObject writeJSON()
  {
    JSONObject localJSONObject = new JSONObject();
    if (mTimeModified != null) {
      localJSONObject.put("time_modified", mTimeModified.getTime() / 1000L);
    }
    if (mActions != null)
    {
      JSONArray localJSONArray = new JSONArray();
      Iterator localIterator = mActions.iterator();
      while (localIterator.hasNext()) {
        localJSONArray.put(((AlertAction)localIterator.next()).writeJSON());
      }
      localJSONObject.put("actions", localJSONArray);
    }
    if (mPhoto != null) {
      localJSONObject.put("photo", mPhoto.writeJSON());
    }
    if (mId != null) {
      localJSONObject.put("id", mId);
    }
    if (mType != null) {
      localJSONObject.put("type", mType);
    }
    if (mText != null) {
      localJSONObject.put("text", mText);
    }
    if (mImageUrl != null) {
      localJSONObject.put("image_url", mImageUrl);
    }
    if (mOpenUrl != null) {
      localJSONObject.put("open_url", mOpenUrl);
    }
    if (mTitle != null) {
      localJSONObject.put("title", mTitle);
    }
    if (mVideo != null) {
      localJSONObject.put("video", mVideo.writeJSON());
    }
    localJSONObject.put("clear_on_view", mClearOnView);
    localJSONObject.put("count", mCount);
    return localJSONObject;
  }
  
  public void writeToParcel(Parcel paramParcel, int paramInt)
  {
    if (mTimeModified == null) {}
    for (long l = -2147483648L;; l = mTimeModified.getTime())
    {
      paramParcel.writeLong(l);
      paramParcel.writeTypedList(mActions);
      paramParcel.writeParcelable(mPhoto, 0);
      paramParcel.writeString(mId);
      paramParcel.writeString(mType);
      paramParcel.writeString(mText);
      paramParcel.writeString(mImageUrl);
      paramParcel.writeString(mOpenUrl);
      paramParcel.writeString(mTitle);
      paramParcel.writeParcelable(mVideo, 0);
      paramParcel.writeBooleanArray(new boolean[] { mClearOnView });
      paramParcel.writeInt(mCount);
      return;
    }
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.serializable._Alert
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */