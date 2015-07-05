package com.yelp.android.appdata.webrequests;

import com.yelp.android.serializable.Comment;
import com.yelp.android.serializable.YelpCheckIn;

public class ap
  extends am
{
  public ap(m<an> paramm, YelpCheckIn paramYelpCheckIn, Comment paramComment, String paramString)
  {
    super(ApiRequest.RequestType.POST, "check_in/save_comment", paramm);
    addPostParam("check_in_id", paramYelpCheckIn.getId());
    addPostParam("text", paramString);
    if (paramComment != null) {
      addPostParam("revision", paramComment.getId());
    }
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.appdata.webrequests.ap
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */