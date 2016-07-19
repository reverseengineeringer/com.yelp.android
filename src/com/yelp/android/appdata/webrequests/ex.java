package com.yelp.android.appdata.webrequests;

import com.yelp.android.appdata.webrequests.core.c;
import com.yelp.android.appdata.webrequests.core.c.a;

public class ex
  extends c
{
  private final String a;
  
  public ex(String paramString, c.a parama)
  {
    super(ApiRequest.RequestType.POST, "account/update_primary_email", parama);
    b("email", paramString);
    a = paramString;
  }
  
  public String b()
  {
    return a;
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.appdata.webrequests.ex
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */