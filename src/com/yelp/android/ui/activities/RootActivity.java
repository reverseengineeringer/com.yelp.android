package com.yelp.android.ui.activities;

import android.app.Activity;
import android.content.Intent;
import android.os.Bundle;
import com.kahuna.sdk.h;
import com.kahuna.sdk.j;
import com.yelp.android.analytics.i;
import com.yelp.android.analytics.iris.EventIri;
import com.yelp.android.analytics.iris.KahunaEventIri;
import com.yelp.android.appdata.AppData;
import com.yelp.android.appdata.PermissionGroup;
import com.yelp.android.appdata.c;
import com.yelp.android.appdata.experiment.BackgroundLocationExperiment;
import com.yelp.android.appdata.experiment.BackgroundLocationExperiment.Cohort;
import com.yelp.android.appdata.experiment.OnboardingExperiment;
import com.yelp.android.appdata.experiment.OnboardingExperiment.Cohort;
import com.yelp.android.appdata.experiment.e;
import com.yelp.android.appdata.f;
import com.yelp.android.appdata.k;
import com.yelp.android.appdata.webrequests.co;
import com.yelp.android.appdata.webrequests.core.MetricsManager;
import com.yelp.android.ui.activities.animatedonboarding.ActivityAnimatedOnboarding;
import com.yelp.android.ui.activities.backgroundlocation.ActivityBackgroundLocationOptIn;
import com.yelp.android.ui.activities.nearby.ActivityNearby;

public class RootActivity
  extends Activity
{
  private void a()
  {
    if ((e.s.a(OnboardingExperiment.Cohort.status_quo_illustration_guide)) || (e.s.a(OnboardingExperiment.Cohort.illustration_splash))) {}
    for (Intent localIntent = ActivitySplashLogin.a(this);; localIntent = ActivityAnimatedOnboarding.a(this))
    {
      startActivityForResult(localIntent, 1057);
      return;
    }
  }
  
  private void b()
  {
    startActivity(ActivityNearby.b(this));
    finish();
  }
  
  protected void onActivityResult(int paramInt1, int paramInt2, Intent paramIntent)
  {
    super.onActivityResult(paramInt1, paramInt2, paramIntent);
    switch (paramInt1)
    {
    default: 
      return;
    case 1057: 
      if (paramInt2 == -1) {
        b();
      }
      for (;;)
      {
        AppData.a(EventIri.OnboardingCompleted);
        AppData.b().m().a(KahunaEventIri.OnboardingCompleted);
        return;
        if (paramInt2 == 0) {
          finish();
        }
      }
    }
    if (paramInt2 == -1)
    {
      a();
      return;
    }
    finish();
  }
  
  protected void onCreate(Bundle paramBundle)
  {
    super.onCreate(paramBundle);
    paramBundle = AppData.b();
    c localc = paramBundle.f();
    co localco = paramBundle.q();
    if (bolts.a.a(this, getIntent()) != null) {
      paramBundle.k().a("yelp:///fb_app_link?utm_source=app_link");
    }
    if ((localc.i() > 1) || (localco.b())) {
      localc.k(true);
    }
    if (!AppData.b().f().ad())
    {
      boolean bool;
      if (f.a(23)) {
        if (AppData.b().f().n())
        {
          bool = k.a(this, LOCATIONpermissions);
          if (!bool) {
            break label149;
          }
          startActivityForResult(ActivityOnboardingLocationPermission.a(this), 1030);
        }
      }
      for (;;)
      {
        AppData.a(EventIri.OnboardingBegan);
        AppData.b().m().a(KahunaEventIri.OnboardingBegan);
        return;
        bool = k.b(this, PermissionGroup.LOCATION);
        break;
        label149:
        a();
        continue;
        a();
      }
    }
    if ((!localc.o()) && (!paramBundle.s().d()) && (localc.i() > 1) && (j.i().f()) && (e.k.a(BackgroundLocationExperiment.Cohort.enabled_opt_in)))
    {
      startActivity(new Intent(this, ActivityBackgroundLocationOptIn.class));
      localc.p();
      finish();
      return;
    }
    b();
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.ui.activities.RootActivity
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */