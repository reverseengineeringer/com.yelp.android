package com.yelp.android.aw;

import com.yelp.android.appdata.webrequests.ApiRequest.RequestType;
import com.yelp.android.appdata.webrequests.m;

public class i
  extends f
{
  public i(String paramString1, String paramString2, String paramString3, m<h> paramm)
  {
    super(ApiRequest.RequestType.POST, "talk/message/save", paramm);
    addPostParam("topic_id", paramString1);
    addPostParam("text", paramString2);
    addPostParam("revision", paramString3);
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.aw.i
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */