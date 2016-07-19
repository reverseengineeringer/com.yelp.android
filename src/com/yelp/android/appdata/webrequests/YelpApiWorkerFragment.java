package com.yelp.android.appdata.webrequests;

import java.util.Map;

public class YelpApiWorkerFragment
  extends ApiWorkerFragment
{
  public <Request extends k<?, ?, Result>, Result> Request a(String paramString, k.b<Result> paramb)
  {
    paramString = (cm)a.remove(paramString);
    if (paramString == null) {
      return null;
    }
    return paramString.a(paramb);
  }
  
  public <Request extends k<?, ?, Result>, Result> void a(String paramString, Request paramRequest)
  {
    if (b(paramString, paramRequest)) {
      a.put(paramString, new cm(paramRequest));
    }
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.appdata.webrequests.YelpApiWorkerFragment
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */