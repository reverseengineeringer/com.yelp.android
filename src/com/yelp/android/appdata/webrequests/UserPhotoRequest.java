package com.yelp.android.appdata.webrequests;

import android.os.Parcel;
import android.os.Parcelable.Creator;
import com.yelp.android.serializable.Media;
import com.yelp.android.serializable.Media.MediaType;
import com.yelp.android.serializable.User;
import java.util.Iterator;
import java.util.List;
import org.json.JSONObject;

public class UserPhotoRequest
  extends MediaRequest
{
  public static final Parcelable.Creator<UserPhotoRequest> CREATOR = new gu();
  private int mLastPageSize;
  private final int mLimit;
  private final int mOffset;
  private final int mTotal;
  private final String mUserId;
  
  public UserPhotoRequest(User paramUser, int paramInt1, int paramInt2, m<dm> paramm)
  {
    this(paramUser.getId(), paramUser.getUserPhotoCount(), paramInt1, paramInt2, paramm);
  }
  
  protected UserPhotoRequest(String paramString, int paramInt1, int paramInt2, int paramInt3, m<dm> paramm)
  {
    super(ApiRequest.RequestType.GET, "user/profile/photos", paramm);
    paramInt3 = Math.min(20, paramInt3);
    addUrlParam("user_id", paramString);
    addUrlParam("offset", paramInt2);
    addUrlParam("limit", paramInt3);
    mUserId = paramString;
    mOffset = paramInt2;
    mLimit = paramInt3;
    mTotal = paramInt1;
  }
  
  public int countMedia(List<Media> paramList)
  {
    paramList = paramList.iterator();
    int i = 0;
    if (paramList.hasNext())
    {
      if (!((Media)paramList.next()).isMediaType(Media.MediaType.PHOTO)) {
        break label47;
      }
      i += 1;
    }
    label47:
    for (;;)
    {
      break;
      return i;
    }
  }
  
  public MediaRequest next(int paramInt)
  {
    cancel(true);
    UserPhotoRequest localUserPhotoRequest = new UserPhotoRequest(mUserId, mTotal, mOffset + mLastPageSize, paramInt, getCallback());
    localUserPhotoRequest.execute(new Void[0]);
    return localUserPhotoRequest;
  }
  
  public dm process(JSONObject paramJSONObject)
  {
    paramJSONObject = dm.a(paramJSONObject, mOffset);
    mLastPageSize = paramJSONObject.f();
    return paramJSONObject;
  }
  
  public MediaRequest resetWithOffset(int paramInt)
  {
    return new UserPhotoRequest(mUserId, mTotal, paramInt, mLimit, getCallback());
  }
  
  public MediaRequest retry()
  {
    cancel(true);
    UserPhotoRequest localUserPhotoRequest = new UserPhotoRequest(mUserId, mTotal, mOffset, mLimit, getCallback());
    localUserPhotoRequest.execute(new Void[0]);
    return localUserPhotoRequest;
  }
  
  public void writeToParcel(Parcel paramParcel, int paramInt)
  {
    paramParcel.writeString(mUserId);
    paramParcel.writeInt(mOffset);
    paramParcel.writeInt(mLimit);
    paramParcel.writeInt(mTotal);
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.appdata.webrequests.UserPhotoRequest
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */