package com.yelp.android.appdata.webrequests;

import android.net.Uri;
import com.yelp.android.av.h;

public class fu
  extends h
{
  public fu(String paramString1, Uri paramUri, String paramString2)
  {
    super("search/feedback", null);
    addPostParam("request_id", paramString1);
    addPostParam("uri", String.valueOf(paramUri));
    addPostParam("comment", paramString2);
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.appdata.webrequests.fu
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */