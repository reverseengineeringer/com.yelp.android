package com.yelp.android.appdata.webrequests;

import android.os.Parcelable;
import com.yelp.android.appdata.webrequests.core.b;
import com.yelp.android.serializable.Media;
import com.yelp.android.serializable.MediaPayload;
import java.util.List;

public abstract class MediaRequest
  extends b<Void, Void, MediaPayload>
  implements Parcelable
{
  protected MediaRequest(ApiRequest.RequestType paramRequestType, String paramString, ApiRequest.b<MediaPayload> paramb)
  {
    super(paramRequestType, paramString, paramb);
  }
  
  public abstract int a(List<Media> paramList);
  
  public final boolean a(List<Media> paramList, int paramInt)
  {
    return (paramList.isEmpty()) || (a(paramList) >= paramInt);
  }
  
  public abstract MediaRequest c(int paramInt);
  
  public abstract MediaRequest d(int paramInt);
  
  public final int describeContents()
  {
    return 0;
  }
  
  public abstract MediaRequest f();
}

/* Location:
 * Qualified Name:     com.yelp.android.appdata.webrequests.MediaRequest
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */