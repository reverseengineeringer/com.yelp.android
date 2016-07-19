package com.yelp.android.ui.activities;

import android.app.Activity;
import android.app.AlertDialog.Builder;
import android.app.Dialog;
import android.content.Context;
import android.content.DialogInterface;
import android.content.DialogInterface.OnClickListener;
import android.content.Intent;
import android.content.SharedPreferences;
import android.content.res.Resources;
import android.graphics.Typeface;
import android.os.Bundle;
import android.preference.PreferenceManager;
import android.support.v4.app.l;
import android.text.Spannable;
import android.text.TextUtils;
import android.text.method.LinkMovementMethod;
import android.view.KeyEvent;
import android.view.MenuItem;
import android.view.View;
import android.view.View.OnClickListener;
import android.view.View.OnFocusChangeListener;
import android.view.Window;
import android.widget.Button;
import android.widget.CheckBox;
import android.widget.CompoundButton;
import android.widget.CompoundButton.OnCheckedChangeListener;
import android.widget.EditText;
import android.widget.LinearLayout;
import android.widget.TextView;
import android.widget.TextView.OnEditorActionListener;
import com.yelp.android.analytics.iris.EventIri;
import com.yelp.android.analytics.iris.ViewIri;
import com.yelp.android.appdata.ApiPreferences;
import com.yelp.android.appdata.ApiPreferences.DeviceAwarePreference;
import com.yelp.android.appdata.AppData;
import com.yelp.android.appdata.c;
import com.yelp.android.appdata.n;
import com.yelp.android.appdata.webrequests.ApiException;
import com.yelp.android.appdata.webrequests.ApiRequest;
import com.yelp.android.appdata.webrequests.ApiRequest.b;
import com.yelp.android.appdata.webrequests.YelpException;
import com.yelp.android.appdata.webrequests.ca;
import com.yelp.android.appdata.webrequests.co;
import com.yelp.android.appdata.webrequests.co.a;
import com.yelp.android.ui.activities.support.YelpActivity;
import com.yelp.android.ui.dialogs.TwoButtonDialog;
import com.yelp.android.ui.dialogs.e;
import com.yelp.android.ui.util.ar;
import com.yelp.android.util.StringUtils;

public class ActivityLogin
  extends YelpActivity
{
  private LinearLayout a;
  private EditText b;
  private EditText c;
  private Button d;
  private e e;
  private TextView f;
  private CheckBox g;
  private co h;
  private c i;
  private boolean j;
  private String k;
  private String l;
  private final DialogInterface.OnClickListener m = new DialogInterface.OnClickListener()
  {
    public void onClick(DialogInterface paramAnonymousDialogInterface, int paramAnonymousInt)
    {
      AppData.b().o().a(REPORT_BACKGROUND_LOCATIONapiKey, true);
      AppData.a(EventIri.BackgroundLocationAttachToAccountDialogYes);
      ActivityLogin.c(ActivityLogin.this);
    }
  };
  private final DialogInterface.OnClickListener n = new DialogInterface.OnClickListener()
  {
    public void onClick(DialogInterface paramAnonymousDialogInterface, int paramAnonymousInt)
    {
      AppData.a(EventIri.BackgroundLocationAttachToAccountDialogNo);
      ActivityLogin.c(ActivityLogin.this);
    }
  };
  private final co.a o = new co.a()
  {
    public void a(YelpException paramAnonymousYelpException)
    {
      ActivityLogin.d(ActivityLogin.this).dismiss();
      if (paramAnonymousYelpException == null)
      {
        AppData.a(EventIri.LogInSuccess);
        ActivityLogin.a(ActivityLogin.this, false);
        if (ActivityLogin.e(ActivityLogin.this)) {
          ActivityLogin.f(ActivityLogin.this);
        }
      }
      for (;;)
      {
        return;
        ActivityLogin.c(ActivityLogin.this);
        return;
        if ((paramAnonymousYelpException instanceof ApiException))
        {
          paramAnonymousYelpException = (ApiException)paramAnonymousYelpException;
          if (paramAnonymousYelpException.getResultCode() == 10)
          {
            AppData.a(EventIri.LogInInvalidCredentials);
            ActivityLogin.a(ActivityLogin.this, paramAnonymousYelpException.getMessage(ActivityLogin.this));
            showDialog(2131165356);
          }
        }
        while (ActivityLogin.h(ActivityLogin.this))
        {
          ActivityLogin.i(ActivityLogin.this);
          return;
          if (paramAnonymousYelpException.getResultCode() == 11)
          {
            ActivityLogin.g(ActivityLogin.this);
          }
          else
          {
            showInfoDialog(getString(2131166090), paramAnonymousYelpException.getMessage(ActivityLogin.this));
            continue;
            showInfoDialog(getResources().getString(2131166090), paramAnonymousYelpException.getMessage(ActivityLogin.this));
          }
        }
      }
    }
  };
  private final DialogInterface.OnClickListener p = new DialogInterface.OnClickListener()
  {
    public void onClick(DialogInterface paramAnonymousDialogInterface, int paramAnonymousInt)
    {
      paramAnonymousDialogInterface.dismiss();
      AppData.a(EventIri.LogInPasswordReset);
      paramAnonymousDialogInterface = new ca(ActivityLogin.j(ActivityLogin.this), String.valueOf(ActivityLogin.k(ActivityLogin.this).getText()));
      paramAnonymousDialogInterface.f(new Void[0]);
      showLoadingDialog(paramAnonymousDialogInterface);
    }
  };
  private CompoundButton.OnCheckedChangeListener q = new CompoundButton.OnCheckedChangeListener()
  {
    public void onCheckedChanged(CompoundButton paramAnonymousCompoundButton, boolean paramAnonymousBoolean)
    {
      ActivityLogin.a(ActivityLogin.this, paramAnonymousBoolean);
      if (ActivityLogin.h(ActivityLogin.this)) {}
      for (paramAnonymousCompoundButton = EventIri.LogInUnmaskPasswordCheckboxClicked;; paramAnonymousCompoundButton = EventIri.LogInMaskPasswordCheckboxClicked)
      {
        AppData.a(paramAnonymousCompoundButton);
        ActivityLogin.i(ActivityLogin.this);
        return;
      }
    }
  };
  private final ApiRequest.b<String> r = new ApiRequest.b()
  {
    public void a(ApiRequest<?, ?, ?> paramAnonymousApiRequest, String paramAnonymousString)
    {
      hideLoadingDialog();
      showInfoDialog(getString(2131166090), getString(2131166331));
    }
    
    public void onError(ApiRequest<?, ?, ?> paramAnonymousApiRequest, YelpException paramAnonymousYelpException)
    {
      hideLoadingDialog();
      showInfoDialog(getString(2131166090), getString(2131166331));
    }
  };
  
  public static Intent a(Activity paramActivity, int paramInt1, int paramInt2)
  {
    if (!AppData.b().q().b()) {
      return a(paramActivity, paramInt2);
    }
    return ActivityConfirmAccount.a(paramActivity, paramInt1);
  }
  
  public static Intent a(Context paramContext)
  {
    return a(paramContext, 0);
  }
  
  public static Intent a(Context paramContext, int paramInt)
  {
    paramContext = new Intent(paramContext, ActivityLogin.class);
    paramContext.addFlags(536870912);
    paramContext.putExtra("com.yelp.android.ui.ActivityLogin.showOptionCreateAccount", true);
    if (paramInt != 0) {
      paramContext.putExtra("action_message", AppData.b().getString(paramInt));
    }
    return paramContext;
  }
  
  public static Intent a(Context paramContext, int paramInt1, int paramInt2, Intent paramIntent)
  {
    co localco = AppData.b().q();
    if (localco.d()) {
      return paramIntent;
    }
    if (localco.b()) {
      return ActivityConfirmAccount.a(paramContext, paramInt1, paramIntent, null);
    }
    return b(paramContext, paramInt2, paramIntent);
  }
  
  public static Intent a(Context paramContext, int paramInt, Intent paramIntent)
  {
    if (AppData.b().q().b()) {
      return paramIntent;
    }
    return b(paramContext, paramInt, paramIntent);
  }
  
  public static Intent a(Context paramContext, String paramString)
  {
    paramContext = a(paramContext, 0);
    paramContext.putExtra("action_message", paramString);
    return paramContext;
  }
  
  public static Intent a(Context paramContext, String paramString, Intent paramIntent)
  {
    paramContext = a(paramContext, paramString);
    paramContext.putExtra("embedded_data", paramIntent);
    return paramContext;
  }
  
  private void a()
  {
    b();
    a = ((LinearLayout)findViewById(2131689879));
    b = ((EditText)findViewById(2131689883));
    b.setNextFocusLeftId(b.getId());
    b.setNextFocusRightId(b.getId());
    c = ((EditText)findViewById(2131689884));
    c.setTypeface(Typeface.DEFAULT);
    c.setNextFocusLeftId(c.getId());
    c.setNextFocusRightId(c.getId());
    c.setOnEditorActionListener(new TextView.OnEditorActionListener()
    {
      public boolean onEditorAction(TextView paramAnonymousTextView, int paramAnonymousInt, KeyEvent paramAnonymousKeyEvent)
      {
        if (((paramAnonymousInt == 0) && (ar.a(paramAnonymousKeyEvent))) || (paramAnonymousInt == 6))
        {
          ActivityLogin.a(ActivityLogin.this);
          return true;
        }
        return false;
      }
    });
    g = ((CheckBox)findViewById(2131689885));
    g.setOnCheckedChangeListener(q);
    c();
    d = ((Button)findViewById(2131689886));
    d.setOnClickListener(new View.OnClickListener()
    {
      public void onClick(View paramAnonymousView)
      {
        ActivityLogin.a(ActivityLogin.this);
      }
    });
    if (!h.d()) {
      b.setText(i.v());
    }
    Object localObject;
    if (getIntent().getBooleanExtra("com.yelp.android.ui.ActivityLogin.showOptionCreateAccount", false))
    {
      ((Button)findViewById(2131689888)).setOnClickListener(new View.OnClickListener()
      {
        public void onClick(View paramAnonymousView)
        {
          boolean bool = getIntent().getBooleanExtra("signup_from_review", false);
          paramAnonymousView = new Intent();
          paramAnonymousView.setClass(ActivityLogin.this, ActivityCreateAccount.class);
          paramAnonymousView.addFlags(536870912);
          paramAnonymousView.putExtra("extra.show_skip_button", false);
          paramAnonymousView.putExtra("signup_from_review", bool);
          startActivityForResult(paramAnonymousView, 100);
        }
      });
      localObject = (LinearLayout)findViewById(2131689881);
      ((LinearLayout)localObject).setPadding(((LinearLayout)localObject).getPaddingLeft(), n.a(18), ((LinearLayout)localObject).getPaddingRight(), ((LinearLayout)localObject).getPaddingBottom());
    }
    for (;;)
    {
      localObject = getIntent().getStringExtra("action_message");
      if (!TextUtils.isEmpty((CharSequence)localObject))
      {
        f = ((TextView)findViewById(2131689882));
        f.setText((CharSequence)localObject);
        f.setVisibility(0);
      }
      a.setOnFocusChangeListener(new View.OnFocusChangeListener()
      {
        public void onFocusChange(View paramAnonymousView, boolean paramAnonymousBoolean)
        {
          if (!paramAnonymousBoolean)
          {
            ActivityLogin.b(ActivityLogin.this).setEnabled(false);
            ActivityLogin.b(ActivityLogin.this).setFocusable(false);
          }
        }
      });
      return;
      ((LinearLayout)findViewById(2131689887)).setVisibility(8);
    }
  }
  
  private void a(boolean paramBoolean)
  {
    int i2 = c.getSelectionStart();
    EditText localEditText = c;
    if (paramBoolean) {}
    for (int i1 = 144;; i1 = 128)
    {
      localEditText.setInputType(i1 | 0x1);
      c.setSelection(i2);
      c.setTypeface(Typeface.DEFAULT);
      return;
    }
  }
  
  public static Intent b(Context paramContext)
  {
    paramContext = b(paramContext, 0);
    paramContext.putExtra("com.yelp.android.ui.ActivityLogin.showOptionCreateAccount", false);
    return paramContext;
  }
  
  public static Intent b(Context paramContext, int paramInt)
  {
    paramContext = a(paramContext, paramInt);
    paramContext.putExtra("signup_from_review", true);
    return paramContext;
  }
  
  private static Intent b(Context paramContext, int paramInt, Intent paramIntent)
  {
    paramContext = a(paramContext, paramInt);
    paramContext.putExtra("embedded_intent", paramIntent);
    return paramContext;
  }
  
  public static Intent b(Context paramContext, String paramString)
  {
    paramContext = a(paramContext, 2131166084);
    paramContext.putExtra("confirm_hash", paramString);
    return paramContext;
  }
  
  private void b()
  {
    Spannable localSpannable1 = StringUtils.b(this, 2131166851, 2131166661);
    Spannable localSpannable2 = StringUtils.b(this, 2131166387, 2131166391);
    TextView localTextView = (TextView)findViewById(2131689789);
    localTextView.setText(TextUtils.expandTemplate(getString(2131166115), new CharSequence[] { localSpannable1, localSpannable2 }));
    localTextView.setMovementMethod(LinkMovementMethod.getInstance());
  }
  
  private void c()
  {
    a(j);
  }
  
  private void d()
  {
    AppData.a(EventIri.LogInClick);
    String str1 = b.getText().toString();
    String str2 = c.getText().toString();
    if ((str1 == null) || (str1.length() < 1) || (str1.trim().length() < 1))
    {
      AppData.a(EventIri.LogInValidationError);
      showInfoDialog(getResources().getString(2131166090), getResources().getString(2131166985));
      return;
    }
    if ((str2 == null) || (str2.length() < 1) || (str2.trim().length() < 1))
    {
      AppData.a(EventIri.LogInValidationError);
      showInfoDialog(getResources().getString(2131166090), getResources().getString(2131166986));
      return;
    }
    if (j) {
      a(false);
    }
    e = e.a(this, getText(2131166090), getText(2131166089), true);
    e.setCancelable(false);
    h.a(str1, str2, o);
  }
  
  private boolean e()
  {
    boolean bool2 = false;
    boolean bool1 = bool2;
    if (PreferenceManager.getDefaultSharedPreferences(this).getBoolean(getString(2131166959), false))
    {
      bool1 = bool2;
      if (!AppData.b().o().a(ApiPreferences.DeviceAwarePreference.REPORT_BACKGROUND_LOCATION)) {
        bool1 = true;
      }
    }
    return bool1;
  }
  
  private void f()
  {
    TwoButtonDialog localTwoButtonDialog = TwoButtonDialog.a(2131165522, 2131166270, 2131166288);
    localTwoButtonDialog.setCancelable(false);
    localTwoButtonDialog.a(m);
    localTwoButtonDialog.b(n);
    AppData.a(ViewIri.BackgroundLocationAttachToAccountDialog);
    localTwoButtonDialog.show(getSupportFragmentManager(), "background_location_attach_to_account_dialog");
  }
  
  private void g()
  {
    Intent localIntent = (Intent)getIntent().getParcelableExtra("embedded_intent");
    if (localIntent != null) {
      startActivity(localIntent);
    }
    setResult(-1, (Intent)getIntent().getParcelableExtra("embedded_data"));
    finish();
  }
  
  private void h()
  {
    Intent localIntent = getIntent();
    String str = localIntent.getStringExtra("confirm_hash");
    if (str == null)
    {
      startActivity(ActivityConfirmAccount.a(this, 0, (Intent)localIntent.getParcelableExtra("embedded_intent"), (Intent)localIntent.getParcelableExtra("embedded_data")));
      finish();
      return;
    }
    startActivity(ActivityConfirmAccount.a(this, str, true));
    finish();
  }
  
  public ViewIri getIri()
  {
    return ViewIri.LogIn;
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
    g();
  }
  
  public void onBackPressed()
  {
    super.onBackPressed();
    AppData.a(EventIri.LogInCancel);
  }
  
  public void onCreate(Bundle paramBundle)
  {
    super.onCreate(paramBundle);
    getWindow().setFlags(8192, 8192);
    setContentView(2130903106);
    AppData localAppData = AppData.b();
    h = localAppData.q();
    i = localAppData.f();
    if (paramBundle != null)
    {
      j = paramBundle.getBoolean("password_unmasked");
      k = paramBundle.getString("mDialogInfoTitle");
      l = paramBundle.getString("mDialogInfoMessage");
      paramBundle = (TwoButtonDialog)getSupportFragmentManager().a("background_location_attach_to_account_dialog");
      if (paramBundle != null)
      {
        paramBundle.b(n);
        paramBundle.a(m);
      }
    }
    a();
  }
  
  protected Dialog onCreateDialog(int paramInt)
  {
    CharSequence localCharSequence = getText(2131166090);
    if (paramInt == 2131165356) {
      return ar.c(this, localCharSequence, l).setIcon(2130837646).setPositiveButton(2131165930, p).setNegativeButton(2131166732, null).create();
    }
    return super.onCreateDialog(paramInt);
  }
  
  public boolean onOptionsItemSelected(MenuItem paramMenuItem)
  {
    switch (paramMenuItem.getItemId())
    {
    }
    for (;;)
    {
      return super.onOptionsItemSelected(paramMenuItem);
      AppData.a(EventIri.LogInCancel);
    }
  }
  
  protected void onPause()
  {
    super.onPause();
    if (h.f())
    {
      h.b(o);
      if (!isFinishing()) {}
    }
  }
  
  protected void onResume()
  {
    super.onResume();
    if (h.f())
    {
      h.a(o);
      e = e.a(this, getText(2131166090), getText(2131166089), true);
      e.setCancelable(false);
    }
  }
  
  protected void onSaveInstanceState(Bundle paramBundle)
  {
    super.onSaveInstanceState(paramBundle);
    if (k == null)
    {
      str = "";
      paramBundle.putString("mDialogInfoTitle", str);
      if (l != null) {
        break label63;
      }
    }
    label63:
    for (String str = "";; str = l)
    {
      paramBundle.putString("mDialogInfoMessage", str);
      paramBundle.putBoolean("password_unmasked", j);
      return;
      str = k;
      break;
    }
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.ui.activities.ActivityLogin
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */