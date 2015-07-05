package com.yelp.android.appdata.webrequests;

import com.yelp.android.av.h;
import com.yelp.android.serializable.Photo;

public class fm
  extends h
{
  public fm(Photo paramPhoto, boolean paramBoolean)
  {
    super("business/photos/save_feedback", null);
    addPostParam("photo_id", paramPhoto.getId());
    if (paramBoolean) {}
    for (paramPhoto = "POSITIVE";; paramPhoto = "NONE")
    {
      addPostParam("feedback", paramPhoto);
      return;
    }
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.appdata.webrequests.fm
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */