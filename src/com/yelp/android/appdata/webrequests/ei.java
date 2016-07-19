package com.yelp.android.appdata.webrequests;

import com.yelp.android.appdata.webrequests.core.c;
import com.yelp.android.serializable.Media;

public class ei
  extends c
{
  public ei(Media paramMedia)
  {
    super("/business/photos/save_vote", null);
    b("photo_id", paramMedia.a());
    b("vote", "not_helpful");
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.appdata.webrequests.ei
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */