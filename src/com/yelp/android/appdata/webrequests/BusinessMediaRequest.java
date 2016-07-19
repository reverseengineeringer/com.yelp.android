package com.yelp.android.appdata.webrequests;

import android.os.Parcel;
import android.os.Parcelable.Creator;
import com.yelp.android.serializable.Media;
import com.yelp.android.serializable.MediaPayload;
import com.yelp.parcelgen.JsonParser.DualCreator;
import java.util.ArrayList;
import java.util.List;
import org.json.JSONException;
import org.json.JSONObject;

public class BusinessMediaRequest
  extends MediaRequest
{
  public static final Parcelable.Creator<BusinessMediaRequest> CREATOR = new Parcelable.Creator()
  {
    public BusinessMediaRequest a(Parcel paramAnonymousParcel)
    {
      return new BusinessMediaRequest(paramAnonymousParcel.readString(), paramAnonymousParcel.readString(), paramAnonymousParcel.readString(), paramAnonymousParcel.readString(), paramAnonymousParcel.readInt(), paramAnonymousParcel.readInt(), null, null);
    }
    
    public BusinessMediaRequest[] a(int paramAnonymousInt)
    {
      return new BusinessMediaRequest[paramAnonymousInt];
    }
  };
  private final String a;
  private final String g;
  private final int h;
  private int i;
  private String j;
  private String k;
  
  public BusinessMediaRequest(String paramString, int paramInt)
  {
    this(paramString, null, -1, paramInt, null);
  }
  
  public BusinessMediaRequest(String paramString, int paramInt1, int paramInt2)
  {
    this(paramString, "all_media", paramInt1, paramInt2, null);
  }
  
  public BusinessMediaRequest(String paramString, int paramInt1, int paramInt2, ApiRequest.b<MediaPayload> paramb)
  {
    this(paramString, "all_media", paramInt1, paramInt2, paramb);
  }
  
  public BusinessMediaRequest(String paramString, int paramInt, ApiRequest.b<MediaPayload> paramb)
  {
    this(paramString, null, -1, paramInt, paramb);
  }
  
  public BusinessMediaRequest(String paramString1, String paramString2, int paramInt1, int paramInt2, ApiRequest.b<MediaPayload> paramb)
  {
    this(paramString1, paramString2, null, null, paramInt1, paramInt2, paramb);
  }
  
  private BusinessMediaRequest(String paramString1, String paramString2, String paramString3, int paramInt)
  {
    this(paramString1, "all_media", paramString2, paramString3, -1, paramInt, null);
  }
  
  private BusinessMediaRequest(String paramString1, String paramString2, String paramString3, String paramString4, int paramInt1, int paramInt2, ApiRequest.b<MediaPayload> paramb)
  {
    super(ApiRequest.RequestType.GET, "/business/media/v2", paramb);
    a = paramString1;
    g = paramString2;
    h = Math.min(paramInt2, 50);
    i = paramInt1;
    j = paramString3;
    k = paramString4;
    a("biz_id", a);
    a("limit", h);
    e("tab", g);
    e("photo_id", j);
    e("video_id", k);
    if (i != -1) {
      a("offset", i);
    }
  }
  
  public static BusinessMediaRequest a(String paramString1, String paramString2, int paramInt)
  {
    return new BusinessMediaRequest(paramString1, paramString2, null, paramInt);
  }
  
  public static BusinessMediaRequest c(String paramString1, String paramString2)
  {
    return new BusinessMediaRequest(paramString1, null, paramString2, 1);
  }
  
  public static BusinessMediaRequest d(String paramString1, String paramString2)
  {
    return a(paramString1, paramString2, 1);
  }
  
  private void e(String paramString1, String paramString2)
  {
    if (paramString2 != null) {
      a(paramString1, paramString2);
    }
  }
  
  public int a(List<Media> paramList)
  {
    return paramList.size();
  }
  
  public BusinessMediaRequest a(int paramInt)
  {
    a(true);
    BusinessMediaRequest localBusinessMediaRequest = new BusinessMediaRequest(a, g, i, paramInt, n());
    localBusinessMediaRequest.f(new Void[0]);
    return localBusinessMediaRequest;
  }
  
  public MediaPayload a(JSONObject paramJSONObject)
    throws JSONException
  {
    paramJSONObject = (MediaPayload)MediaPayload.CREATOR.parse(paramJSONObject);
    if (g != null)
    {
      i += paramJSONObject.c(g).size();
      return paramJSONObject;
    }
    i += paramJSONObject.a();
    return paramJSONObject;
  }
  
  public BusinessMediaRequest b()
  {
    a(true);
    BusinessMediaRequest localBusinessMediaRequest = new BusinessMediaRequest(a, g, j, k, i, h, n());
    localBusinessMediaRequest.f(new Void[0]);
    return localBusinessMediaRequest;
  }
  
  public BusinessMediaRequest b(int paramInt)
  {
    if ((j == null) && (k == null)) {
      return new BusinessMediaRequest(a, g, paramInt, h, n());
    }
    return this;
  }
  
  public String d()
  {
    return a;
  }
  
  public void writeToParcel(Parcel paramParcel, int paramInt)
  {
    paramParcel.writeString(a);
    paramParcel.writeString(g);
    paramParcel.writeString(j);
    paramParcel.writeString(k);
    paramParcel.writeInt(i);
    paramParcel.writeInt(h);
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.appdata.webrequests.BusinessMediaRequest
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */