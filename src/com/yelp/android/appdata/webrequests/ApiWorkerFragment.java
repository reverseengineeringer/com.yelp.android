package com.yelp.android.appdata.webrequests;

import android.os.Bundle;
import android.support.v4.app.Fragment;
import java.util.HashMap;
import java.util.Map;

public class ApiWorkerFragment
  extends Fragment
{
  protected Map<String, dn<?, ?, ?>> a = new HashMap();
  
  public <Request extends ApiRequest<?, ?, Result>, Result> Request a(String paramString, ApiRequest.b<Result> paramb)
  {
    paramString = (dm)a.remove(paramString);
    if (paramString == null) {
      return null;
    }
    return paramString.a(paramb);
  }
  
  public <Request extends ApiRequest<?, ?, Result>, Result> void a(String paramString, Request paramRequest)
  {
    if (b(paramString, paramRequest)) {
      a.put(paramString, new dm(paramRequest));
    }
  }
  
  protected boolean b(String paramString, ApiRequest<?, ?, ?> paramApiRequest)
  {
    return (paramString != null) && (paramApiRequest != null) && (!paramApiRequest.v());
  }
  
  public void onCreate(Bundle paramBundle)
  {
    super.onCreate(paramBundle);
    setRetainInstance(true);
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.appdata.webrequests.ApiWorkerFragment
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */