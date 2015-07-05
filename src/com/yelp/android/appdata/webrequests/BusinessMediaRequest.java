package com.yelp.android.appdata.webrequests;

import android.os.Parcel;
import android.os.Parcelable.Creator;
import com.yelp.android.serializable.Media;
import java.util.List;
import org.json.JSONObject;

public class BusinessMediaRequest
  extends MediaRequest
{
  public static final Parcelable.Creator<BusinessMediaRequest> CREATOR = new x();
  private final String mBusinessId;
  private int mLastPageSize;
  private final int mLimit;
  private int mOffset;
  private String mPhotoId;
  private String mVideoId;
  
  public BusinessMediaRequest(String paramString, int paramInt1, int paramInt2)
  {
    this(paramString, paramInt1, paramInt2, null, null, null);
  }
  
  public BusinessMediaRequest(String paramString, int paramInt1, int paramInt2, m<dm> paramm)
  {
    super(ApiRequest.RequestType.GET, "/business/media", paramm);
    mBusinessId = paramString;
    mLimit = Math.min(paramInt2, 50);
    mOffset = paramInt1;
    addUrlParam("biz_id", mBusinessId);
    addUrlParam("limit", mLimit);
    addUrlParam("offset", mOffset);
  }
  
  private BusinessMediaRequest(String paramString1, int paramInt1, int paramInt2, String paramString2, String paramString3, m<dm> paramm)
  {
    this(paramString1, paramInt1, paramInt2, paramm);
    mPhotoId = paramString2;
    mVideoId = paramString3;
    if (mPhotoId != null) {
      addUrlParam("photo_id", mPhotoId);
    }
    if (mVideoId != null) {
      addUrlParam("video_id", mVideoId);
    }
  }
  
  public static BusinessMediaRequest photosStartingAtSpecificPhoto(String paramString1, String paramString2, int paramInt)
  {
    return new BusinessMediaRequest(paramString1, 0, paramInt, paramString2, null, null);
  }
  
  public static BusinessMediaRequest singlePhoto(String paramString1, String paramString2)
  {
    return photosStartingAtSpecificPhoto(paramString1, paramString2, 1);
  }
  
  public static BusinessMediaRequest singleVideo(String paramString1, String paramString2)
  {
    return new BusinessMediaRequest(paramString1, 0, 1, null, paramString2, null);
  }
  
  public int countMedia(List<Media> paramList)
  {
    return paramList.size();
  }
  
  public String getBusinessId()
  {
    return mBusinessId;
  }
  
  public int getLimit()
  {
    return mLimit;
  }
  
  public int getOffset()
  {
    return mOffset;
  }
  
  public boolean isSingleMediaRequest()
  {
    return ((mPhotoId != null) || (mVideoId != null)) && (mLimit == 1);
  }
  
  public BusinessMediaRequest next(int paramInt)
  {
    cancel(true);
    BusinessMediaRequest localBusinessMediaRequest = new BusinessMediaRequest(mBusinessId, mOffset + mLastPageSize, paramInt, getCallback());
    localBusinessMediaRequest.execute(new Void[0]);
    return localBusinessMediaRequest;
  }
  
  public dm process(JSONObject paramJSONObject)
  {
    paramJSONObject = dm.a(paramJSONObject, mOffset);
    mLastPageSize = paramJSONObject.f();
    mOffset = paramJSONObject.e();
    return paramJSONObject;
  }
  
  public BusinessMediaRequest resetWithOffset(int paramInt)
  {
    BusinessMediaRequest localBusinessMediaRequest = this;
    if (mPhotoId == null)
    {
      localBusinessMediaRequest = this;
      if (mVideoId == null) {
        localBusinessMediaRequest = new BusinessMediaRequest(mBusinessId, paramInt, mLimit, getCallback());
      }
    }
    return localBusinessMediaRequest;
  }
  
  public BusinessMediaRequest retry()
  {
    cancel(true);
    BusinessMediaRequest localBusinessMediaRequest = new BusinessMediaRequest(mBusinessId, mOffset, mLimit, mPhotoId, mVideoId, getCallback());
    localBusinessMediaRequest.execute(new Void[0]);
    return localBusinessMediaRequest;
  }
  
  public void writeToParcel(Parcel paramParcel, int paramInt)
  {
    paramParcel.writeString(mBusinessId);
    paramParcel.writeString(mPhotoId);
    paramParcel.writeString(mVideoId);
    paramParcel.writeInt(mOffset);
    paramParcel.writeInt(mLimit);
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.appdata.webrequests.BusinessMediaRequest
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */