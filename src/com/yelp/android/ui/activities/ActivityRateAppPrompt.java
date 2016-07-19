package com.yelp.android.ui.activities;

import android.content.Context;
import android.content.Intent;
import android.graphics.drawable.AnimationDrawable;
import android.net.Uri;
import android.os.Bundle;
import android.view.Menu;
import android.view.MenuInflater;
import android.view.MenuItem;
import android.view.View;
import android.view.View.OnClickListener;
import android.widget.Button;
import android.widget.ImageView;
import com.yelp.android.analytics.iris.EventIri;
import com.yelp.android.analytics.iris.ViewIri;
import com.yelp.android.appdata.AppData;
import com.yelp.android.appdata.c;
import com.yelp.android.ui.activities.support.YelpActivity;

public class ActivityRateAppPrompt
  extends YelpActivity
{
  private ImageView a;
  private Button b;
  private Button c;
  
  public static final Intent a(Context paramContext)
  {
    return new Intent(paramContext, ActivityRateAppPrompt.class);
  }
  
  private void a()
  {
    int i = getAppData().f().t();
    getAppData().f().a(i + 10);
  }
  
  public ViewIri getIri()
  {
    return null;
  }
  
  public void onBackPressed()
  {
    super.onBackPressed();
    a();
    AppData.a(EventIri.AppRateBack);
  }
  
  protected void onCreate(Bundle paramBundle)
  {
    super.onCreate(paramBundle);
    setContentView(2130903118);
    a = ((ImageView)findViewById(2131689928));
    b = ((Button)findViewById(2131689931));
    c = ((Button)findViewById(2131689932));
    b.setOnClickListener(new View.OnClickListener()
    {
      public void onClick(View paramAnonymousView)
      {
        AppData.a(EventIri.AppRateRate);
        getAppData().f().b(true);
        startActivity(new Intent("android.intent.action.VIEW", Uri.parse("market://details?id=" + getPackageName())));
        finish();
      }
    });
    c.setOnClickListener(new View.OnClickListener()
    {
      public void onClick(View paramAnonymousView)
      {
        ActivityRateAppPrompt.a(ActivityRateAppPrompt.this);
        AppData.a(EventIri.AppRateRemind);
        finish();
      }
    });
    ((AnimationDrawable)a.getBackground()).start();
  }
  
  public boolean onCreateOptionsMenu(Menu paramMenu)
  {
    super.onCreateOptionsMenu(paramMenu);
    getMenuInflater().inflate(2131755045, paramMenu);
    return true;
  }
  
  public boolean onOptionsItemSelected(MenuItem paramMenuItem)
  {
    switch (paramMenuItem.getItemId())
    {
    default: 
      return super.onOptionsItemSelected(paramMenuItem);
    case 2131691021: 
      getAppData().f().b(true);
      AppData.a(EventIri.AppRateCancel);
      finish();
      return true;
    }
    AppData.a(EventIri.AppRateBack);
    a();
    finish();
    return true;
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.ui.activities.ActivityRateAppPrompt
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */