package com.yelp.android.appdata.webrequests;

import com.yelp.android.av.h;
import java.util.ArrayList;

public class gk
  extends h
{
  public gk(m<Void> paramm, String paramString, ArrayList<String> paramArrayList)
  {
    super("user/alerts/clear", null);
    paramm = new ArrayList(paramArrayList.size());
    int i = 0;
    while (i < paramArrayList.size())
    {
      paramm.add(paramString + ":" + (String)paramArrayList.get(i));
      i += 1;
    }
    addPostParam("alert_ids", paramm);
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.appdata.webrequests.gk
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */