package com.yelp.android.ui.activities;

import android.content.Intent;
import android.net.Uri;
import android.os.Bundle;
import android.text.TextUtils;
import com.yelp.android.analytics.o;
import com.yelp.android.appdata.AppData;
import com.yelp.android.av.a;
import com.yelp.android.ui.activities.reviews.ActivityReviewWrite;
import com.yelp.android.ui.activities.reviews.ReviewSource;
import com.yelp.android.ui.activities.support.YelpUrlCatcherActivity;

public class ActivityWriteReviewUrlCatcher
  extends YelpUrlCatcherActivity
{
  public void onCreate(Bundle paramBundle)
  {
    super.onCreate(paramBundle);
    paramBundle = getIntent().getData();
    Object localObject = paramBundle.getLastPathSegment();
    if (!TextUtils.isEmpty((CharSequence)localObject))
    {
      localObject = ActivityReviewWrite.a(this, (String)localObject, ReviewSource.FromWebsite);
      ((Intent)localObject).putExtra("yelp:external_request", true);
      ((Intent)localObject).addFlags(67108864);
      ((Intent)localObject).setData(paramBundle);
      AppData.b().k().a(new o(paramBundle));
      startActivity((Intent)localObject);
    }
    finish();
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.ui.activities.ActivityWriteReviewUrlCatcher
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */