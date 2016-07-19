package com.yelp.android.ui;

import android.app.Activity;
import android.os.Bundle;
import com.yelp.android.analytics.i;
import com.yelp.android.analytics.iris.KahunaEventIri;
import com.yelp.android.appdata.AppData;
import com.yelp.android.services.push.SendKahunaNotificationService;

public class KahunaNotificationCatcherActivity
  extends Activity
{
  protected void onCreate(Bundle paramBundle)
  {
    super.onCreate(paramBundle);
    AppData.b().m().a(KahunaEventIri.NotificationOpen);
    startActivity(SendKahunaNotificationService.a(getIntent()));
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.ui.KahunaNotificationCatcherActivity
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */