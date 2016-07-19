package com.yelp.android.appdata.webrequests;

import com.yelp.android.appdata.webrequests.core.c;
import com.yelp.android.appdata.webrequests.core.c.a;

public class b
  extends c
{
  public b(String paramString, c.a parama)
  {
    this(paramString, true, parama);
  }
  
  public b(String paramString, boolean paramBoolean, c.a parama)
  {
    super(ApiRequest.RequestType.POST, "account/confirm", parama);
    b("email_id", paramString);
    b("send_welcome_email", paramBoolean);
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.appdata.webrequests.b
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */