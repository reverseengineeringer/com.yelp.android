package com.yelp.android.appdata.webrequests;

import com.yelp.android.appdata.webrequests.core.c;
import com.yelp.android.appdata.webrequests.core.c.a;
import com.yelp.android.serializable.Photo;

public class eh
  extends c
{
  private final String a;
  private final boolean g;
  
  public eh(Photo paramPhoto, boolean paramBoolean, c.a parama)
  {
    super("business/photos/save_feedback", parama);
    a = paramPhoto.a();
    g = paramBoolean;
    b("photo_id", a);
    if (paramBoolean) {}
    for (paramPhoto = "POSITIVE";; paramPhoto = "NONE")
    {
      b("feedback", paramPhoto);
      return;
    }
  }
  
  public String b()
  {
    return a;
  }
  
  public boolean d()
  {
    return g;
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.appdata.webrequests.eh
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */