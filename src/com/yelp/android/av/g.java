package com.yelp.android.av;

import android.net.Uri;
import android.os.SystemClock;
import com.yelp.android.analytics.e;
import com.yelp.android.analytics.p;
import com.yelp.android.appdata.AppData;
import com.yelp.android.appdata.BaseYelpApplication;
import com.yelp.android.appdata.webrequests.ApiException;
import com.yelp.android.appdata.webrequests.ApiRequest;
import com.yelp.android.appdata.webrequests.ApiRequest.RequestType;
import com.yelp.android.appdata.webrequests.YelpException;
import com.yelp.android.appdata.webrequests.m;
import com.yelp.android.services.j;
import com.yelp.android.services.w;
import java.net.URI;
import org.apache.http.HttpResponse;
import org.apache.http.StatusLine;
import org.apache.http.client.HttpResponseException;
import org.apache.http.client.methods.HttpUriRequest;
import org.json.JSONException;
import org.json.JSONObject;

public abstract class g<Params, Progress, Result>
  extends ApiRequest<Params, Progress, Result>
{
  private String mRequestId;
  
  protected g(ApiRequest.RequestType paramRequestType, String paramString, m paramm)
  {
    super(paramRequestType, paramString, AppData.b().p(), paramm);
    addCapabilityOverridesForDebug();
  }
  
  private void addCapabilityOverridesForDebug() {}
  
  public void addObfuscatedUrlParam(String paramString, double paramDouble)
  {
    ((w)mQuery).b(paramString, paramDouble);
  }
  
  protected j getQuery(String paramString)
  {
    AppData localAppData = AppData.b();
    return new w(paramString, localAppData.h(), localAppData.x());
  }
  
  public String getRequestId()
  {
    return mRequestId;
  }
  
  protected String getUri()
  {
    return mQuery.a();
  }
  
  protected void onJSONException(JSONException paramJSONException)
  {
    AppData.b().k().a(e.a(paramJSONException));
  }
  
  protected void onProcessingStarted(JSONObject paramJSONObject)
  {
    JSONObject localJSONObject = paramJSONObject.optJSONObject("message");
    if (localJSONObject == null) {
      throw new YelpException(YelpException.YPErrorInvalidData);
    }
    mRequestId = localJSONObject.optString("request_id");
    if (localJSONObject.optInt("code") != 0) {
      processErrorMessage(paramJSONObject, localJSONObject);
    }
  }
  
  protected void onStatusCodeError(int paramInt, HttpUriRequest paramHttpUriRequest, HttpResponse paramHttpResponse)
  {
    if (paramInt != 503) {
      AppData.b().k().a(e.a(new HttpResponseException(paramInt, String.format("%s - %s ", new Object[] { paramHttpUriRequest.getURI().getPath(), paramHttpResponse.getStatusLine().getReasonPhrase() }))));
    }
    switch (paramInt)
    {
    default: 
      throw new YelpException(YelpException.YPErrorServerResponse);
    case 404: 
      throw new YelpException(YelpException.YPErrorServerResourceNotFound);
    }
    throw new YelpException(YelpException.YPErrorServerMaintenance);
  }
  
  protected void processErrorMessage(JSONObject paramJSONObject1, JSONObject paramJSONObject2)
  {
    throw ApiException.getExceptionForCode(paramJSONObject2.optInt("code"), paramJSONObject2);
  }
  
  protected void sendMetrics(HttpUriRequest paramHttpUriRequest, long paramLong1, long paramLong2, long paramLong3, long paramLong4, long paramLong5)
  {
    long l = SystemClock.elapsedRealtime();
    a locala = AppData.b().k();
    if (paramHttpUriRequest != null) {}
    for (paramHttpUriRequest = paramHttpUriRequest.getURI().getPath();; paramHttpUriRequest = Uri.parse(getUri()).getPath())
    {
      locala.a(new p(paramHttpUriRequest, getRequestId(), paramLong1 - paramLong2, paramLong3 - paramLong2, paramLong4 - paramLong3, l - paramLong1, paramLong5));
      AppData.b().k().b();
      return;
    }
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.av.g
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */