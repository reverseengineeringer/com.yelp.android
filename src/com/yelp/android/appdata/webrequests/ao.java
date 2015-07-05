package com.yelp.android.appdata.webrequests;

import com.yelp.android.serializable.Comment;

public class ao
  extends am
{
  public ao(m<an> paramm, String paramString, Comment paramComment)
  {
    super(ApiRequest.RequestType.GET, "check_in/list_comments", paramm);
    addUrlParam("check_in_id", paramString);
    if (paramComment != null) {
      addUrlParam("revision", paramComment.getId());
    }
    addUrlParam("limit", 20);
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.appdata.webrequests.ao
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */