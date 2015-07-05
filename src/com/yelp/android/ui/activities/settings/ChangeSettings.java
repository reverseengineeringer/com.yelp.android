package com.yelp.android.ui.activities.settings;

import android.annotation.SuppressLint;
import android.app.AlertDialog;
import android.app.AlertDialog.Builder;
import android.app.Dialog;
import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.DialogInterface.OnClickListener;
import android.content.Intent;
import android.content.SharedPreferences;
import android.content.SharedPreferences.Editor;
import android.content.res.Configuration;
import android.content.res.Resources;
import android.location.Geocoder;
import android.net.ConnectivityManager;
import android.net.NetworkInfo;
import android.net.Uri;
import android.os.Bundle;
import android.support.v4.app.Fragment;
import android.support.v4.app.FragmentManager;
import android.support.v4.app.FragmentManager.BackStackEntry;
import android.support.v4.app.FragmentManager.OnBackStackChangedListener;
import android.support.v4.app.FragmentTransaction;
import android.text.SpannableStringBuilder;
import android.text.TextUtils;
import android.text.method.LinkMovementMethod;
import android.text.style.URLSpan;
import android.util.SparseArray;
import android.view.MenuItem;
import android.view.View;
import android.widget.TextView;
import com.yelp.android.analytics.iris.ViewIri;
import com.yelp.android.appdata.AppData;
import com.yelp.android.appdata.BaseYelpApplication;
import com.yelp.android.appdata.LocaleSettings;
import com.yelp.android.appdata.LocaleSettings.DISTANCE_UNIT;
import com.yelp.android.appdata.LocationService;
import com.yelp.android.appdata.RemoteConfigPreferences;
import com.yelp.android.appdata.RemoteConfigPreferences.NotificationLocation;
import com.yelp.android.appdata.RemoteConfigPreferences.NotificationSchedule;
import com.yelp.android.appdata.webrequests.ApiRequest;
import com.yelp.android.appdata.webrequests.YelpException;
import com.yelp.android.appdata.webrequests.aq;
import com.yelp.android.appdata.webrequests.ar;
import com.yelp.android.appdata.webrequests.dc;
import com.yelp.android.appdata.webrequests.eq;
import com.yelp.android.appdata.webrequests.er;
import com.yelp.android.appdata.webrequests.fl;
import com.yelp.android.ui.activities.ActivityCreateAccount;
import com.yelp.android.ui.activities.ActivityLogin;
import com.yelp.android.ui.activities.ActivityTwitterSignIn;
import com.yelp.android.ui.activities.FacebookConnectManager;
import com.yelp.android.ui.activities.FacebookConnectManager.FbPermissionSet;
import com.yelp.android.ui.activities.fg;
import com.yelp.android.ui.activities.nearby.ActivityNearby;
import com.yelp.android.ui.activities.support.WebViewActivity;
import com.yelp.android.ui.activities.support.WebViewActivity.Feature;
import com.yelp.android.ui.activities.support.YelpActivity;
import com.yelp.android.ui.util.cr;
import com.yelp.android.util.StringUtils;
import java.util.Collections;
import java.util.EnumSet;
import java.util.Locale;
import java.util.Map;
import java.util.TreeMap;

public class ChangeSettings
  extends YelpActivity
  implements FragmentManager.OnBackStackChangedListener, com.yelp.android.appdata.webrequests.m<RemoteConfigPreferences>, an, com.yelp.android.ui.activities.support.o
{
  private static final RemoteConfigPreferences.NotificationLocation[] i = { RemoteConfigPreferences.NotificationLocation.ALL_CITIES, RemoteConfigPreferences.NotificationLocation.MY_CITY };
  private static final RemoteConfigPreferences.NotificationSchedule[] j = { RemoteConfigPreferences.NotificationSchedule.ALL_ALERTS, RemoteConfigPreferences.NotificationSchedule.AFTER_CHECK_IN, RemoteConfigPreferences.NotificationSchedule.WEEKENDS_ONLY };
  View a;
  com.yelp.android.appdata.webrequests.m<er> b = new n(this);
  DialogInterface.OnClickListener c = new e(this);
  DialogInterface.OnClickListener d = new f(this);
  BroadcastReceiver e = new g(this);
  private ConnectivityManager f;
  private eq g;
  private AlertDialog h;
  private FacebookConnectManager<ChangeSettings> k;
  private q l;
  private Map<String, t> m;
  private SparseArray<ao> n;
  private SharedPreferences o;
  private boolean p;
  
  public static Intent a(Context paramContext, int paramInt, String paramString)
  {
    paramContext = new Intent(paramContext, ChangeSettings.class);
    paramContext.putExtra("preferences.resourceid", paramInt);
    paramContext.putExtra("preferences.title", paramString);
    return paramContext;
  }
  
  public static String a(SharedPreferences paramSharedPreferences, Context paramContext)
  {
    String str2 = paramSharedPreferences.getString(paramContext.getString(2131165978), null);
    String str1 = str2;
    if (str2 == null)
    {
      str1 = AppData.b().m().p();
      if (str1 != null) {
        a(paramContext.getString(2131165978), str1, paramSharedPreferences);
      }
    }
    else
    {
      return str1;
    }
    return "";
  }
  
  public static void a(String paramString1, String paramString2, SharedPreferences paramSharedPreferences)
  {
    paramSharedPreferences.edit().putString(paramString1, paramString2).commit();
  }
  
  private void f()
  {
    if (!AppData.b().n().b())
    {
      onProvidersRequired(this, false, 0);
      return;
    }
    showDialog(2131493996);
  }
  
  private void g()
  {
    o localo = new o(this);
    d locald = new d(this);
    AlertDialog.Builder localBuilder = new AlertDialog.Builder(this);
    localBuilder.setTitle(2131166026).setMessage(2131165377).setPositiveButton(2131166906, locald).setNegativeButton(2131165457, locald).setOnCancelListener(localo);
    h = localBuilder.create();
    h.show();
  }
  
  private CharSequence h()
  {
    String str1 = getString(2131166682);
    String str2 = getString(2131166361);
    String str3 = getString(2131165307);
    String str4 = getString(2131165646);
    String str5 = getString(2131166365);
    String str6 = getString(2131166683);
    String str7 = getString(2131165308);
    String str8 = getString(2131165647);
    String str9 = getString(2131166742, new Object[] { str1, str2, str3, str4 });
    SpannableStringBuilder localSpannableStringBuilder = new SpannableStringBuilder(str9);
    int i1 = str9.indexOf(str1);
    int i2 = str1.length();
    int i3 = str9.indexOf(str2);
    int i4 = str2.length();
    int i5 = str9.indexOf(str3);
    int i6 = str3.length();
    int i7 = str9.indexOf(str4);
    int i8 = str4.length();
    localSpannableStringBuilder.setSpan(new URLSpan(str6), i1, i2 + i1, 33);
    localSpannableStringBuilder.setSpan(new URLSpan(str5), i3, i4 + i3, 33);
    localSpannableStringBuilder.setSpan(new URLSpan(str7), i5, i6 + i5, 33);
    localSpannableStringBuilder.setSpan(new URLSpan(str8), i7, i8 + i7, 33);
    return localSpannableStringBuilder;
  }
  
  void a()
  {
    int i2 = n.size();
    int i1 = 0;
    while (i1 < i2)
    {
      int i3 = n.keyAt(i1);
      localObject = (PreferenceView)a.findViewById(i3);
      if (localObject != null) {
        ((ao)n.get(i3)).a((PreferenceView)localObject);
      }
      i1 += 1;
    }
    Object localObject = (PreferenceScreenFragment)getSupportFragmentManager().findFragmentById(2131493332);
    if (localObject != null) {
      ((PreferenceScreenFragment)localObject).a();
    }
  }
  
  void a(int paramInt, t paramt, SharedPreferences.Editor paramEditor)
  {
    if (m.isEmpty()) {
      m = new TreeMap();
    }
    String str = getString(paramInt);
    paramt.a(this, paramEditor, str);
    m.put(str, paramt);
  }
  
  @SuppressLint({"CommitTransaction"})
  public void a(int paramInt, CharSequence paramCharSequence)
  {
    if (paramInt == 2130903398) {}
    for (int i1 = 2130903415;; i1 = 0)
    {
      Object localObject = PreferenceScreenFragment.a(paramInt, paramCharSequence, i1);
      ((PreferenceScreenFragment)localObject).a(this);
      ((PreferenceScreenFragment)localObject).a(n);
      localObject = getSupportFragmentManager().beginTransaction().replace(2131493332, (Fragment)localObject).setTransition(4097);
      if (getSupportFragmentManager().findFragmentById(2131493332) != null) {
        ((FragmentTransaction)localObject).addToBackStack(String.valueOf(paramCharSequence));
      }
      ((FragmentTransaction)localObject).commit();
      return;
    }
  }
  
  void a(View paramView)
  {
    if (paramView == null) {
      return;
    }
    TextView localTextView = (TextView)paramView.findViewById(2131494027);
    localTextView.setText(h());
    localTextView.setMovementMethod(LinkMovementMethod.getInstance());
    ((TextView)paramView.findViewById(2131494028)).setText(getString(2131165659, new Object[] { Integer.valueOf(2015) }));
    localTextView = (TextView)paramView.findViewById(2131494029);
    SpannableStringBuilder localSpannableStringBuilder = new SpannableStringBuilder(getString(2131166743));
    StringUtils.a(localSpannableStringBuilder, "%1$s", getResources().getDrawable(2130838515));
    StringUtils.a(localSpannableStringBuilder, "%2$s", getResources().getDrawable(2130838514));
    localTextView.setText(localSpannableStringBuilder);
    ((TextView)paramView.findViewById(2131494031)).setText(getString(2131166812, new Object[] { BaseYelpApplication.c(this) }));
  }
  
  void a(RemoteConfigPreferences paramRemoteConfigPreferences)
  {
    paramRemoteConfigPreferences = new fl(this, paramRemoteConfigPreferences, getAppData().n().c(), null);
    paramRemoteConfigPreferences.execute(new Void[0]);
    showLoadingDialog(paramRemoteConfigPreferences);
  }
  
  public void a(ApiRequest<?, ?, ?> paramApiRequest, RemoteConfigPreferences paramRemoteConfigPreferences)
  {
    hideLoadingDialog();
    paramApiRequest = getAppData().m().h();
    if (paramRemoteConfigPreferences.b() != null) {
      paramApiRequest.a(paramRemoteConfigPreferences.b());
    }
    if (paramRemoteConfigPreferences.a() != null) {
      paramApiRequest.a(paramRemoteConfigPreferences.a());
    }
    a();
  }
  
  public void a(com.yelp.android.av.i parami)
  {
    k.g();
    new aq(parami).execute(new Void[0]);
  }
  
  public void a(fg<ChangeSettings> paramfg)
  {
    k.a(paramfg);
    k.e();
  }
  
  public void a(PreferenceView paramPreferenceView)
  {
    switch (paramPreferenceView.getId())
    {
    case 2131493989: 
    case 2131493990: 
    default: 
      return;
    case 2131493991: 
      showDialog(2131493991);
      return;
    case 2131493992: 
      showDialog(2131493992);
      return;
    case 2131493993: 
      startActivity(WebViewActivity.getWebIntent(this, Uri.parse(getString(2131166368)), getString(2131166366), ViewIri.PrivacySettings, EnumSet.of(WebViewActivity.Feature.LOGIN), false));
      return;
    case 2131493995: 
      startActivity(ActivityCreateAccount.a(this, false));
      finish();
      return;
    case 2131493994: 
      if (getAppData().m().c())
      {
        g();
        return;
      }
      startActivityForResult(ActivityLogin.a(this), 100);
      return;
    }
    showDialog(paramPreferenceView.getId());
  }
  
  public void a(q paramq)
  {
    l = paramq;
    startActivityForResult(ActivityTwitterSignIn.a(this), 201);
  }
  
  void a(String paramString)
  {
    PreferenceScreenFragment localPreferenceScreenFragment = (PreferenceScreenFragment)getSupportFragmentManager().findFragmentById(2131493332);
    if (localPreferenceScreenFragment != null) {
      localPreferenceScreenFragment.a(paramString);
    }
  }
  
  public void a(String paramString1, String paramString2, boolean paramBoolean, String paramString3)
  {
    if (paramBoolean)
    {
      a(getString(2131165978), paramString2, o);
      a();
      return;
    }
    paramString1 = new p(this, new Geocoder(this, getResourcesgetConfigurationlocale));
    paramString1.execute(new String[] { paramString2 });
    getHelper().a(paramString1);
  }
  
  public void a(String paramString, boolean paramBoolean)
  {
    t localt = (t)m.get(paramString);
    SharedPreferences.Editor localEditor = o.edit();
    if ((localt == null) || (localt.a(this, paramString, Boolean.valueOf(paramBoolean)))) {
      localEditor.putBoolean(paramString, paramBoolean).commit();
    }
  }
  
  public void a(boolean paramBoolean) {}
  
  public void b(com.yelp.android.av.i parami)
  {
    new ar(parami).execute(new Void[0]);
  }
  
  public SharedPreferences c()
  {
    return o;
  }
  
  public ViewIri getIri()
  {
    return ViewIri.Settings;
  }
  
  public void k_() {}
  
  protected void onActivityResult(int paramInt1, int paramInt2, Intent paramIntent)
  {
    if (paramInt1 == 200)
    {
      k.a(paramInt1, paramInt2, paramIntent);
      return;
    }
    if (paramInt1 == 201)
    {
      if (-1 == paramInt2)
      {
        l.a();
        return;
      }
      l.b();
      return;
    }
    if (paramInt1 == 100)
    {
      if ((paramInt2 == -1) && (getAppData().m().c()))
      {
        startActivity(ActivityNearby.a(this));
        return;
      }
      a();
      return;
    }
    super.onActivityResult(paramInt1, paramInt2, paramIntent);
  }
  
  public void onBackPressed()
  {
    if ((p) && (getSupportFragmentManager().getBackStackEntryCount() == 0))
    {
      startActivity(ActivityNearby.a(this));
      return;
    }
    super.onBackPressed();
  }
  
  public void onBackStackChanged()
  {
    FragmentManager localFragmentManager = getSupportFragmentManager();
    String str;
    if (localFragmentManager.getBackStackEntryCount() > 0) {
      str = localFragmentManager.getBackStackEntryAt(localFragmentManager.getBackStackEntryCount() - 1).getName();
    }
    for (;;)
    {
      setTitle(str);
      return;
      str = getString(2131166167);
      a(((PreferenceScreenFragment)localFragmentManager.findFragmentById(2131493332)).b());
    }
  }
  
  protected void onCreate(Bundle paramBundle)
  {
    super.onCreate(paramBundle);
    if (paramBundle != null) {
      p = paramBundle.getBoolean("has_logged_out", false);
    }
    f = ((ConnectivityManager)getSystemService("connectivity"));
    String str = getIntent().getStringExtra("preferences.name");
    paramBundle = str;
    if (TextUtils.isEmpty(str)) {
      paramBundle = getPackageName() + "_preferences";
    }
    o = getSharedPreferences(paramBundle, 4);
    m = Collections.emptyMap();
    k = new FacebookConnectManager(this, 2131166015, null, FacebookConnectManager.FbPermissionSet.DEFAULT_READ_PUBLISH, 200);
    paramBundle = o.edit();
    a(2131165970, new y(), paramBundle);
    a(2131165980, new ae(), paramBundle);
    a(2131165975, new ac(), paramBundle);
    a(2131165971, new z(), paramBundle);
    a(2131165981, new af(), paramBundle);
    a(2131165967, new x(), paramBundle);
    a(2131165976, new ap(), paramBundle);
    a(2131165966, new r(), paramBundle);
    a(2131165968, new v(), paramBundle);
    a(2131165969, new ah(), paramBundle);
    a(2131165974, new ab(), paramBundle);
    a(2131165973, new ad(), paramBundle);
    a(2131165965, new w(), paramBundle);
    paramBundle.commit();
    n = new SparseArray();
    n.put(2131493994, new c(this));
    n.put(2131493996, new h(this));
    n.put(2131493990, new i(this, o));
    n.put(2131493988, new j(this));
    n.put(2131493987, new k(this));
    a = findViewById(2131493332);
    getSupportFragmentManager().addOnBackStackChangedListener(this);
    int i1 = getIntent().getIntExtra("preferences.resourceid", 2130903398);
    str = getIntent().getStringExtra("preferences.title");
    paramBundle = str;
    if (str == null) {
      paramBundle = getString(2131166167);
    }
    a(i1, paramBundle);
  }
  
  protected Dialog onCreateDialog(int paramInt)
  {
    int i2 = 0;
    int i1 = 0;
    Object localObject2 = getAppData().m().h();
    Object localObject1;
    switch (paramInt)
    {
    case 2131493989: 
    case 2131493990: 
    case 2131493993: 
    case 2131493994: 
    case 2131493995: 
    default: 
      return super.onCreateDialog(paramInt);
    case 2131493991: 
      return new AlertDialog.Builder(this).setTitle(2131165517).setMessage(2131165518).setPositiveButton(2131166904, new l(this)).setNegativeButton(2131166185, null).create();
    case 2131493992: 
      localObject1 = AppData.b().g();
      localObject2 = ((LocaleSettings)localObject1).b(this);
      AppData.a(ViewIri.DistanceUnit, "unit", ((LocaleSettings.DISTANCE_UNIT)localObject2).name().toLowerCase(Locale.US));
      return new AlertDialog.Builder(this).setTitle(2131165713).setNegativeButton(getString(2131165457), null).setSingleChoiceItems(LocaleSettings.DISTANCE_UNIT.getResourceNames(this), ((LocaleSettings.DISTANCE_UNIT)localObject2).ordinal(), new m(this, (LocaleSettings)localObject1)).create();
    case 2131493988: 
      localObject1 = RemoteConfigPreferences.NotificationLocation.DEFAULT_LOCATION;
      if (localObject2 != null) {
        localObject1 = ((RemoteConfigPreferences)localObject2).b();
      }
      i2 = i.length;
      paramInt = 0;
      if (paramInt < i2) {
        if (i[paramInt] != localObject1) {
          break;
        }
      }
      break;
    }
    for (;;)
    {
      localObject1 = new CharSequence[i.length];
      i2 = i.length;
      for (;;)
      {
        if (i1 < i2)
        {
          localObject1[i1] = getText(ititleRes);
          i1 += 1;
          continue;
          paramInt += 1;
          break;
        }
      }
      return new AlertDialog.Builder(this).setTitle(2131166223).setSingleChoiceItems((CharSequence[])localObject1, paramInt, d).create();
      localObject1 = RemoteConfigPreferences.NotificationSchedule.DEFAULT_SCHEDULE;
      if (localObject2 != null) {
        localObject1 = ((RemoteConfigPreferences)localObject2).a();
      }
      localObject2 = new CharSequence[j.length];
      i1 = j.length;
      paramInt = 0;
      while (paramInt < i1)
      {
        localObject2[paramInt] = getText(jtitleRes);
        paramInt += 1;
      }
      int i3 = j.length;
      paramInt = 0;
      for (;;)
      {
        i1 = i2;
        if (paramInt < i3)
        {
          if (localObject1 == j[paramInt]) {
            i1 = paramInt;
          }
        }
        else {
          return new AlertDialog.Builder(this).setTitle(2131166220).setSingleChoiceItems((CharSequence[])localObject2, i1, c).create();
        }
        paramInt += 1;
      }
      if ((f.getActiveNetworkInfo() == null) || (!f.getActiveNetworkInfo().isConnected())) {
        return new AlertDialog.Builder(this).setTitle(2131166667).setMessage(2131165272).setPositiveButton(getString(2131166237), null).create();
      }
      return new AlertDialog.Builder(this).setTitle(2131166667).setMessage(2131166831).setPositiveButton(getString(2131166237), null).create();
      paramInt = 0;
    }
  }
  
  public void onError(ApiRequest<?, ?, ?> paramApiRequest, YelpException paramYelpException)
  {
    hideLoadingDialog();
    cr.a(paramYelpException.getMessage(this), 0);
  }
  
  public boolean onOptionsItemSelected(MenuItem paramMenuItem)
  {
    return super.onOptionsItemSelected(paramMenuItem);
  }
  
  protected void onPause()
  {
    super.onPause();
    unregisterReceiver(e);
  }
  
  protected void onResume()
  {
    super.onResume();
    registerReceiver(e, dc.a);
  }
  
  public void onResumeFragments()
  {
    super.onResumeFragments();
    a(((PreferenceScreenFragment)getSupportFragmentManager().findFragmentById(2131493332)).b());
  }
  
  protected void onSaveInstanceState(Bundle paramBundle)
  {
    super.onSaveInstanceState(paramBundle);
    paramBundle.putBoolean("has_logged_out", p);
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.ui.activities.settings.ChangeSettings
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */