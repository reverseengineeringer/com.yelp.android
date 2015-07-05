package com.yelp.android.ui.activities.notifications;

import android.net.Uri;
import com.yelp.android.av.h;
import java.util.Iterator;
import java.util.Set;

public class m
  extends h
{
  private String a;
  
  public m(String paramString1, String paramString2, com.yelp.android.appdata.webrequests.m<Void> paramm)
  {
    super(paramString1, paramm);
    a = paramString2;
  }
  
  public static m a(String paramString1, com.yelp.android.appdata.webrequests.m<Void> paramm, String paramString2)
  {
    paramString1 = Uri.parse(paramString1);
    paramm = new m(paramString1.getPath(), paramString2, paramm);
    paramString2 = com.yelp.android.util.m.a(paramString1).iterator();
    while (paramString2.hasNext())
    {
      String str = (String)paramString2.next();
      paramm.addPostParam(str, paramString1.getQueryParameter(str));
    }
    return paramm;
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.ui.activities.notifications.m
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */