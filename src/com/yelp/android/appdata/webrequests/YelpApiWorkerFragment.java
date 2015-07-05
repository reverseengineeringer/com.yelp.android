package com.yelp.android.appdata.webrequests;

import java.util.Map;

public class YelpApiWorkerFragment
  extends ApiWorkerFragment
{
  public <Request extends h<?, ?, Result>, Result> Request a(String paramString, j<Result> paramj)
  {
    paramString = (cz)a.remove(paramString);
    if (paramString == null) {
      return null;
    }
    return paramString.a(paramj);
  }
  
  public <Request extends h<?, ?, Result>, Result> void a(String paramString, Request paramRequest)
  {
    a(paramString, paramRequest, true);
  }
  
  public <Request extends h<?, ?, Result>, Result> void a(String paramString, Request paramRequest, boolean paramBoolean)
  {
    if (b(paramString, paramRequest)) {
      a.put(paramString, new cz(paramRequest, paramBoolean));
    }
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.appdata.webrequests.YelpApiWorkerFragment
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */