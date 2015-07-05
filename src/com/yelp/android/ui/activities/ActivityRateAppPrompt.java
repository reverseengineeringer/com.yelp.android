package com.yelp.android.ui.activities;

import android.content.Context;
import android.content.Intent;
import android.graphics.drawable.AnimationDrawable;
import android.os.Bundle;
import android.view.Menu;
import android.view.MenuInflater;
import android.view.MenuItem;
import android.widget.Button;
import android.widget.ImageView;
import com.yelp.android.analytics.iris.AutoIri;
import com.yelp.android.analytics.iris.ViewIri;
import com.yelp.android.appdata.AppData;
import com.yelp.android.appdata.i;
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
    int i = getAppData().f().n();
    getAppData().f().a(i + 3);
  }
  
  public ViewIri getIri()
  {
    return null;
  }
  
  public void onBackPressed()
  {
    super.onBackPressed();
    a();
    AppData.a(AutoIri.AppRateBack);
  }
  
  protected void onCreate(Bundle paramBundle)
  {
    super.onCreate(paramBundle);
    setContentView(2130903107);
    a = ((ImageView)findViewById(2131493271));
    b = ((Button)findViewById(2131493274));
    c = ((Button)findViewById(2131493275));
    b.setOnClickListener(new dm(this));
    c.setOnClickListener(new dn(this));
    ((AnimationDrawable)a.getBackground()).start();
  }
  
  public boolean onCreateOptionsMenu(Menu paramMenu)
  {
    super.onCreateOptionsMenu(paramMenu);
    getMenuInflater().inflate(2131755040, paramMenu);
    return true;
  }
  
  public boolean onOptionsItemSelected(MenuItem paramMenuItem)
  {
    switch (paramMenuItem.getItemId())
    {
    default: 
      return super.onOptionsItemSelected(paramMenuItem);
    case 2131494148: 
      getAppData().f().b(true);
      AppData.a(AutoIri.AppRateCancel);
      finish();
      return true;
    }
    AppData.a(AutoIri.AppRateBack);
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