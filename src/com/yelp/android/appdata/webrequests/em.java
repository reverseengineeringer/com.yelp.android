package com.yelp.android.appdata.webrequests;

import com.yelp.android.appdata.webrequests.core.c;
import com.yelp.android.appdata.webrequests.core.c.a;

public class em
  extends c
{
  private final String a;
  private final boolean g;
  
  public em(String paramString, boolean paramBoolean)
  {
    this(paramString, paramBoolean, null);
  }
  
  public em(String paramString, boolean paramBoolean, c.a parama)
  {
    super("quicktips/save_feedback", parama);
    b("quicktip_id", paramString);
    if (paramBoolean) {}
    for (parama = "POSITIVE";; parama = "NONE")
    {
      b("feedback", parama);
      a = paramString;
      g = paramBoolean;
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
 * Qualified Name:     com.yelp.android.appdata.webrequests.em
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */