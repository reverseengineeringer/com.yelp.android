package com.yelp.android.ui.activities.support;

import android.os.Bundle;
import android.support.v4.app.Fragment;
import android.support.v4.app.l;
import android.support.v4.app.o;
import com.yelp.android.appdata.webrequests.ApiRequest;
import com.yelp.android.appdata.webrequests.ApiRequest.b;
import com.yelp.android.appdata.webrequests.ApiWorkerFragment;

public class YelpApiFragment
  extends Fragment
{
  private ApiWorkerFragment a;
  
  public <Request extends ApiRequest<?, ?, Result>, Result> Request a(String paramString, Request paramRequest, ApiRequest.b<Result> paramb)
  {
    paramString = a.a(paramString, paramb);
    if (paramString != null) {
      paramRequest = paramString;
    }
    return paramRequest;
  }
  
  public <Request extends ApiRequest<?, ?, Result>, Result> void a(String paramString, Request paramRequest)
  {
    a.a(paramString, paramRequest);
  }
  
  public void onCreate(Bundle paramBundle)
  {
    super.onCreate(paramBundle);
    a = ((ApiWorkerFragment)getFragmentManager().a("TAG_API_WORKER_FRAGMENT"));
    if (a == null)
    {
      a = new ApiWorkerFragment();
      getFragmentManager().a().a(a, "TAG_API_WORKER_FRAGMENT").a();
    }
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.ui.activities.support.YelpApiFragment
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */