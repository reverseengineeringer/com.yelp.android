package com.yelp.android.ui.activities;

import android.app.AlertDialog;
import android.app.AlertDialog.Builder;
import android.app.Dialog;
import android.content.Context;
import android.content.DialogInterface.OnClickListener;
import android.content.Intent;
import android.content.res.Resources;
import android.graphics.Typeface;
import android.os.Bundle;
import android.text.TextUtils;
import android.view.MenuItem;
import android.widget.Button;
import android.widget.EditText;
import android.widget.LinearLayout;
import android.widget.TextView;
import com.yelp.android.analytics.iris.EventIri;
import com.yelp.android.analytics.iris.ViewIri;
import com.yelp.android.appdata.AppData;
import com.yelp.android.appdata.ao;
import com.yelp.android.appdata.i;
import com.yelp.android.appdata.webrequests.dc;
import com.yelp.android.appdata.webrequests.di;
import com.yelp.android.appdata.webrequests.m;
import com.yelp.android.ui.activities.support.YelpActivity;
import com.yelp.android.ui.dialogs.bn;

public class ActivityLogin
  extends YelpActivity
{
  dc a;
  i b;
  private LinearLayout c;
  private EditText d;
  private EditText e;
  private Button f;
  private bn g;
  private TextView h;
  private boolean i;
  private String j;
  private String k;
  private final di l = new cl(this);
  private final DialogInterface.OnClickListener m = new co(this);
  private final DialogInterface.OnClickListener n = new cp(this);
  private final m<String> o = new ch(this);
  
  public static Intent a(Context paramContext)
  {
    return a(paramContext, 0);
  }
  
  public static Intent a(Context paramContext, int paramInt)
  {
    paramContext = new Intent(paramContext, ActivityLogin.class);
    paramContext.addFlags(536870912);
    paramContext.putExtra("com.yelp.android.ui.ActivityLogin.showOptionCreateAccount", true);
    paramContext.putExtra("com.yelp.android.ui.ActivityLogin.showSuccessDlgOnCompletion", false);
    if (paramInt != 0) {
      paramContext.putExtra("action_message", AppData.b().getString(paramInt));
    }
    return paramContext;
  }
  
  public static Intent a(Context paramContext, int paramInt1, int paramInt2, Intent paramIntent)
  {
    dc localdc = AppData.b().m();
    if (localdc.e()) {
      return paramIntent;
    }
    if (localdc.c()) {}
    for (;;)
    {
      return b(paramContext, paramInt1, paramIntent);
      paramInt1 = paramInt2;
    }
  }
  
  public static Intent a(Context paramContext, int paramInt, Intent paramIntent)
  {
    if (AppData.b().m().c()) {
      return paramIntent;
    }
    return b(paramContext, paramInt, paramIntent);
  }
  
  public static Intent a(Context paramContext, Intent paramIntent)
  {
    paramContext = a(paramContext);
    paramContext.putExtra("extra.embedded_data", paramIntent);
    return paramContext;
  }
  
  public static Intent a(Context paramContext, String paramString)
  {
    paramContext = a(paramContext, 0);
    paramContext.putExtra("action_message", paramString);
    return paramContext;
  }
  
  private void a()
  {
    c = ((LinearLayout)findViewById(2131493212));
    d = ((EditText)findViewById(2131493216));
    d.setNextFocusLeftId(d.getId());
    d.setNextFocusRightId(d.getId());
    e = ((EditText)findViewById(2131493217));
    e.setTypeface(Typeface.DEFAULT);
    e.setNextFocusLeftId(e.getId());
    e.setNextFocusRightId(e.getId());
    e.setOnEditorActionListener(new cg(this));
    f = ((Button)findViewById(2131493218));
    f.setOnClickListener(new ci(this));
    if (!a.e()) {
      d.setText(b.q());
    }
    Object localObject;
    if (getIntent().getBooleanExtra("com.yelp.android.ui.ActivityLogin.showOptionCreateAccount", false))
    {
      ((Button)findViewById(2131493220)).setOnClickListener(new cj(this));
      localObject = (LinearLayout)findViewById(2131493214);
      ((LinearLayout)localObject).setPadding(((LinearLayout)localObject).getPaddingLeft(), ao.a(18), ((LinearLayout)localObject).getPaddingRight(), ((LinearLayout)localObject).getPaddingBottom());
    }
    for (;;)
    {
      localObject = getIntent().getStringExtra("action_message");
      if (!TextUtils.isEmpty((CharSequence)localObject))
      {
        h = ((TextView)findViewById(2131493215));
        h.setText((CharSequence)localObject);
        h.setVisibility(0);
      }
      c.setOnFocusChangeListener(new ck(this));
      if (i) {
        d.requestFocus();
      }
      return;
      ((LinearLayout)findViewById(2131493219)).setVisibility(8);
    }
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
    paramContext.putExtra("extra.embedded_intent", paramIntent);
    return paramContext;
  }
  
  private void b()
  {
    AppData.a(EventIri.LogInClick);
    String str1 = d.getText().toString();
    String str2 = e.getText().toString();
    if ((str1 == null) || (str1.length() < 1) || (str1.trim().length() < 1))
    {
      showInfoDialog(getResources().getString(2131166030), getResources().getString(2131166055));
      return;
    }
    if ((str2 == null) || (str2.length() < 1) || (str2.trim().length() < 1))
    {
      showInfoDialog(getResources().getString(2131166030), getResources().getString(2131166056));
      return;
    }
    g = bn.a(this, getText(2131166030), getText(2131166029), true);
    g.setCancelable(false);
    a.a(str1, str2, l);
  }
  
  private void c()
  {
    Intent localIntent = (Intent)getIntent().getParcelableExtra("extra.embedded_intent");
    if (localIntent != null) {
      startActivity(localIntent);
    }
    setResult(-1, (Intent)getIntent().getParcelableExtra("extra.embedded_data"));
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
    c();
  }
  
  public void onBackPressed()
  {
    super.onBackPressed();
    AppData.a(EventIri.LogInCancel);
  }
  
  public void onCreate(Bundle paramBundle)
  {
    super.onCreate(paramBundle);
    setContentView(2130903094);
    Object localObject = AppData.b();
    a = ((AppData)localObject).m();
    b = ((AppData)localObject).f();
    localObject = getIntent().getExtras();
    if (localObject != null) {
      i = ((Bundle)localObject).getBoolean("from_splash");
    }
    if (paramBundle != null)
    {
      j = paramBundle.getString("mDlgInfoTitle");
      k = paramBundle.getString("mDlgInfoMessage");
    }
    a();
  }
  
  protected Dialog onCreateDialog(int paramInt)
  {
    Object localObject = getText(2131166030);
    switch (paramInt)
    {
    default: 
      return super.onCreateDialog(paramInt);
    case 300: 
      localObject = new AlertDialog.Builder(this).setTitle((CharSequence)localObject).setIcon(0).setMessage(getResources().getString(2131165904)).setCancelable(true).setPositiveButton(17039379, new cm(this)).create();
      ((AlertDialog)localObject).setOnDismissListener(new cn(this));
      return (Dialog)localObject;
    case 2131165202: 
      return com.yelp.android.ui.util.cp.c(this, (CharSequence)localObject, getText(2131166459)).setIcon(2130837624).setPositiveButton(2131166460, m).setNegativeButton(2131165456, null).create();
    }
    return com.yelp.android.ui.util.cp.c(this, (CharSequence)localObject, k).setIcon(2130837624).setPositiveButton(2131165843, n).setNegativeButton(2131166752, null).create();
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
    if (a.j())
    {
      a.b(l);
      if (!isFinishing()) {}
    }
  }
  
  protected void onResume()
  {
    super.onResume();
    if (a.j())
    {
      a.a(l);
      g = bn.a(this, getText(2131166030), getText(2131166029), true);
      g.setCancelable(false);
    }
  }
  
  protected void onSaveInstanceState(Bundle paramBundle)
  {
    super.onSaveInstanceState(paramBundle);
    if (j == null)
    {
      str = "";
      paramBundle.putString("mDlgInfoTitle", str);
      if (k != null) {
        break label52;
      }
    }
    label52:
    for (String str = "";; str = k)
    {
      paramBundle.putString("mDlgInfoMessage", str);
      return;
      str = j;
      break;
    }
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.ui.activities.ActivityLogin
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */