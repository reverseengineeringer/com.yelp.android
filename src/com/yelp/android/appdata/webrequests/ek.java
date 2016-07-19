package com.yelp.android.appdata.webrequests;

import com.yelp.android.appdata.webrequests.core.c;
import com.yelp.android.appdata.webrequests.core.c.a;

public class ek
  extends c
{
  private String a;
  private boolean g;
  
  public ek(String paramString, boolean paramBoolean)
  {
    this(paramString, paramBoolean, null);
  }
  
  public ek(String paramString, boolean paramBoolean, c.a parama)
  {
    super("check_in/save_feedback", parama);
    if (paramBoolean) {}
    for (parama = "POSITIVE";; parama = "NONE")
    {
      b("feedback", parama);
      b("check_in_id", paramString);
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
 * Qualified Name:     com.yelp.android.appdata.webrequests.ek
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */