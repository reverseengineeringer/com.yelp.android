package com.yelp.android.ui.activities.urlcatcher;

import android.content.Intent;
import android.net.Uri;
import android.os.Bundle;
import android.text.TextUtils;
import com.yelp.android.analytics.n;
import com.yelp.android.appdata.AppData;
import com.yelp.android.appdata.webrequests.core.MetricsManager;
import com.yelp.android.ui.activities.deals.ActivityDealDetail;
import com.yelp.android.ui.activities.support.YelpUrlCatcherActivity;
import com.yelp.android.ui.util.ae;
import com.yelp.android.util.YelpLog;

public class ActivityDealsUrlCatcher
  extends YelpUrlCatcherActivity
{
  protected boolean a()
  {
    return false;
  }
  
  protected void onCreate(Bundle paramBundle)
  {
    super.onCreate(paramBundle);
    try
    {
      ae.a(getIntent()).a("android.intent.action.VIEW", "http", "/deals/").a();
      paramBundle = getIntent().getData();
      String str = paramBundle.getLastPathSegment();
      if (!TextUtils.isEmpty(str))
      {
        Intent localIntent = ActivityDealDetail.a(this, str);
        localIntent.addFlags(67108864);
        if (getIntent().getExtras() != null) {
          localIntent.putExtras(getIntent().getExtras());
        }
        localIntent.putExtra("yelp:external_request", true);
        localIntent.putExtra("yelp:return_to_biz_id", str);
        AppData.b().k().a(new n(paramBundle));
        startActivity(localIntent);
      }
      finish();
      return;
    }
    catch (SecurityException paramBundle)
    {
      YelpLog.remoteError(paramBundle);
      finish();
    }
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.ui.activities.urlcatcher.ActivityDealsUrlCatcher
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */