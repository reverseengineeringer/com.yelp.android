package com.yelp.android.ui.activities;

import android.content.Context;
import android.content.DialogInterface;
import android.content.DialogInterface.OnDismissListener;
import android.content.Intent;
import android.os.Bundle;
import android.os.Handler;
import android.view.MenuItem;
import android.view.View;
import android.view.View.OnClickListener;
import android.widget.Button;
import android.widget.ScrollView;
import android.widget.TextView;
import com.yelp.android.analytics.iris.EventIri;
import com.yelp.android.analytics.iris.ViewIri;
import com.yelp.android.appdata.AppData;
import com.yelp.android.appdata.webrequests.ApiException;
import com.yelp.android.appdata.webrequests.ApiRequest;
import com.yelp.android.appdata.webrequests.ApiRequest.b;
import com.yelp.android.appdata.webrequests.YelpException;
import com.yelp.android.appdata.webrequests.b;
import com.yelp.android.appdata.webrequests.c;
import com.yelp.android.appdata.webrequests.co;
import com.yelp.android.appdata.webrequests.core.c.a;
import com.yelp.android.appdata.webrequests.do;
import com.yelp.android.ui.activities.nearby.ActivityNearby;
import com.yelp.android.ui.activities.support.YelpActivity;
import com.yelp.android.ui.dialogs.AccountConfirmedDialog;
import com.yelp.android.ui.util.ar;
import com.yelp.android.ui.util.as;
import com.yelp.android.ui.util.av;
import com.yelp.android.util.YelpLog;

public class ActivityConfirmAccount
  extends YelpActivity
{
  private static int a;
  private co b;
  private ScrollView c;
  private TextView d;
  private TextView e;
  private TextView f;
  private TextView g;
  private Button h;
  private Button i;
  private Handler j = new Handler();
  private String k;
  private Intent l;
  private boolean m;
  private do n;
  private c o;
  private b p;
  private final View.OnClickListener q = new View.OnClickListener()
  {
    public void onClick(View paramAnonymousView)
    {
      ActivityConfirmAccount.a(ActivityConfirmAccount.this);
    }
  };
  private final View.OnClickListener r = new View.OnClickListener()
  {
    public void onClick(View paramAnonymousView)
    {
      startActivityForResult(ActivityChangePrimaryEmail.a(ActivityConfirmAccount.this), 1011);
      AppData.a(EventIri.ConfirmEmailEditPrimaryEmail);
    }
  };
  private final ApiRequest.b<String> s = new ApiRequest.b()
  {
    public void a(ApiRequest<?, ?, ?> paramAnonymousApiRequest, String paramAnonymousString)
    {
      hideLoadingDialog();
      ActivityConfirmAccount.a(ActivityConfirmAccount.this, paramAnonymousString);
    }
    
    public void onError(ApiRequest<?, ?, ?> paramAnonymousApiRequest, YelpException paramAnonymousYelpException)
    {
      hideLoadingDialog();
      as.a(AppData.b().getString(2131166740), 1);
    }
  };
  private final ApiRequest.b<Boolean> t = new ApiRequest.b()
  {
    public void a(ApiRequest paramAnonymousApiRequest, Boolean paramAnonymousBoolean)
    {
      hideLoadingDialog();
      if (paramAnonymousBoolean.booleanValue())
      {
        AppData.b().q().a(true);
        AppData.a(EventIri.ConfirmEmailDetectedConfirmed);
        if (ActivityConfirmAccount.b(ActivityConfirmAccount.this) != null) {
          startActivity(ActivityConfirmAccount.b(ActivityConfirmAccount.this));
        }
        paramAnonymousApiRequest = (Intent)getIntent().getParcelableExtra("embedded_intent_data");
        setResult(-1, paramAnonymousApiRequest);
        finish();
      }
    }
    
    public void onError(ApiRequest paramAnonymousApiRequest, YelpException paramAnonymousYelpException)
    {
      hideLoadingDialog();
      YelpLog.remoteError(this, "Error checking email confirmation.");
    }
  };
  private final c.a u = new c.a()
  {
    public void a(ApiRequest<?, ?, ?> paramAnonymousApiRequest, Void paramAnonymousVoid)
    {
      hideLoadingDialog();
      AppData.b().q().a(true);
      paramAnonymousApiRequest = AccountConfirmedDialog.a();
      paramAnonymousApiRequest.show(getSupportFragmentManager(), "account_confirmed_dialog");
      paramAnonymousApiRequest.a(new DialogInterface.OnDismissListener()
      {
        public void onDismiss(DialogInterface paramAnonymous2DialogInterface)
        {
          if (ActivityConfirmAccount.b(ActivityConfirmAccount.this) != null) {
            startActivity(ActivityConfirmAccount.b(ActivityConfirmAccount.this).setFlags(67174400));
          }
          for (;;)
          {
            finish();
            return;
            if (isTaskRoot()) {
              startActivity(ActivityNearby.b(AppData.b()).setFlags(67174400));
            }
          }
        }
      });
    }
    
    public void onError(ApiRequest<?, ?, ?> paramAnonymousApiRequest, YelpException paramAnonymousYelpException)
    {
      hideLoadingDialog();
      if (((paramAnonymousYelpException instanceof ApiException)) && (((ApiException)paramAnonymousYelpException).getResultCode() == 402)) {
        a(null, null);
      }
      while (((paramAnonymousYelpException instanceof ApiException)) && (((ApiException)paramAnonymousYelpException).getResultCode() == 404) && (getIntent().getBooleanExtra("just_logged_in", false))) {
        return;
      }
      ActivityConfirmAccount.c(ActivityConfirmAccount.this);
    }
  };
  private Runnable v = new Runnable()
  {
    public void run()
    {
      av.c(ActivityConfirmAccount.d(ActivityConfirmAccount.this), ActivityConfirmAccount.a());
      av.b(ActivityConfirmAccount.e(ActivityConfirmAccount.this), ActivityConfirmAccount.a());
      av.a(ActivityConfirmAccount.f(ActivityConfirmAccount.this), av.a);
    }
  };
  
  public static Intent a(Context paramContext, int paramInt)
  {
    return a(paramContext, paramInt, null, null);
  }
  
  public static Intent a(Context paramContext, int paramInt, Intent paramIntent1, Intent paramIntent2)
  {
    paramContext = new Intent(paramContext, ActivityConfirmAccount.class);
    paramContext.putExtra("action", paramInt);
    paramContext.putExtra("embedded_intent", paramIntent1);
    paramContext.putExtra("embedded_intent_data", paramIntent2);
    return paramContext;
  }
  
  public static Intent a(Context paramContext, String paramString, boolean paramBoolean)
  {
    paramContext = new Intent(paramContext, ActivityConfirmAccount.class);
    paramContext.putExtra("confirm_hash", paramString);
    paramContext.putExtra("just_logged_in", paramBoolean);
    return paramContext;
  }
  
  private void a(Intent paramIntent)
  {
    if (paramIntent == null) {
      return;
    }
    if (paramIntent.hasExtra("confirm_hash"))
    {
      k = paramIntent.getStringExtra("confirm_hash");
      return;
    }
    int i1 = paramIntent.getIntExtra("action", 0);
    if (i1 != 0)
    {
      d.setText(getString(i1));
      d.setVisibility(0);
    }
    l = ((Intent)getIntent().getParcelableExtra("embedded_intent"));
  }
  
  private void a(String paramString)
  {
    e.setText(b(paramString));
    c.scrollTo(0, c.getBottom());
    av.c(i, a);
    av.b(h, a);
    av.c(f, a);
    j.postDelayed(v, 4000L);
  }
  
  public static Intent b(Context paramContext, int paramInt)
  {
    paramContext = a(paramContext, paramInt, null, null);
    paramContext.putExtra("auto_resend_email", true);
    return paramContext;
  }
  
  private CharSequence b(String paramString)
  {
    return ar.a(paramString, String.format(getString(2131165610), new Object[] { paramString }));
  }
  
  private void b()
  {
    if ((n == null) || (!n.u()))
    {
      n = new do(s);
      n.f(new Void[0]);
      showLoadingDialog(n);
      AppData.a(EventIri.ConfirmResendEmail);
    }
  }
  
  private void c()
  {
    AppData.b().q().a(AppData.b());
    startActivityForResult(ActivityLogin.b(this, k), 1048);
    finish();
  }
  
  public ViewIri getIri()
  {
    return ViewIri.ConfirmEmail;
  }
  
  public void onActivityResult(int paramInt1, int paramInt2, Intent paramIntent)
  {
    super.onActivityResult(paramInt1, paramInt2, paramIntent);
    switch (paramInt1)
    {
    }
    do
    {
      return;
    } while (paramInt2 != -1);
    a(b.i());
  }
  
  public void onBackPressed()
  {
    super.onBackPressed();
    AppData.a(EventIri.ConfirmEmailCancel);
  }
  
  public void onCreate(Bundle paramBundle)
  {
    super.onCreate(paramBundle);
    setContentView(2130903084);
    b = AppData.b().q();
    d = ((TextView)findViewById(2131689793));
    f = ((TextView)findViewById(2131689795));
    h = ((Button)findViewById(2131689797));
    i = ((Button)findViewById(2131689798));
    e = ((TextView)findViewById(2131689794));
    g = ((TextView)findViewById(2131689799));
    c = ((ScrollView)findViewById(2131689791));
    h.setOnClickListener(q);
    e.setText(b(b.i()));
    g.setOnClickListener(r);
    a = av.a * 2;
    if ((paramBundle == null) && (getIntent().getBooleanExtra("auto_resend_email", false))) {}
    for (boolean bool = true;; bool = false)
    {
      m = bool;
      a(getIntent());
      return;
    }
  }
  
  public void onNewIntent(Intent paramIntent)
  {
    a(paramIntent);
  }
  
  public boolean onOptionsItemSelected(MenuItem paramMenuItem)
  {
    switch (paramMenuItem.getItemId())
    {
    }
    for (;;)
    {
      return super.onOptionsItemSelected(paramMenuItem);
      AppData.a(EventIri.ConfirmEmailCancel);
      if (l != null) {
        startActivity(l);
      }
    }
  }
  
  public void onPause()
  {
    super.onPause();
    freezeRequest("resend_confirmation_request", n);
    freezeRequest("account_confirmation_request", o);
    freezeRequest("confirm_account_request", p);
  }
  
  public void onResume()
  {
    super.onResume();
    showLogoInToolbar();
    n = ((do)thawRequest("resend_confirmation_request", null, s));
    o = ((c)thawRequest("account_confirmation_request", null, t));
    p = ((b)thawRequest("confirm_account_request", null, u));
    if (!AppData.b().q().b()) {
      c();
    }
    if (k == null) {
      if (o == null)
      {
        o = new c(AppData.b().q().a(), t);
        o.f(new String[0]);
        showLoadingDialog();
      }
    }
    for (;;)
    {
      if (m)
      {
        b();
        m = false;
      }
      return;
      if (p == null)
      {
        p = new b(k, u);
        p.f(new Void[0]);
        showLoadingDialog(2131165716);
      }
    }
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.ui.activities.ActivityConfirmAccount
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */