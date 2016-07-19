package com.yelp.android.appdata.webrequests;

import android.content.res.Resources;
import com.yelp.android.appdata.AppData;
import com.yelp.android.appdata.f;
import com.yelp.android.appdata.webrequests.core.c;
import com.yelp.android.g.g;
import com.yelp.android.ui.activities.support.YelpActivity;
import com.yelp.android.util.e;

public class dl
  extends c
{
  public dl(YelpActivity paramYelpActivity, String paramString1, String paramString2, ApiRequest.b<Void> paramb)
  {
    super("/bug_report/create", paramb);
    paramb = AppData.b().h();
    g localg = paramb.d();
    b("email", paramString2);
    b("description", paramString1);
    b("display_size", paramYelpActivity.getResources().getString(2131166941, new Object[] { a, b }));
    b("memory_size", paramb.e());
    b("free_memory_size", paramb.f());
    b("disk_space", e.a());
    b("free_disk_space", e.b());
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.appdata.webrequests.dl
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */