package com.yelp.android.ui.activities;

import android.content.Intent;
import android.net.Uri;
import android.os.Bundle;
import android.text.TextUtils;
import com.yelp.android.analytics.o;
import com.yelp.android.appdata.AppData;
import com.yelp.android.av.a;
import com.yelp.android.ui.activities.deals.ActivityDealDetail;
import com.yelp.android.ui.activities.support.YelpUrlCatcherActivity;

public class ActivityDealsUrlCatcher
  extends YelpUrlCatcherActivity
{
  protected void onCreate(Bundle paramBundle)
  {
    super.onCreate(paramBundle);
    paramBundle = getIntent().getData();
    String str = paramBundle.getLastPathSegment();
    if (!TextUtils.isEmpty(str))
    {
      Intent localIntent = ActivityDealDetail.a(this, str);
      localIntent.addFlags(67108864);
      Bundle localBundle = getIntent().getExtras();
      if (localBundle != null) {
        localIntent.putExtras(localBundle);
      }
      localIntent.putExtra("yelp:external_request", true);
      localIntent.putExtra("yelp:return_to_biz_id", str);
      AppData.b().k().a(new o(paramBundle));
      startActivity(localIntent);
    }
    finish();
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.ui.activities.ActivityDealsUrlCatcher
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */