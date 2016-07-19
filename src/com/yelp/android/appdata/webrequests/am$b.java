package com.yelp.android.appdata.webrequests;

import com.yelp.android.serializable.Comment;

public class am$b
  extends am
{
  public am$b(ApiRequest.b<am.a> paramb, String paramString, Comment paramComment)
  {
    super(ApiRequest.RequestType.GET, "check_in/list_comments", paramb);
    a("check_in_id", paramString);
    if (paramComment != null) {
      a("revision", paramComment.d());
    }
    a("limit", 20);
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.appdata.webrequests.am.b
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */