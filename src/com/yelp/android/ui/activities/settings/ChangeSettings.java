package com.yelp.android.ui.activities.settings;

import android.annotation.SuppressLint;
import android.app.AlertDialog;
import android.app.AlertDialog.Builder;
import android.app.Dialog;
import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.DialogInterface;
import android.content.DialogInterface.OnCancelListener;
import android.content.DialogInterface.OnClickListener;
import android.content.Intent;
import android.content.SharedPreferences;
import android.content.SharedPreferences.Editor;
import android.content.res.Configuration;
import android.content.res.Resources;
import android.location.Address;
import android.location.Geocoder;
import android.net.ConnectivityManager;
import android.net.NetworkInfo;
import android.net.Uri;
import android.os.AsyncTask;
import android.os.Bundle;
import android.preference.PreferenceManager;
import android.support.v4.app.Fragment;
import android.support.v4.app.l;
import android.support.v4.app.l.a;
import android.support.v4.app.l.b;
import android.support.v4.app.o;
import android.support.v7.widget.Toolbar;
import android.text.SpannableStringBuilder;
import android.text.method.LinkMovementMethod;
import android.text.style.URLSpan;
import android.util.Log;
import android.view.MenuItem;
import android.view.View;
import android.widget.TextView;
import com.yelp.android.analytics.iris.EventIri;
import com.yelp.android.analytics.iris.ViewIri;
import com.yelp.android.appdata.ApiPreferences;
import com.yelp.android.appdata.AppData;
import com.yelp.android.appdata.BaseYelpApplication;
import com.yelp.android.appdata.LocaleSettings;
import com.yelp.android.appdata.LocaleSettings.DISTANCE_UNIT;
import com.yelp.android.appdata.LocationService;
import com.yelp.android.appdata.PermissionGroup;
import com.yelp.android.appdata.experiment.BackgroundLocationExperiment;
import com.yelp.android.appdata.webrequests.ApiRequest;
import com.yelp.android.appdata.webrequests.YelpException;
import com.yelp.android.appdata.webrequests.an;
import com.yelp.android.appdata.webrequests.ao;
import com.yelp.android.appdata.webrequests.co;
import com.yelp.android.appdata.webrequests.core.c.a;
import com.yelp.android.appdata.webrequests.dr;
import com.yelp.android.appdata.webrequests.dr.a;
import com.yelp.android.appdata.webrequests.k.b;
import com.yelp.android.cj.h;
import com.yelp.android.cj.i;
import com.yelp.android.cj.j;
import com.yelp.android.serializable.PreferenceSection;
import com.yelp.android.ui.activities.ActivityCreateAccount;
import com.yelp.android.ui.activities.ActivityLogin;
import com.yelp.android.ui.activities.ActivityTwitterSignIn;
import com.yelp.android.ui.activities.FacebookConnectManager;
import com.yelp.android.ui.activities.FacebookConnectManager.FbPermissionSet;
import com.yelp.android.ui.activities.FacebookConnectManager.a;
import com.yelp.android.ui.activities.nearby.ActivityNearby;
import com.yelp.android.ui.activities.support.WebViewActivity;
import com.yelp.android.ui.activities.support.WebViewActivity.BackBehavior;
import com.yelp.android.ui.activities.support.WebViewActivity.Feature;
import com.yelp.android.ui.activities.support.YelpActivity;
import com.yelp.android.ui.activities.support.b.e;
import com.yelp.android.ui.dialogs.AlertDialogFragment;
import com.yelp.android.ui.util.as;
import com.yelp.android.util.StringUtils;
import java.io.IOException;
import java.util.Calendar;
import java.util.EnumSet;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Locale;
import java.util.Map;
import java.util.Set;

public class ChangeSettings
  extends YelpActivity
  implements l.b, PreferenceScreenFragment.b, b.e
{
  private static com.yelp.android.appdata.webrequests.f h;
  private static c.a i;
  View a;
  BroadcastReceiver b = new BroadcastReceiver()
  {
    public void onReceive(Context paramAnonymousContext, Intent paramAnonymousIntent)
    {
      c();
    }
  };
  private ConnectivityManager c;
  private dr d;
  private AlertDialog e;
  private FacebookConnectManager<ChangeSettings> f;
  private b g;
  private SharedPreferences j;
  private boolean k;
  private Map<String, com.yelp.android.ck.g> l;
  private Map<String, i> m;
  
  public static Intent a(Context paramContext, int paramInt, String paramString)
  {
    paramContext = new Intent(paramContext, ChangeSettings.class);
    paramContext.putExtra("preferences.resourceid", paramInt);
    paramContext.putExtra("preferences.title", paramString);
    return paramContext;
  }
  
  private static c.a a(Context paramContext, final l paraml)
  {
    new c.a()
    {
      public void a(ApiRequest<?, ?, ?> paramAnonymousApiRequest, Void paramAnonymousVoid) {}
      
      public void onError(ApiRequest<?, ?, ?> paramAnonymousApiRequest, YelpException paramAnonymousYelpException)
      {
        AlertDialogFragment.a(null, a.getString(2131165865)).show(paraml, null);
      }
    };
  }
  
  public static String a(Context paramContext, l paraml, SharedPreferences paramSharedPreferences, String paramString)
  {
    String str2 = paramSharedPreferences.getString(paramString, null);
    String str1 = str2;
    if (str2 == null)
    {
      str1 = AppData.b().q().k();
      if (str1 != null) {
        a(paramContext, paraml, paramSharedPreferences, paramString, str1);
      }
    }
    else
    {
      return str1;
    }
    return "";
  }
  
  private void a(int paramInt, i parami, com.yelp.android.ck.g paramg)
  {
    a(getString(paramInt), parami, paramg);
  }
  
  public static void a(Context paramContext, l paraml, SharedPreferences paramSharedPreferences, String paramString1, String paramString2)
  {
    paramSharedPreferences.edit().putString(paramString1, paramString2).commit();
    if ((paramString1 != null) && (paramString1.equals(paramContext.getString(2131166974)))) {}
    for (int n = 1;; n = 0)
    {
      if (n != 0)
      {
        i = a(paramContext, paraml);
        h = new com.yelp.android.appdata.webrequests.f(paramString2, i);
        h.f(new Void[0]);
      }
      return;
    }
  }
  
  private void a(String paramString, i parami, com.yelp.android.ck.g paramg)
  {
    if (l == null) {
      l = new HashMap();
    }
    if (m == null) {
      m = new HashMap();
    }
    m.put(paramString, parami);
    if (paramg != null) {
      l.put(paramString, paramg);
    }
  }
  
  private k.b<dr.a> b(final String paramString)
  {
    new k.b()
    {
      public void a(ApiRequest<?, ?, ?> paramAnonymousApiRequest, dr.a paramAnonymousa)
      {
        getHelper().f();
        if ((!b) || (a == null)) {
          ChangeSettings.c(ChangeSettings.this);
        }
        for (;;)
        {
          c();
          return;
          ChangeSettings.a(ChangeSettings.this, getSupportFragmentManager(), ChangeSettings.a(ChangeSettings.this), paramString, a.h());
        }
      }
      
      public boolean a()
      {
        return true;
      }
      
      public void onError(ApiRequest<?, ?, ?> paramAnonymousApiRequest, YelpException paramAnonymousYelpException)
      {
        c();
        getHelper().f();
        ChangeSettings.c(ChangeSettings.this);
      }
    };
  }
  
  private void e()
  {
    if (!AppData.b().r().b())
    {
      onProvidersRequired(this, false, 0);
      return;
    }
    showDialog(2131690866);
  }
  
  private void f()
  {
    DialogInterface.OnCancelListener local7 = new DialogInterface.OnCancelListener()
    {
      public void onCancel(DialogInterface paramAnonymousDialogInterface)
      {
        AppData.a(EventIri.UserLogoutCancel);
      }
    };
    DialogInterface.OnClickListener local8 = new DialogInterface.OnClickListener()
    {
      public void onClick(DialogInterface paramAnonymousDialogInterface, int paramAnonymousInt)
      {
        if (paramAnonymousInt == -1)
        {
          getAppData().q().a(ChangeSettings.this);
          c();
          ChangeSettings.a(ChangeSettings.this, true);
          ((Toolbar)findViewById(2131690378)).setNavigationIcon(new com.yelp.android.cm.c(ChangeSettings.this, 0));
          return;
        }
        AppData.a(EventIri.UserLogoutCancel);
      }
    };
    AlertDialog.Builder localBuilder = new AlertDialog.Builder(this);
    localBuilder.setTitle(2131166086).setMessage(2131165504).setPositiveButton(2131166860, local8).setNegativeButton(2131165583, local8).setOnCancelListener(local7);
    e = localBuilder.create();
    e.show();
  }
  
  private CharSequence g()
  {
    String str1 = getString(2131166660);
    String str2 = getString(2131166387);
    String str3 = getString(2131165430);
    String str4 = getString(2131165723);
    String str5 = getString(2131166391);
    String str6 = getString(2131166661);
    String str7 = getString(2131165431);
    String str8 = getString(2131165724);
    String str9 = getString(2131166723, new Object[] { str1, str2, str3, str4 });
    SpannableStringBuilder localSpannableStringBuilder = new SpannableStringBuilder(str9);
    int n = str9.indexOf(str1);
    int i1 = str1.length();
    int i2 = str9.indexOf(str2);
    int i3 = str2.length();
    int i4 = str9.indexOf(str3);
    int i5 = str3.length();
    int i6 = str9.indexOf(str4);
    int i7 = str4.length();
    localSpannableStringBuilder.setSpan(new URLSpan(str6), n, i1 + n, 33);
    localSpannableStringBuilder.setSpan(new URLSpan(str5), i2, i3 + i2, 33);
    localSpannableStringBuilder.setSpan(new URLSpan(str7), i4, i5 + i4, 33);
    localSpannableStringBuilder.setSpan(new URLSpan(str8), i6, i7 + i6, 33);
    return localSpannableStringBuilder;
  }
  
  public void a()
  {
    l locall = getSupportFragmentManager();
    String str;
    if (locall.e() > 0) {
      str = locall.b(locall.e() - 1).c();
    }
    for (;;)
    {
      setTitle(str);
      return;
      str = getString(2131166217);
      a(((PreferenceScreenFragment)locall.a(2131689997)).b());
    }
  }
  
  @SuppressLint({"CommitTransaction"})
  public void a(int paramInt, CharSequence paramCharSequence)
  {
    if (paramInt == 2130903507) {}
    for (int n = 2130903531;; n = 0)
    {
      Object localObject = PreferenceScreenFragment.a(paramInt, paramCharSequence, n);
      ((PreferenceScreenFragment)localObject).a(this);
      ((PreferenceScreenFragment)localObject).a(m);
      localObject = getSupportFragmentManager().a().b(2131689997, (Fragment)localObject).a(4097);
      if (getSupportFragmentManager().a(2131689997) != null) {
        ((o)localObject).a(String.valueOf(paramCharSequence));
      }
      ((o)localObject).a();
      return;
    }
  }
  
  void a(View paramView)
  {
    if (paramView == null) {
      return;
    }
    TextView localTextView = (TextView)paramView.findViewById(2131690897);
    localTextView.setText(g());
    localTextView.setMovementMethod(LinkMovementMethod.getInstance());
    ((TextView)paramView.findViewById(2131690898)).setText(getString(2131165736, new Object[] { Integer.valueOf(Calendar.getInstance().get(1)) }));
    localTextView = (TextView)paramView.findViewById(2131690899);
    SpannableStringBuilder localSpannableStringBuilder = new SpannableStringBuilder(getString(2131166724));
    StringUtils.a(localSpannableStringBuilder, "%1$s", getResources().getDrawable(2130838918));
    StringUtils.a(localSpannableStringBuilder, "%2$s", getResources().getDrawable(2130838917));
    localTextView.setText(localSpannableStringBuilder);
    ((TextView)paramView.findViewById(2131690901)).setText(getString(2131167008, new Object[] { BaseYelpApplication.c(this) }));
  }
  
  public void a(c.a parama)
  {
    f.g();
    new an(parama).f(new Void[0]);
  }
  
  public void a(FacebookConnectManager.a<ChangeSettings> parama)
  {
    f.a(parama);
    f.e();
  }
  
  public void a(b paramb)
  {
    g = paramb;
    startActivityForResult(ActivityTwitterSignIn.a(this), 201);
  }
  
  public void a(PreferenceView paramPreferenceView)
  {
    switch (paramPreferenceView.getId())
    {
    }
    do
    {
      do
      {
        return;
        showDialog(2131690857);
        return;
        showDialog(2131690858);
        return;
        startActivity(WebViewActivity.getWebIntent(this, Uri.parse(getString(2131166394)), getString(2131166392), ViewIri.PrivacySettings, EnumSet.of(WebViewActivity.Feature.LOGIN), WebViewActivity.BackBehavior.NONE, false));
        return;
        startActivity(ActivityCreateAccount.b(this, false));
        finish();
        return;
        if (getAppData().q().b())
        {
          f();
          return;
        }
        startActivityForResult(ActivityLogin.a(this), 100);
        return;
      } while (!com.yelp.android.appdata.experiment.e.k.a());
      AppData.a(ViewIri.BackgroundLocationSettings);
      return;
      if (!paramPreferenceView.isChecked()) {
        break;
      }
    } while (com.yelp.android.appdata.k.a(this, 250, new PermissionGroup[] { PermissionGroup.LOCATION }));
    AppData.a(EventIri.BackgroundLocationChanged, "toggle_on", Boolean.valueOf(true));
    AppData.b().s().a();
    return;
    AppData.a(EventIri.BackgroundLocationChanged, "toggle_on", Boolean.valueOf(false));
    AppData.b().s().b();
  }
  
  public void a(String paramString)
  {
    PreferenceScreenFragment localPreferenceScreenFragment = (PreferenceScreenFragment)getSupportFragmentManager().a(2131689997);
    if (localPreferenceScreenFragment != null) {
      localPreferenceScreenFragment.a(paramString);
    }
  }
  
  public void a(String paramString, int paramInt)
  {
    ((com.yelp.android.ck.g)l.get(paramString)).a(this, paramString, paramInt);
  }
  
  public void a(String paramString1, String paramString2, boolean paramBoolean, String paramString3)
  {
    if (paramBoolean)
    {
      a(this, getSupportFragmentManager(), j, paramString1, paramString2);
      c();
      return;
    }
    paramString1 = new a(new Geocoder(this, getResourcesgetConfigurationlocale), paramString1);
    paramString1.execute(new String[] { paramString2 });
    getHelper().a(paramString1);
  }
  
  public void a(List<PreferenceSection> paramList, String paramString)
  {
    paramList = PreferenceScreenFragment.a(paramList, paramString);
    paramList.a(this);
    paramList.a(m);
    paramList = getSupportFragmentManager().a().b(2131689997, paramList).a(4097);
    if (getSupportFragmentManager().a(2131689997) != null) {
      paramList.a(String.valueOf(paramString));
    }
    paramList.a();
  }
  
  public void a(boolean paramBoolean) {}
  
  public void b() {}
  
  public void b(c.a parama)
  {
    new ao(parama).f(new Void[0]);
  }
  
  public void c()
  {
    PreferenceScreenFragment localPreferenceScreenFragment = (PreferenceScreenFragment)getSupportFragmentManager().a(2131689997);
    if (localPreferenceScreenFragment != null) {
      localPreferenceScreenFragment.a();
    }
  }
  
  public SharedPreferences d()
  {
    return j;
  }
  
  public ViewIri getIri()
  {
    return ViewIri.Settings;
  }
  
  protected void onActivityResult(int paramInt1, int paramInt2, Intent paramIntent)
  {
    if (paramInt1 == 201)
    {
      if (-1 == paramInt2)
      {
        g.a();
        return;
      }
      g.b();
      return;
    }
    if (paramInt1 == 100)
    {
      if ((paramInt2 == -1) && (getAppData().q().b()))
      {
        startActivity(ActivityNearby.a(this));
        return;
      }
      c();
      return;
    }
    super.onActivityResult(paramInt1, paramInt2, paramIntent);
    f.a(paramInt1, paramInt2, paramIntent);
  }
  
  public void onBackPressed()
  {
    if ((k) && (getSupportFragmentManager().e() == 0))
    {
      startActivity(ActivityNearby.a(this));
      return;
    }
    super.onBackPressed();
  }
  
  protected void onCreate(Bundle paramBundle)
  {
    super.onCreate(paramBundle);
    if (paramBundle != null) {
      k = paramBundle.getBoolean("has_logged_out", false);
    }
    c = ((ConnectivityManager)getSystemService("connectivity"));
    j = PreferenceManager.getDefaultSharedPreferences(this);
    f = new FacebookConnectManager(this, 2131166073, null, FacebookConnectManager.FbPermissionSet.DEFAULT_READ_PUBLISH);
    a(2131166967, new com.yelp.android.cj.d(), new com.yelp.android.ck.d());
    a(2131166983, new j(), new com.yelp.android.ck.f());
    a(2131166969, new com.yelp.android.cj.e(), new com.yelp.android.ck.e());
    a(2131166959, new com.yelp.android.cj.b(), new com.yelp.android.ck.c());
    a(2131166970, new com.yelp.android.cj.g(), null);
    a(2131166977, new com.yelp.android.cj.f(), null);
    a(2131166979, new com.yelp.android.cj.k(), null);
    a(2131166966, new com.yelp.android.cj.k(), null);
    a(2131166974, new com.yelp.android.cj.k(AppData.b().q(), new i()
    {
      public void a(PreferenceView paramAnonymousPreferenceView)
      {
        paramAnonymousPreferenceView.setEditText(ChangeSettings.a(ChangeSettings.this, getSupportFragmentManager(), ChangeSettings.a(ChangeSettings.this), getString(2131166974)));
        paramAnonymousPreferenceView.a();
      }
    }), null);
    a(2131166981, new com.yelp.android.cj.k(AppData.b().q(), new i()
    {
      public void a(PreferenceView paramAnonymousPreferenceView)
      {
        paramAnonymousPreferenceView.setEditText(ChangeSettings.a(ChangeSettings.this, getSupportFragmentManager(), ChangeSettings.a(ChangeSettings.this), getString(2131166981)));
        paramAnonymousPreferenceView.a();
      }
    }), null);
    a(2131166975, new h(), null);
    a(2131166965, new com.yelp.android.cj.c(), null);
    paramBundle = AppData.b().o().f().iterator();
    while (paramBundle.hasNext()) {
      a((String)paramBundle.next(), new com.yelp.android.cj.a(), new com.yelp.android.ck.b());
    }
    a = findViewById(2131689997);
    getSupportFragmentManager().a(this);
    int n = getIntent().getIntExtra("preferences.resourceid", 2130903507);
    String str = getIntent().getStringExtra("preferences.title");
    paramBundle = str;
    if (str == null) {
      paramBundle = getString(2131166217);
    }
    a(n, paramBundle);
  }
  
  protected Dialog onCreateDialog(int paramInt)
  {
    switch (paramInt)
    {
    default: 
      return super.onCreateDialog(paramInt);
    case 2131690857: 
      new AlertDialog.Builder(this).setTitle(2131165647).setMessage(2131165648).setPositiveButton(2131166857, new DialogInterface.OnClickListener()
      {
        public void onClick(DialogInterface paramAnonymousDialogInterface, int paramAnonymousInt)
        {
          paramAnonymousDialogInterface = getAppData().i();
          paramAnonymousDialogInterface.e().b();
          paramAnonymousDialogInterface.c().c();
          paramAnonymousDialogInterface.b().c();
          paramAnonymousDialogInterface.d().c();
        }
      }).setNegativeButton(2131166235, null).create();
    case 2131690858: 
      final LocaleSettings localLocaleSettings = AppData.b().g();
      LocaleSettings.DISTANCE_UNIT localDISTANCE_UNIT = localLocaleSettings.b(this);
      AppData.a(ViewIri.DistanceUnit, "unit", localDISTANCE_UNIT.name().toLowerCase(Locale.US));
      new AlertDialog.Builder(this).setTitle(2131165789).setNegativeButton(getString(2131165583), null).setSingleChoiceItems(LocaleSettings.DISTANCE_UNIT.getResourceNames(this), localDISTANCE_UNIT.ordinal(), new DialogInterface.OnClickListener()
      {
        public void onClick(DialogInterface paramAnonymousDialogInterface, int paramAnonymousInt)
        {
          LocaleSettings.DISTANCE_UNIT localDISTANCE_UNIT = LocaleSettings.DISTANCE_UNIT.values()[paramAnonymousInt];
          localLocaleSettings.a(localDISTANCE_UNIT, getAppData());
          AppData.a(EventIri.DistanceUnitChanged, "unit", localDISTANCE_UNIT.name().toLowerCase(Locale.US));
          paramAnonymousDialogInterface.dismiss();
        }
      }).create();
    }
    if ((c.getActiveNetworkInfo() == null) || (!c.getActiveNetworkInfo().isConnected())) {
      return new AlertDialog.Builder(this).setTitle(2131166644).setMessage(2131165408).setPositiveButton(getString(2131166290), null).create();
    }
    return new AlertDialog.Builder(this).setTitle(2131166644).setMessage(2131166798).setPositiveButton(getString(2131166290), null).create();
  }
  
  public void onError(ApiRequest<?, ?, ?> paramApiRequest, YelpException paramYelpException)
  {
    hideLoadingDialog();
    as.a(paramYelpException.getMessage(this), 0);
  }
  
  public boolean onOptionsItemSelected(MenuItem paramMenuItem)
  {
    return super.onOptionsItemSelected(paramMenuItem);
  }
  
  protected void onPause()
  {
    super.onPause();
    freezeRequest("change_settings", h);
    unregisterReceiver(b);
    AppData.b().o().c();
  }
  
  public void onRequestPermissionsResult(int paramInt, String[] paramArrayOfString, int[] paramArrayOfInt)
  {
    if (paramInt == 250)
    {
      if (com.yelp.android.appdata.k.a(this, PermissionGroup.LOCATION))
      {
        AppData.a(EventIri.BackgroundLocationChanged, "toggle_on", Boolean.valueOf(true));
        AppData.b().s().a();
      }
    }
    else {
      return;
    }
    ((PreferenceToggleView)findViewById(2131690867)).setChecked(false);
    j.edit().putBoolean(getString(2131166959), false).commit();
    as.a(getString(2131166081), 1);
  }
  
  protected void onResume()
  {
    super.onResume();
    h = (com.yelp.android.appdata.webrequests.f)thawRequest("change_settings", h, i);
    registerReceiver(b, co.a);
  }
  
  public void onResumeFragments()
  {
    super.onResumeFragments();
    a(((PreferenceScreenFragment)getSupportFragmentManager().a(2131689997)).b());
  }
  
  protected void onSaveInstanceState(Bundle paramBundle)
  {
    super.onSaveInstanceState(paramBundle);
    paramBundle.putBoolean("has_logged_out", k);
  }
  
  private class a
    extends AsyncTask<String, Void, Boolean>
  {
    private final Geocoder b;
    private final String c;
    
    public a(Geocoder paramGeocoder, String paramString)
    {
      b = paramGeocoder;
      c = paramString;
    }
    
    protected Boolean a(String... paramVarArgs)
    {
      Object localObject = null;
      if (paramVarArgs != null) {}
      try
      {
        if ((paramVarArgs.length != 0) && (paramVarArgs[0] != null)) {
          paramVarArgs = b.getFromLocationName(paramVarArgs[0], 1);
        }
        while ((paramVarArgs != null) && (paramVarArgs.size() > 0))
        {
          paramVarArgs = (Address)paramVarArgs.get(0);
          if (ChangeSettings.b(ChangeSettings.this) != null)
          {
            ChangeSettings.b(ChangeSettings.this).a(true);
            ChangeSettings.b(ChangeSettings.this).a(null);
          }
          ChangeSettings.a(ChangeSettings.this, new dr(paramVarArgs.getLatitude(), paramVarArgs.getLongitude(), ChangeSettings.a(ChangeSettings.this, c)));
          ChangeSettings.b(ChangeSettings.this).f(new Void[0]);
          return Boolean.valueOf(true);
          android.location.Location localLocation = AppData.b().r().c();
          paramVarArgs = (String[])localObject;
          if (localLocation != null) {
            paramVarArgs = b.getFromLocation(localLocation.getLatitude(), localLocation.getLongitude(), 1);
          }
        }
        Log.e("ChangeSettings", "Location is null.");
      }
      catch (IOException paramVarArgs)
      {
        for (;;)
        {
          Log.e("ChangeSettings", paramVarArgs.getLocalizedMessage(), paramVarArgs);
        }
      }
      return Boolean.valueOf(false);
    }
    
    protected void a(Boolean paramBoolean)
    {
      if (!paramBoolean.booleanValue())
      {
        c();
        getHelper().f();
        ChangeSettings.c(ChangeSettings.this);
      }
    }
  }
  
  public static abstract interface b
  {
    public abstract void a();
    
    public abstract void b();
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.ui.activities.settings.ChangeSettings
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */