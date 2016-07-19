package com.yelp.android.ui.activities;

import android.content.Context;
import android.content.Intent;
import android.os.Bundle;
import android.util.Patterns;
import android.view.Menu;
import android.view.MenuInflater;
import android.view.MenuItem;
import android.widget.EditText;
import com.yelp.android.analytics.iris.EventIri;
import com.yelp.android.analytics.iris.ViewIri;
import com.yelp.android.appdata.AppData;
import com.yelp.android.appdata.webrequests.ApiRequest;
import com.yelp.android.appdata.webrequests.YelpException;
import com.yelp.android.appdata.webrequests.co;
import com.yelp.android.appdata.webrequests.core.c.a;
import com.yelp.android.appdata.webrequests.ex;
import com.yelp.android.ui.activities.support.YelpActivity;
import com.yelp.android.ui.util.as;
import com.yelp.android.util.StringUtils;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

public class ActivityChangePrimaryEmail
  extends YelpActivity
{
  private co a;
  private EditText b;
  private ex c;
  private final c.a d = new c.a()
  {
    public void a(ApiRequest paramAnonymousApiRequest, Void paramAnonymousVoid)
    {
      hideLoadingDialog();
      setResult(-1);
      ActivityChangePrimaryEmail.b(ActivityChangePrimaryEmail.this).b(ActivityChangePrimaryEmail.a(ActivityChangePrimaryEmail.this).b());
      finish();
    }
    
    public void onError(ApiRequest paramAnonymousApiRequest, YelpException paramAnonymousYelpException)
    {
      hideLoadingDialog();
      as.a(paramAnonymousYelpException.getMessageResource(), 1);
    }
  };
  
  public static Intent a(Context paramContext)
  {
    return new Intent(paramContext, ActivityChangePrimaryEmail.class);
  }
  
  private void a()
  {
    String str = b.getText().toString().trim();
    if (StringUtils.d(str))
    {
      AppData.a(EventIri.UpdatePrimaryEmail, "is_email_changed", Boolean.valueOf(false));
      as.a(AppData.b().getString(2131165845), 1);
    }
    do
    {
      return;
      if (!Patterns.EMAIL_ADDRESS.matcher(str).matches())
      {
        AppData.a(EventIri.UpdatePrimaryEmail, "is_email_changed", Boolean.valueOf(false));
        as.a(AppData.b().getString(2131165836), 1);
        return;
      }
      if (str.equalsIgnoreCase(a.i()))
      {
        AppData.a(EventIri.UpdatePrimaryEmail, "is_email_changed", Boolean.valueOf(false));
        setResult(0);
        finish();
        return;
      }
      if ((c != null) && (c.u()) && (!str.equalsIgnoreCase(c.b()))) {
        c.a(true);
      }
    } while ((c != null) && (c.u()));
    c = new ex(str, d);
    c.f(new Void[0]);
    showLoadingDialog(c);
    AppData.a(EventIri.UpdatePrimaryEmail, "is_email_changed", Boolean.valueOf(true));
  }
  
  public ViewIri getIri()
  {
    return ViewIri.ChangePrimaryEmail;
  }
  
  public void onBackPressed()
  {
    super.onBackPressed();
  }
  
  public void onCreate(Bundle paramBundle)
  {
    super.onCreate(paramBundle);
    setContentView(2130903076);
    a = AppData.b().q();
    b = ((EditText)findViewById(2131689746));
    b.setText(a.i());
  }
  
  public boolean onCreateOptionsMenu(Menu paramMenu)
  {
    super.onCreateOptionsMenu(paramMenu);
    getMenuInflater().inflate(2131755021, paramMenu);
    return true;
  }
  
  public void onNewIntent(Intent paramIntent)
  {
    b.setText(a.i());
  }
  
  public boolean onOptionsItemSelected(MenuItem paramMenuItem)
  {
    switch (paramMenuItem.getItemId())
    {
    default: 
      return super.onOptionsItemSelected(paramMenuItem);
    }
    a();
    return true;
  }
  
  public void onPause()
  {
    super.onPause();
    freezeRequest("change_email_request", c);
  }
  
  public void onResume()
  {
    super.onResume();
    c = ((ex)thawRequest("change_email_request", null, d));
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.ui.activities.ActivityChangePrimaryEmail
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */