package com.yelp.android.appdata.webrequests;

import com.yelp.android.serializable.UpdatePrompt;
import java.util.Map;

public final class o
{
  public final Map<String, String> a;
  public final Map<String, String> b;
  public final UpdatePrompt c;
  public final boolean d;
  
  public o(Map<String, String> paramMap1, Map<String, String> paramMap2, UpdatePrompt paramUpdatePrompt)
  {
    a = paramMap1;
    b = paramMap2;
    c = paramUpdatePrompt;
    d = Boolean.valueOf((String)paramMap1.get("show_privacy_policy_splash")).booleanValue();
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.appdata.webrequests.o
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */