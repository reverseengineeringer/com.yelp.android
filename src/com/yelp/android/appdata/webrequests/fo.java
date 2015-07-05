package com.yelp.android.appdata.webrequests;

import com.yelp.android.av.h;
import com.yelp.android.av.i;

public class fo
  extends h
{
  public fo(String paramString, boolean paramBoolean)
  {
    this(paramString, paramBoolean, null);
  }
  
  public fo(String paramString, boolean paramBoolean, i parami)
  {
    super("check_in/save_feedback", parami);
    if (paramBoolean) {}
    for (parami = "POSITIVE";; parami = "NONE")
    {
      addPostParam("feedback", parami);
      addPostParam("check_in_id", paramString);
      return;
    }
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.appdata.webrequests.fo
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */