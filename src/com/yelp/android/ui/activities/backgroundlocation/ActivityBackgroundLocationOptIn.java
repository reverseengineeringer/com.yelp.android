package com.yelp.android.ui.activities.backgroundlocation;

import android.content.SharedPreferences;
import android.content.SharedPreferences.Editor;
import android.os.Bundle;
import android.preference.PreferenceManager;
import android.view.View;
import android.view.View.OnClickListener;
import com.yelp.android.analytics.iris.EventIri;
import com.yelp.android.analytics.iris.ViewIri;
import com.yelp.android.appdata.ApiPreferences;
import com.yelp.android.appdata.ApiPreferences.DeviceAwarePreference;
import com.yelp.android.appdata.AppData;
import com.yelp.android.appdata.webrequests.co;
import com.yelp.android.services.backgroundlocation.a;
import com.yelp.android.ui.activities.nearby.ActivityNearby;
import com.yelp.android.ui.activities.support.YelpActivity;

public class ActivityBackgroundLocationOptIn
  extends YelpActivity
{
  private void a()
  {
    startActivity(ActivityNearby.b(this));
    finish();
  }
  
  public ViewIri getIri()
  {
    return ViewIri.BackgroundLocationOptIn;
  }
  
  public void onBackPressed()
  {
    super.onBackPressed();
    AppData.a(EventIri.BackgroundLocationOptInNo);
    a();
  }
  
  protected void onCreate(Bundle paramBundle)
  {
    super.onCreate(paramBundle);
    setContentView(2130903070);
    findViewById(2131689713).setOnClickListener(new View.OnClickListener()
    {
      public void onClick(View paramAnonymousView)
      {
        AppData.a(EventIri.BackgroundLocationOptInYes);
        if (AppData.b().q().b()) {
          AppData.b().o().a(REPORT_BACKGROUND_LOCATIONapiKey, true);
        }
        PreferenceManager.getDefaultSharedPreferences(ActivityBackgroundLocationOptIn.this).edit().putBoolean(getString(2131166959), true).commit();
        AppData.b().s().a();
        ActivityBackgroundLocationOptIn.a(ActivityBackgroundLocationOptIn.this);
      }
    });
    findViewById(2131689712).setOnClickListener(new View.OnClickListener()
    {
      public void onClick(View paramAnonymousView)
      {
        AppData.a(EventIri.BackgroundLocationOptInNo);
        ActivityBackgroundLocationOptIn.a(ActivityBackgroundLocationOptIn.this);
      }
    });
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.ui.activities.backgroundlocation.ActivityBackgroundLocationOptIn
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */