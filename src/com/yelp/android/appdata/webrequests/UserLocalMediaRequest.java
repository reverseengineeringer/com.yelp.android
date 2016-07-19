package com.yelp.android.appdata.webrequests;

import android.os.Parcel;
import android.os.Parcelable.Creator;
import android.text.TextUtils;
import com.yelp.android.serializable.Media;
import com.yelp.android.serializable.Media.MediaType;
import com.yelp.android.serializable.MediaPayload;
import com.yelp.android.serializable.User;
import com.yelp.android.serializable.YelpBusiness;
import com.yelp.parcelgen.JsonParser.DualCreator;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import org.json.JSONException;
import org.json.JSONObject;

public class UserLocalMediaRequest
  extends MediaRequest
{
  public static final Parcelable.Creator<UserLocalMediaRequest> CREATOR = new Parcelable.Creator()
  {
    public UserLocalMediaRequest a(Parcel paramAnonymousParcel)
    {
      return new UserLocalMediaRequest(paramAnonymousParcel.readString(), paramAnonymousParcel.readString(), paramAnonymousParcel.readInt(), paramAnonymousParcel.readInt(), null);
    }
    
    public UserLocalMediaRequest[] a(int paramAnonymousInt)
    {
      return new UserLocalMediaRequest[paramAnonymousInt];
    }
  };
  private final String a;
  private final String g;
  private final int h;
  private int i;
  
  public UserLocalMediaRequest(User paramUser)
  {
    this(paramUser.ae(), null, 0, paramUser.n_(), null);
  }
  
  public UserLocalMediaRequest(User paramUser, YelpBusiness paramYelpBusiness, int paramInt, ApiRequest.b<MediaPayload> paramb)
  {
    this(paramUser.ae(), paramYelpBusiness.aD(), paramInt, paramUser.n_(), paramb);
  }
  
  public UserLocalMediaRequest(String paramString1, String paramString2, int paramInt1, int paramInt2, ApiRequest.b<MediaPayload> paramb)
  {
    super(ApiRequest.RequestType.GET, "user/media", paramb);
    a("user_id", paramString1);
    a("offset", paramInt1);
    a("limit", 20);
    if (!TextUtils.isEmpty(paramString2)) {
      a("business_id", paramString2);
    }
    a = paramString1;
    h = paramInt2;
    i = paramInt1;
    g = paramString2;
  }
  
  public int a(List<Media> paramList)
  {
    paramList = paramList.iterator();
    int j = 0;
    if (paramList.hasNext())
    {
      Media localMedia = (Media)paramList.next();
      if ((!localMedia.a(Media.MediaType.PHOTO)) && (!localMedia.a(Media.MediaType.VIDEO))) {
        break label61;
      }
      j += 1;
    }
    label61:
    for (;;)
    {
      break;
      return j;
    }
  }
  
  public MediaPayload a(JSONObject paramJSONObject)
    throws JSONException
  {
    paramJSONObject = (MediaPayload)MediaPayload.CREATOR.parse(paramJSONObject);
    i += paramJSONObject.c().size();
    return paramJSONObject;
  }
  
  public MediaRequest c(int paramInt)
  {
    return new UserLocalMediaRequest(a, g, paramInt, h, n());
  }
  
  public MediaRequest d(int paramInt)
  {
    a(true);
    UserLocalMediaRequest localUserLocalMediaRequest = new UserLocalMediaRequest(a, g, i, paramInt, n());
    localUserLocalMediaRequest.f(new Void[0]);
    return localUserLocalMediaRequest;
  }
  
  public MediaRequest f()
  {
    a(true);
    UserLocalMediaRequest localUserLocalMediaRequest = new UserLocalMediaRequest(a, g, i, h, n());
    localUserLocalMediaRequest.f(new Void[0]);
    return localUserLocalMediaRequest;
  }
  
  public void writeToParcel(Parcel paramParcel, int paramInt)
  {
    paramParcel.writeString(a);
    paramParcel.writeString(g);
    paramParcel.writeInt(i);
    paramParcel.writeInt(h);
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.appdata.webrequests.UserLocalMediaRequest
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */