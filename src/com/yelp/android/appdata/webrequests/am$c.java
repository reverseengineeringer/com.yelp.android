package com.yelp.android.appdata.webrequests;

import com.yelp.android.serializable.Comment;
import com.yelp.android.serializable.YelpCheckIn;

public class am$c
  extends am
{
  public am$c(ApiRequest.b<am.a> paramb, YelpCheckIn paramYelpCheckIn, Comment paramComment, String paramString)
  {
    super(ApiRequest.RequestType.POST, "check_in/save_comment", paramb);
    b("check_in_id", paramYelpCheckIn.z());
    b("text", paramString);
    if (paramComment != null) {
      b("revision", paramComment.d());
    }
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.appdata.webrequests.am.c
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */