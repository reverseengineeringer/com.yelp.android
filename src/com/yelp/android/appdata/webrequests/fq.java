package com.yelp.android.appdata.webrequests;

import com.yelp.android.av.h;
import com.yelp.android.av.i;

public class fq
  extends h
{
  private final String a;
  private final boolean b;
  
  public fq(String paramString, boolean paramBoolean)
  {
    this(paramString, paramBoolean, null);
  }
  
  public fq(String paramString, boolean paramBoolean, i parami)
  {
    super("quicktips/save_feedback", parami);
    addPostParam("quicktip_id", paramString);
    if (paramBoolean) {}
    for (parami = "POSITIVE";; parami = "NONE")
    {
      addPostParam("feedback", parami);
      a = paramString;
      b = paramBoolean;
      return;
    }
  }
  
  public String a()
  {
    return a;
  }
  
  public boolean b()
  {
    return b;
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.appdata.webrequests.fq
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */