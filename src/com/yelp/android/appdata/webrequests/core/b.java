package com.yelp.android.appdata.webrequests.core;

import android.net.Uri;
import android.os.SystemClock;
import com.yelp.android.analytics.m;
import com.yelp.android.analytics.o;
import com.yelp.android.appdata.AppData;
import com.yelp.android.appdata.BaseYelpApplication;
import com.yelp.android.appdata.experiment.TwoBucketExperiment;
import com.yelp.android.appdata.experiment.TwoBucketExperiment.Cohort;
import com.yelp.android.appdata.experiment.i;
import com.yelp.android.appdata.experiment.j;
import com.yelp.android.appdata.webrequests.ApiException;
import com.yelp.android.appdata.webrequests.ApiRequest;
import com.yelp.android.appdata.webrequests.ApiRequest.RequestType;
import com.yelp.android.appdata.webrequests.ApiRequest.b;
import com.yelp.android.appdata.webrequests.YelpException;
import com.yelp.android.services.d;
import com.yelp.android.services.h;
import com.yelp.android.util.YelpLog;
import java.net.URI;
import java.util.Iterator;
import org.apache.http.HttpResponse;
import org.apache.http.StatusLine;
import org.apache.http.client.HttpResponseException;
import org.apache.http.client.methods.HttpUriRequest;
import org.json.JSONException;
import org.json.JSONObject;

public abstract class b<Params, Progress, Result>
  extends ApiRequest<Params, Progress, Result>
{
  private String a;
  
  protected b(ApiRequest.RequestType paramRequestType, String paramString, ApiRequest.b paramb)
  {
    super(paramRequestType, paramString, AppData.b().u(), paramb);
    b();
  }
  
  private void b() {}
  
  protected void a(int paramInt, HttpUriRequest paramHttpUriRequest, HttpResponse paramHttpResponse, long paramLong1, long paramLong2)
    throws YelpException
  {
    if (paramInt != 503) {
      AppData.b().k().a(com.yelp.android.analytics.e.a(new HttpResponseException(paramInt, String.format("%s - %s ", new Object[] { paramHttpUriRequest.getURI().getPath(), paramHttpResponse.getStatusLine().getReasonPhrase() }))));
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
  
  protected void a(HttpUriRequest paramHttpUriRequest, long paramLong1, long paramLong2, long paramLong3, long paramLong4, long paramLong5)
  {
    long l = SystemClock.elapsedRealtime();
    MetricsManager localMetricsManager = AppData.b().k();
    Object localObject;
    if (paramHttpUriRequest != null)
    {
      localObject = paramHttpUriRequest.getURI().getPath();
      localMetricsManager.a(new m((String)localObject, i_(), paramLong1 - paramLong2, paramLong3 - paramLong2, paramLong4 - paramLong3, l - paramLong1, paramLong5));
      localObject = AppData.b().k();
      if (paramHttpUriRequest == null) {
        break label130;
      }
    }
    label130:
    for (paramHttpUriRequest = paramHttpUriRequest.getURI().getPath();; paramHttpUriRequest = Uri.parse(o()).getPath())
    {
      ((MetricsManager)localObject).a(new o(paramHttpUriRequest, i_()));
      AppData.b().k().b();
      return;
      localObject = Uri.parse(o()).getPath();
      break;
    }
  }
  
  protected void a(JSONException paramJSONException)
  {
    AppData.b().k().a(com.yelp.android.analytics.e.a(paramJSONException));
  }
  
  protected void a(JSONObject paramJSONObject1, JSONObject paramJSONObject2)
    throws ApiException
  {
    throw ApiException.getExceptionForCode(paramJSONObject2.optInt("code"), paramJSONObject2);
  }
  
  protected d c(String paramString)
  {
    AppData localAppData = AppData.b();
    return new h(paramString, localAppData.h(), localAppData.I());
  }
  
  public void c(String paramString, double paramDouble)
  {
    ((h)b).a(paramString, paramDouble);
  }
  
  protected void c(JSONObject paramJSONObject)
    throws YelpException
  {
    Object localObject = paramJSONObject.optJSONObject("message");
    if (localObject == null) {
      throw new YelpException(YelpException.YPErrorInvalidData);
    }
    a = ((JSONObject)localObject).optString("request_id");
    if (((JSONObject)localObject).optInt("code") == 0)
    {
      paramJSONObject = paramJSONObject.optJSONObject("relevant_experiments");
      if (paramJSONObject != null)
      {
        localObject = paramJSONObject.keys();
        while (((Iterator)localObject).hasNext())
        {
          String str = (String)((Iterator)localObject).next();
          try
          {
            j.a().a(str, paramJSONObject.getString(str));
          }
          catch (JSONException localJSONException)
          {
            YelpLog.remoteError(localJSONException);
          }
        }
      }
    }
    else
    {
      a(paramJSONObject, (JSONObject)localObject);
    }
  }
  
  public String i_()
  {
    return a;
  }
  
  protected boolean k()
  {
    return com.yelp.android.appdata.experiment.e.d.a(TwoBucketExperiment.Cohort.enabled);
  }
  
  protected String o()
  {
    return b.a();
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.appdata.webrequests.core.b
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */