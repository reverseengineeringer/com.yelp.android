package com.yelp.android.appdata.webrequests;

import android.os.Parcel;
import android.os.Parcelable.Creator;
import android.text.TextUtils;
import com.yelp.android.serializable.Media;
import com.yelp.android.serializable.Media.MediaType;
import com.yelp.android.serializable.User;
import com.yelp.android.serializable.YelpBusiness;
import java.util.Iterator;
import java.util.List;
import org.json.JSONObject;

public class UserLocalMediaRequest
  extends MediaRequest
{
  public static final Parcelable.Creator<UserLocalMediaRequest> CREATOR = new gr();
  private final String mBusinessId;
  private int mLastPageSize;
  private final int mOffset;
  private final int mTotal;
  private final String mUserId;
  
  public UserLocalMediaRequest(User paramUser)
  {
    this(paramUser.getId(), null, 0, paramUser.getMediaCount(), null);
  }
  
  public UserLocalMediaRequest(User paramUser, YelpBusiness paramYelpBusiness, int paramInt, m<dm> paramm)
  {
    this(paramUser.getId(), paramYelpBusiness.getId(), paramInt, paramUser.getMediaCount(), paramm);
  }
  
  public UserLocalMediaRequest(String paramString1, String paramString2, int paramInt1, int paramInt2, m<dm> paramm)
  {
    super(ApiRequest.RequestType.GET, "user/media", paramm);
    addUrlParam("user_id", paramString1);
    addUrlParam("offset", paramInt1);
    if (!TextUtils.isEmpty(paramString2)) {
      addUrlParam("business_id", paramString2);
    }
    mUserId = paramString1;
    mTotal = paramInt2;
    mOffset = paramInt1;
    mBusinessId = paramString2;
  }
  
  public int countMedia(List<Media> paramList)
  {
    paramList = paramList.iterator();
    int i = 0;
    if (paramList.hasNext())
    {
      Media localMedia = (Media)paramList.next();
      if ((!localMedia.isMediaType(Media.MediaType.PHOTO)) && (!localMedia.isMediaType(Media.MediaType.VIDEO))) {
        break label61;
      }
      i += 1;
    }
    label61:
    for (;;)
    {
      break;
      return i;
    }
  }
  
  public MediaRequest next(int paramInt)
  {
    cancel(true);
    UserLocalMediaRequest localUserLocalMediaRequest = new UserLocalMediaRequest(mUserId, mBusinessId, mOffset + mLastPageSize, paramInt, getCallback());
    localUserLocalMediaRequest.execute(new Void[0]);
    return localUserLocalMediaRequest;
  }
  
  public dm process(JSONObject paramJSONObject)
  {
    paramJSONObject = dm.a(paramJSONObject, mOffset);
    mLastPageSize = paramJSONObject.f();
    return paramJSONObject;
  }
  
  public MediaRequest resetWithOffset(int paramInt)
  {
    return new UserLocalMediaRequest(mUserId, mBusinessId, paramInt, mTotal, getCallback());
  }
  
  public MediaRequest retry()
  {
    cancel(true);
    UserLocalMediaRequest localUserLocalMediaRequest = new UserLocalMediaRequest(mUserId, mBusinessId, mOffset, mTotal, getCallback());
    localUserLocalMediaRequest.execute(new Void[0]);
    return localUserLocalMediaRequest;
  }
  
  public void writeToParcel(Parcel paramParcel, int paramInt)
  {
    paramParcel.writeString(mUserId);
    paramParcel.writeString(mBusinessId);
    paramParcel.writeInt(mOffset);
    paramParcel.writeInt(mTotal);
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.appdata.webrequests.UserLocalMediaRequest
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */