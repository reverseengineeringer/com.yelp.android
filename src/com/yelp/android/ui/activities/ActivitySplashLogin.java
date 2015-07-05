package com.yelp.android.ui.activities;

import android.content.Intent;
import android.os.Bundle;
import android.view.View;
import android.view.View.OnClickListener;
import com.yelp.android.analytics.iris.ViewIri;
import com.yelp.android.appdata.AppData;
import com.yelp.android.appdata.i;
import com.yelp.android.ui.activities.support.YelpActivity;

public class ActivitySplashLogin
  extends YelpActivity
{
  private View.OnClickListener a = new ea(this);
  private View.OnClickListener b = new eb(this);
  
  public ViewIri getIri()
  {
    return ViewIri.SplashScreenLogin;
  }
  
  protected void onActivityResult(int paramInt1, int paramInt2, Intent paramIntent)
  {
    super.onActivityResult(paramInt1, paramInt2, paramIntent);
    switch (paramInt1)
    {
    }
    do
    {
      return;
    } while (paramInt2 != -1);
    setResult(-1);
    finish();
  }
  
  public void onCreate(Bundle paramBundle)
  {
    super.onCreate(paramBundle);
    setContentView(2130903256);
    findViewById(2131493670).setOnClickListener(b);
    findViewById(2131493671).setOnClickListener(a);
    if (AppData.b().f().g() == 1) {
      AppData.b().f().d(true);
    }
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.ui.activities.ActivitySplashLogin
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */