package com.yelp.android.appdata.webrequests;

import android.content.res.Configuration;
import android.content.res.Resources;
import com.yelp.android.appdata.LocaleSettings;
import com.yelp.android.appdata.n;
import com.yelp.android.av.h;
import com.yelp.android.services.x;
import com.yelp.android.ui.activities.support.YelpActivity;
import com.yelp.android.util.l;

public class eh
  extends h
{
  public eh(YelpActivity paramYelpActivity, String paramString1, String paramString2, m<Void> paramm)
  {
    super("/bug_report/create", paramm);
    paramm = new n(paramYelpActivity, new LocaleSettings(getResourcesgetConfigurationlocale).h(), x.g());
    com.yelp.android.e.m localm = paramm.d();
    addPostParam("email", paramString2);
    addPostParam("description", paramString1);
    addPostParam("display_size", paramYelpActivity.getResources().getString(2131165709, new Object[] { a, b }));
    addPostParam("memory_size", paramm.e());
    addPostParam("free_memory_size", paramm.f());
    addPostParam("disk_space", l.a());
    addPostParam("free_disk_space", l.b());
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.appdata.webrequests.eh
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */