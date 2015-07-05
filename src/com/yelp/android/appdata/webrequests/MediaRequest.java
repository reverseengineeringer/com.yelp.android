package com.yelp.android.appdata.webrequests;

import android.os.Parcelable;
import com.yelp.android.av.g;
import com.yelp.android.serializable.Media;
import java.util.List;

public abstract class MediaRequest
  extends g<Void, Void, dm>
  implements Parcelable
{
  public static final int MAX_LIMIT = 50;
  
  protected MediaRequest(ApiRequest.RequestType paramRequestType, String paramString, m<dm> paramm)
  {
    super(paramRequestType, paramString, paramm);
  }
  
  public abstract int countMedia(List<Media> paramList);
  
  public final int describeContents()
  {
    return 0;
  }
  
  public final boolean isAllMediaFetched(List<Media> paramList, int paramInt)
  {
    return (paramList.isEmpty()) || (countMedia(paramList) >= paramInt);
  }
  
  public abstract MediaRequest next(int paramInt);
  
  public MediaRequest reset()
  {
    return resetWithOffset(0);
  }
  
  public abstract MediaRequest resetWithOffset(int paramInt);
  
  public abstract MediaRequest retry();
}

/* Location:
 * Qualified Name:     com.yelp.android.appdata.webrequests.MediaRequest
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */