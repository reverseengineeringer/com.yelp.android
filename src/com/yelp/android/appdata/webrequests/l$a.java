package com.yelp.android.appdata.webrequests;

import com.yelp.android.serializable.UpdatePrompt;
import java.util.Map;

public final class l$a
{
  public final Map<String, String> a;
  public final Map<String, String> b;
  public final UpdatePrompt c;
  public final String d;
  public final boolean e;
  public final int f;
  
  public l$a(Map<String, String> paramMap1, Map<String, String> paramMap2, UpdatePrompt paramUpdatePrompt, int paramInt, String paramString)
  {
    a = paramMap1;
    b = paramMap2;
    c = paramUpdatePrompt;
    e = Boolean.valueOf((String)paramMap1.get("show_privacy_policy_splash")).booleanValue();
    f = paramInt;
    d = paramString;
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.appdata.webrequests.l.a
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */