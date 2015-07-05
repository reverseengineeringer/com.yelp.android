package com.yelp.android.ui.activities;

import android.accounts.Account;
import android.accounts.AccountManager;
import android.annotation.SuppressLint;
import android.annotation.TargetApi;
import android.app.AlertDialog.Builder;
import android.app.DatePickerDialog;
import android.app.DatePickerDialog.OnDateSetListener;
import android.app.Dialog;
import android.content.Context;
import android.content.DialogInterface.OnCancelListener;
import android.content.DialogInterface.OnClickListener;
import android.content.Intent;
import android.content.SharedPreferences;
import android.content.SharedPreferences.Editor;
import android.content.res.Resources;
import android.graphics.Bitmap;
import android.graphics.Typeface;
import android.graphics.drawable.BitmapDrawable;
import android.location.Address;
import android.os.AsyncTask;
import android.os.Bundle;
import android.support.v4.app.FragmentManager;
import android.text.SpannableString;
import android.text.TextUtils;
import android.text.format.DateUtils;
import android.text.method.LinkMovementMethod;
import android.text.method.MovementMethod;
import android.text.style.URLSpan;
import android.view.Menu;
import android.view.MenuInflater;
import android.view.MenuItem;
import android.view.View;
import android.view.View.OnFocusChangeListener;
import android.view.animation.TranslateAnimation;
import android.widget.AdapterView.OnItemSelectedListener;
import android.widget.Button;
import android.widget.EditText;
import android.widget.ImageButton;
import android.widget.LinearLayout;
import android.widget.LinearLayout.LayoutParams;
import android.widget.RelativeLayout;
import android.widget.ScrollView;
import android.widget.Spinner;
import android.widget.SpinnerAdapter;
import android.widget.TextView;
import com.yelp.android.analytics.iris.EventIri;
import com.yelp.android.analytics.iris.KahunaEventIri;
import com.yelp.android.analytics.iris.ViewIri;
import com.yelp.android.analytics.iris.b;
import com.yelp.android.analytics.j;
import com.yelp.android.appdata.AppData;
import com.yelp.android.appdata.BaseYelpApplication;
import com.yelp.android.appdata.LocaleSettings;
import com.yelp.android.appdata.LocationService;
import com.yelp.android.appdata.LocationService.Accuracies;
import com.yelp.android.appdata.LocationService.Recentness;
import com.yelp.android.appdata.aa;
import com.yelp.android.appdata.experiment.FirstSearchExperiment;
import com.yelp.android.appdata.experiment.FirstSearchExperiment.Cohort;
import com.yelp.android.appdata.experiment.c;
import com.yelp.android.appdata.webrequests.YelpException;
import com.yelp.android.appdata.webrequests.dc;
import com.yelp.android.appdata.webrequests.di;
import com.yelp.android.serializable.FacebookUser;
import com.yelp.android.ui.activities.account.i;
import com.yelp.android.ui.activities.nearby.ActivityNearby;
import com.yelp.android.ui.activities.support.YelpActivity;
import com.yelp.android.ui.dialogs.FlagsDialog;
import com.yelp.android.ui.dialogs.SimpleListDialogFragment;
import com.yelp.android.ui.dialogs.ao;
import com.yelp.android.ui.dialogs.ap;
import com.yelp.android.ui.dialogs.ar;
import com.yelp.android.ui.util.ImageInputHelper;
import com.yelp.android.ui.util.ImageInputHelper.ImageSource;
import com.yelp.android.ui.util.ak;
import com.yelp.android.ui.util.al;
import com.yelp.android.ui.util.cp;
import com.yelp.android.ui.util.cr;
import com.yelp.android.ui.util.cw;
import com.yelp.android.ui.util.n;
import com.yelp.android.ui.util.p;
import com.yelp.android.webimageview.ImageLoader;
import com.yelp.android.webimageview.WebImageView;
import com.yelp.android.webimageview.WebImageView.ImageLoadedCallback;
import java.io.File;
import java.io.FileNotFoundException;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Calendar;
import java.util.Collections;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Locale;
import java.util.Map;
import java.util.concurrent.atomic.AtomicBoolean;

public class ActivityCreateAccount
  extends YelpActivity
  implements fg<ActivityCreateAccount>, ak, al, WebImageView.ImageLoadedCallback
{
  private static final YelpException e = new YelpException(null, 0);
  private static String f;
  private ImageInputHelper A;
  private boolean B;
  private AtomicBoolean C;
  private String D;
  private FacebookConnectManager<ActivityCreateAccount> E;
  private String F;
  private String G;
  private String H;
  private String[] I;
  private boolean J;
  private int K;
  private boolean L;
  private boolean M;
  private boolean N;
  private boolean O;
  private SharedPreferences P;
  private SharedPreferences.Editor Q;
  private boolean R;
  private String S;
  private cc T;
  private FlagsDialog U;
  private ImageButton V;
  private Locale W;
  private LocaleSettings X;
  private final DatePickerDialog.OnDateSetListener Y = new bl(this);
  private final di Z = new bm(this);
  dc a;
  private final AdapterView.OnItemSelectedListener aa = new bo(this);
  private ar ab = new bp(this);
  private aa ac = new br(this);
  private DialogInterface.OnClickListener ad = new bs(this);
  DialogInterface.OnClickListener b = new bg(this);
  DialogInterface.OnClickListener c = new bh(this);
  DialogInterface.OnCancelListener d = new bi(this);
  private RelativeLayout g;
  private RelativeLayout h;
  private LinearLayout i;
  private WebImageView j;
  private LinearLayout k;
  private Spinner l;
  private Button m;
  private Button n;
  private Button o;
  private EditText p;
  private EditText q;
  private EditText r;
  private EditText s;
  private EditText t;
  private TextView u;
  private TextView v;
  private TextView w;
  private Button x;
  private Button y;
  private int[] z;
  
  public static Intent a(Context paramContext, boolean paramBoolean)
  {
    paramContext = new Intent(paramContext, ActivityCreateAccount.class);
    paramContext.addFlags(536870912);
    paramContext.putExtra("show_skip_button", paramBoolean);
    return paramContext;
  }
  
  private void a(Bitmap paramBitmap)
  {
    findViewById(2131493896).setVisibility(8);
    j.setImageDrawable(new BitmapDrawable(paramBitmap));
    j.setBackgroundResource(2130838258);
  }
  
  private void a(Address paramAddress)
  {
    Object localObject;
    if (!B)
    {
      localObject = new Locale("", paramAddress.getCountryCode());
      a(paramAddress.getCountryCode());
      a((Locale)localObject);
      LocaleSettings localLocaleSettings = new LocaleSettings((Locale)localObject);
      localObject = t;
      if (!localLocaleSettings.e()) {
        break label66;
      }
    }
    label66:
    for (paramAddress = paramAddress.getPostalCode();; paramAddress = paramAddress.getLocality())
    {
      ((EditText)localObject).setText(paramAddress);
      return;
    }
  }
  
  private static final void a(TextView paramTextView)
  {
    MovementMethod localMovementMethod = paramTextView.getMovementMethod();
    if (((localMovementMethod == null) || (!(localMovementMethod instanceof LinkMovementMethod))) && (paramTextView.getLinksClickable())) {
      paramTextView.setMovementMethod(LinkMovementMethod.getInstance());
    }
  }
  
  private void a(ap paramap)
  {
    V.setImageResource(paramap.a());
    W = paramap.b();
    X = new LocaleSettings(W);
    a(paramap.b());
  }
  
  private void a(String paramString)
  {
    Iterator localIterator = ao.b().iterator();
    while (localIterator.hasNext())
    {
      ap localap = (ap)localIterator.next();
      if (TextUtils.equals(localap.b().getCountry(), paramString)) {
        a(localap);
      }
    }
  }
  
  private void a(String paramString1, String paramString2, String paramString3, String paramString4, String paramString5, String paramString6, String paramString7, String paramString8)
  {
    if (TextUtils.isEmpty(paramString1))
    {
      showInfoDialog(2131166582, 2131166339);
      p.requestFocus();
      return;
    }
    if (TextUtils.isEmpty(paramString2))
    {
      showInfoDialog(2131166582, 2131166340);
      q.requestFocus();
      return;
    }
    if (!new i().a(r))
    {
      showInfoDialog(2131166582, 2131166338);
      r.requestFocus();
      return;
    }
    if (!new com.yelp.android.ui.activities.account.h().a(r))
    {
      showInfoDialog(2131166582, 2131165942);
      r.requestFocus();
      return;
    }
    if (TextUtils.isEmpty(paramString4))
    {
      showInfoDialog(2131166582, 2131166341);
      s.requestFocus();
      return;
    }
    if (TextUtils.isEmpty(paramString5))
    {
      if (X.e()) {
        showInfoDialog(2131166582, 2131166342);
      }
      for (;;)
      {
        t.requestFocus();
        return;
        showInfoDialog(2131166582, 2131166337);
      }
    }
    boolean bool;
    String str;
    if ((paramString3.equals(F)) || (Arrays.asList(I).contains(paramString3)))
    {
      bool = true;
      O = bool;
      str = null;
      Object localObject = null;
      if (!X.e()) {
        break label338;
      }
      str = paramString5;
      paramString5 = (String)localObject;
    }
    label338:
    for (;;)
    {
      try
      {
        if (R) {
          break label341;
        }
        a.a(paramString1, paramString2, paramString3, paramString4, paramString5, str, paramString6, paramString7, paramString8, W, O, Z);
        getHelper().g();
        showLoadingDialog(2131166588);
        return;
      }
      catch (FileNotFoundException paramString1)
      {
        Z.a(false, e);
        return;
      }
      bool = false;
      break;
    }
    label341:
    showInfoDialog(getText(2131166582), S);
    b(S);
  }
  
  private void a(Locale paramLocale)
  {
    if (new LocaleSettings(paramLocale).e())
    {
      w.setText(2131166940);
      t.setHint(2131166940);
      return;
    }
    w.setText(2131165516);
    t.setHint(2131165516);
  }
  
  private boolean a(Calendar paramCalendar)
  {
    z[0] = paramCalendar.get(1);
    z[1] = paramCalendar.get(2);
    z[2] = paramCalendar.get(5);
    if ((z[0] != 0) && (z[0] != 1))
    {
      paramCalendar = DateUtils.formatDateTime(this, paramCalendar.getTimeInMillis(), 131072);
      n.setText(paramCalendar);
      v.setText("");
      return true;
    }
    return false;
  }
  
  private void b(String paramString)
  {
    long l1 = System.currentTimeMillis() / 1000L;
    Q.putString("coppa_error_message", paramString);
    Q.putLong("coppa_lockout", 604800L + l1);
    Q.commit();
    R = true;
    S = paramString;
  }
  
  private void d(int paramInt)
  {
    LinearLayout localLinearLayout = k;
    TranslateAnimation localTranslateAnimation = new TranslateAnimation(0.0F, 0.0F, 0.0F, paramInt);
    localTranslateAnimation.setDuration(cw.a);
    localTranslateAnimation.setAnimationListener(new bj(this, localLinearLayout, paramInt));
    localLinearLayout.startAnimation(localTranslateAnimation);
  }
  
  private String[] e()
  {
    Account[] arrayOfAccount = AccountManager.get(this).getAccountsByType("com.google");
    String[] arrayOfString = new String[arrayOfAccount.length];
    int i1 = 0;
    while (i1 < arrayOfString.length)
    {
      arrayOfString[i1] = name;
      i1 += 1;
    }
    return arrayOfString;
  }
  
  private void f()
  {
    j.setOnClickListener(new bv(this));
    m.setOnClickListener(new bw(this));
    t.setOnEditorActionListener(new bx(this));
    V = ((ImageButton)findViewById(2131494044));
    V.setOnClickListener(new by(this));
    W = AppData.b().g().h();
    X = new LocaleSettings(W);
    a(W.getCountry());
    AppData.b().n().a(LocationService.Accuracies.MEDIUM_KM, LocationService.Recentness.HOUR, ac);
    Object localObject = new cb(this, this, 2131230738);
    l.setAdapter((SpinnerAdapter)localObject);
    l.setOnItemSelectedListener(aa);
    n.setOnClickListener(new bz(this));
    o.setOnClickListener(new ca(this));
    s.setTypeface(Typeface.DEFAULT);
    t.addTextChangedListener(new bf(this));
    localObject = new SpannableString(getString(2131166898));
    ((SpannableString)localObject).setSpan(new URLSpan(getString(2131166683)), 0, ((SpannableString)localObject).length(), 33);
    SpannableString localSpannableString = new SpannableString(getString(2131166361));
    localSpannableString.setSpan(new URLSpan(getString(2131166365)), 0, localSpannableString.length(), 33);
    TextView localTextView = (TextView)findViewById(2131494053);
    localTextView.setText(TextUtils.expandTemplate(getText(2131165662), new CharSequence[] { localObject, localSpannableString }));
    a(localTextView);
    h.measure(0, 0);
    int i1 = h.getMeasuredHeight();
    g.measure(0, 0);
    K = ((int)((g.getMeasuredHeight() - i1) * 0.85D));
    a(K);
  }
  
  private void g()
  {
    if (A.b()) {
      a(A.c());
    }
    do
    {
      return;
      if (!TextUtils.isEmpty(D))
      {
        j.setImageUrl(FacebookConnectManager.a(D), true, this);
        return;
      }
    } while (TextUtils.isEmpty(H));
    j.setImageUrl(H, true, this);
  }
  
  @TargetApi(11)
  private void h()
  {
    N = true;
    updateOptionsMenu();
    g.setVisibility(4);
    h.setVisibility(0);
    i.setVisibility(0);
  }
  
  @TargetApi(11)
  private void i()
  {
    N = false;
    updateOptionsMenu();
    findViewById(2131494032).requestFocus();
    g.setVisibility(0);
    h.setVisibility(4);
    i.setVisibility(4);
    p.setText("");
    q.setText("");
    r.setText("");
    s.setText("");
  }
  
  @TargetApi(11)
  private void j()
  {
    if (N) {
      return;
    }
    N = true;
    updateOptionsMenu();
    cw.a(g, cw.a);
    cw.c(h, cw.a);
    cw.c(i, cw.a);
    m();
    ((ScrollView)findViewById(2131493138)).smoothScrollTo(0, 0);
  }
  
  @TargetApi(11)
  private void k()
  {
    findViewById(2131494032).requestFocus();
    N = false;
    updateOptionsMenu();
    ((EditText)findViewById(2131493132)).setText("");
    ((EditText)findViewById(2131493133)).setText("");
    ((EditText)findViewById(2131494008)).setText("");
    ((EditText)findViewById(2131494042)).setText("");
    findViewById(2131494032).requestFocus();
    cw.c(g, cw.a);
    cw.a(h, cw.a);
    cw.a(i, cw.a);
    l();
  }
  
  private void l()
  {
    d(K);
  }
  
  private void m()
  {
    d(-K);
  }
  
  private String n()
  {
    switch (l.getSelectedItemPosition())
    {
    default: 
      return null;
    case 1: 
      return "m";
    }
    return "f";
  }
  
  private String o()
  {
    Object localObject2 = null;
    Object localObject1 = localObject2;
    if (z[0] != 0)
    {
      localObject1 = localObject2;
      if (z[0] != 1)
      {
        localObject1 = Calendar.getInstance();
        ((Calendar)localObject1).set(z[0], z[1], z[2]);
        localObject1 = new SimpleDateFormat("yyyy,MM,dd", Locale.US).format(((Calendar)localObject1).getTime());
      }
    }
    return (String)localObject1;
  }
  
  private String p()
  {
    Object localObject2 = null;
    Object localObject1;
    if (A.b()) {
      localObject1 = A.e().getAbsolutePath();
    }
    do
    {
      do
      {
        return (String)localObject1;
        if (!TextUtils.isEmpty(D)) {
          return ImageLoader.getImageFile(FacebookConnectManager.a(D)).getAbsolutePath();
        }
        localObject1 = localObject2;
      } while (TextUtils.isEmpty(G));
      localObject1 = localObject2;
    } while (TextUtils.isEmpty(H));
    return ImageLoader.getImageFile(H).getAbsolutePath();
  }
  
  private void q()
  {
    D = null;
  }
  
  private void r()
  {
    H = null;
    G = null;
  }
  
  private void s()
  {
    Object localObject = new ArrayList();
    if (p() != null) {
      ((ArrayList)localObject).add("image");
    }
    if (n() != null) {
      ((ArrayList)localObject).add("gender");
    }
    if (o() != null) {
      ((ArrayList)localObject).add("birthdate");
    }
    localObject = TextUtils.join(", ", (Iterable)localObject);
    HashMap localHashMap = new HashMap();
    localHashMap.put("provided_optional_fields", localObject);
    localHashMap.put("email_autoconfirmed", String.valueOf(O));
    AppData.a(EventIri.SignedUp, localHashMap);
    j.a(KahunaEventIri.SignedUp);
  }
  
  public void a()
  {
    Object localObject = e();
    x.setOnClickListener(new be(this));
    int i1 = localObject.length;
    if (i1 == 0) {
      y.setVisibility(8);
    }
    for (;;)
    {
      localObject = new bu(this);
      p.setOnFocusChangeListener((View.OnFocusChangeListener)localObject);
      q.setOnFocusChangeListener((View.OnFocusChangeListener)localObject);
      r.setOnFocusChangeListener((View.OnFocusChangeListener)localObject);
      s.setOnFocusChangeListener((View.OnFocusChangeListener)localObject);
      return;
      y.setOnClickListener(new bq(this, i1));
    }
  }
  
  public void a(int paramInt)
  {
    LinearLayout localLinearLayout = k;
    if (N)
    {
      localLayoutParams = (LinearLayout.LayoutParams)localLinearLayout.getLayoutParams();
      localLayoutParams.setMargins(leftMargin, -paramInt, rightMargin, bottomMargin);
      localLinearLayout.setLayoutParams(localLayoutParams);
      return;
    }
    LinearLayout.LayoutParams localLayoutParams = (LinearLayout.LayoutParams)localLinearLayout.getLayoutParams();
    localLayoutParams.setMargins(leftMargin, 0, rightMargin, bottomMargin);
    localLinearLayout.setLayoutParams(localLayoutParams);
  }
  
  public void a(FacebookConnectManager paramFacebookConnectManager) {}
  
  public void a(FacebookConnectManager paramFacebookConnectManager, Throwable paramThrowable)
  {
    hideLoadingDialog();
    showYesNoDialog(2131165255, 2131166752, 17039360, 4);
  }
  
  public void a(p paramp)
  {
    AppData.a(EventIri.SignUpWithGoogle);
    hideLoadingDialog();
    p.setText(a);
    q.setText(b);
    r.setText(c);
    Object localObject = e;
    switch (bt.a[localObject.ordinal()])
    {
    default: 
      l.setSelection(0);
    }
    for (;;)
    {
      localObject = d;
      if (localObject != null) {
        a((Calendar)localObject);
      }
      if (f != null)
      {
        H = f;
        j.setImageUrl(f, true, this);
      }
      s.requestFocus();
      return;
      J = true;
      l.setSelection(1);
      continue;
      J = true;
      l.setSelection(2);
    }
  }
  
  public void a(File paramFile)
  {
    hideLoadingDialog();
    cp.a(this, getText(2131165338), getText(2131165772));
  }
  
  public boolean a(Bitmap paramBitmap, File paramFile, ImageInputHelper.ImageSource paramImageSource)
  {
    u.setVisibility(8);
    hideLoadingDialog();
    a(paramBitmap);
    q();
    return true;
  }
  
  public FacebookConnectManager<ActivityCreateAccount> b()
  {
    return (FacebookConnectManager)super.getLastCustomNonConfigurationInstance();
  }
  
  protected void b(int paramInt)
  {
    if (I.length == 1) {}
    for (G = I[0];; G = I[paramInt])
    {
      new n(this, G, f, 100).execute(new Void[0]);
      j();
      return;
    }
  }
  
  public void b(FacebookConnectManager paramFacebookConnectManager)
  {
    AppData.a(EventIri.SignUpWithFacebookCanceled);
    hideLoadingDialog();
  }
  
  public FacebookConnectManager c()
  {
    return E;
  }
  
  public void c(int paramInt)
  {
    String str = getResources().getString(paramInt);
    hideLoadingDialog();
    cr.a(str, 1);
  }
  
  public void c(FacebookConnectManager paramFacebookConnectManager)
  {
    AppData.a(EventIri.SignUpWithFacebook);
    hideLoadingDialog();
    j();
    showLoadingDialog(2131166016);
    FacebookUser localFacebookUser = paramFacebookConnectManager.c();
    D = localFacebookUser.getId();
    j.setImageUrl(FacebookConnectManager.a(D), true, this);
    if (TextUtils.isEmpty(p.getText())) {
      p.setText(localFacebookUser.getFirstName());
    }
    if (TextUtils.isEmpty(q.getText())) {
      q.setText(localFacebookUser.getLastName());
    }
    if (l.getSelectedItemPosition() == 0)
    {
      if (!"male".equalsIgnoreCase(localFacebookUser.getGender())) {
        break label257;
      }
      J = true;
      l.setSelection(1);
    }
    for (;;)
    {
      if (paramFacebookConnectManager.d() == FacebookConnectManager.FbPermissionSet.DEFAULT_EMAIL_BIRTHDAY_USER_FRIEND)
      {
        F = localFacebookUser.getEmail();
        if (TextUtils.isEmpty(r.getText())) {
          r.setText(F);
        }
        if (TextUtils.isEmpty(localFacebookUser.getBirthday())) {}
      }
      try
      {
        paramFacebookConnectManager = Calendar.getInstance();
        paramFacebookConnectManager.setTime(new SimpleDateFormat("MM/dd/yyyy", Locale.US).parse(localFacebookUser.getBirthday()));
        a(paramFacebookConnectManager);
        BaseYelpApplication.a("FBConnect", "getting string for facebook profile: " + FacebookConnectManager.a(D), new Object[0]);
        return;
        label257:
        if (!"female".equalsIgnoreCase(localFacebookUser.getGender())) {
          continue;
        }
        J = true;
        l.setSelection(2);
      }
      catch (ParseException paramFacebookConnectManager)
      {
        for (;;) {}
      }
    }
  }
  
  public void d(FacebookConnectManager paramFacebookConnectManager)
  {
    E = paramFacebookConnectManager;
  }
  
  public ViewIri getIri()
  {
    return ViewIri.SignUp;
  }
  
  public Map<String, Object> getParametersForIri(b paramb)
  {
    if (L) {
      return Collections.singletonMap("source", "write_review");
    }
    return super.getParametersForIri(paramb);
  }
  
  public void imageLoaded(WebImageView paramWebImageView)
  {
    u.setVisibility(8);
    A.a();
    hideLoadingDialog();
  }
  
  protected void onActivityResult(int paramInt1, int paramInt2, Intent paramIntent)
  {
    super.onActivityResult(paramInt1, paramInt2, paramIntent);
    if ((paramInt1 == 7) && (E != null)) {
      E.a(paramInt1, paramInt2, paramIntent);
    }
    do
    {
      return;
      if ((paramInt1 == 11) && (E != null))
      {
        E.a(paramInt1, paramInt2, paramIntent);
        E.a(new bk(this));
        return;
      }
      if ((paramInt1 == 6) && (paramInt2 == -1))
      {
        A.a(paramIntent, this).execute(new Context[] { this });
        showLoadingDialog();
        return;
      }
    } while ((paramInt1 != 100) || (paramInt2 != -1));
    new n(this, G, f, 100).execute(new Void[0]);
  }
  
  public void onBackPressed()
  {
    if (N)
    {
      j.reset();
      A.a();
      u.setVisibility(0);
      n.setText("");
      v.setText(2131166279);
      l.setSelection(0);
      r();
      q();
      k();
      return;
    }
    super.onBackPressed();
  }
  
  @SuppressLint({"CommitPrefEdits"})
  public void onCreate(Bundle paramBundle)
  {
    super.onCreate(paramBundle);
    setContentView(2130903077);
    setTitle(2131166589);
    Object localObject = AppData.b();
    a = ((AppData)localObject).m();
    z = new int[] { 1, 1, 1 };
    B = false;
    C = new AtomicBoolean(true);
    f = getString(2131165893);
    I = e();
    j = ((WebImageView)findViewById(2131493446));
    k = ((LinearLayout)findViewById(2131494040));
    l = ((Spinner)findViewById(2131494048));
    m = ((Button)findViewById(2131494047));
    n = ((Button)findViewById(2131494050));
    o = ((Button)findViewById(2131494052));
    p = ((EditText)findViewById(2131493132));
    q = ((EditText)findViewById(2131493133));
    r = ((EditText)findViewById(2131494008));
    s = ((EditText)findViewById(2131494042));
    t = ((EditText)findViewById(2131494045));
    w = ((TextView)findViewById(2131494046));
    u = ((TextView)findViewById(2131493896));
    g = ((RelativeLayout)findViewById(2131494034));
    v = ((TextView)findViewById(2131494051));
    h = ((RelativeLayout)findViewById(2131494039));
    i = ((LinearLayout)findViewById(2131494043));
    A = new ImageInputHelper(((AppData)localObject).h(), 6);
    x = ((Button)findViewById(2131494036));
    y = ((Button)findViewById(2131494035));
    localObject = getIntent().getExtras();
    L = ((Bundle)localObject).getBoolean("signup_from_review", false);
    if (localObject != null) {
      M = ((Bundle)localObject).getBoolean("show_skip_button");
    }
    P = getPreferences(0);
    Q = P.edit();
    long l1 = P.getLong("coppa_lockout", 0L);
    S = P.getString("coppa_error_message", "");
    if (l1 > System.currentTimeMillis() / 1000L) {
      R = true;
    }
    if (paramBundle != null)
    {
      M = paramBundle.getBoolean("show_skip_button");
      D = paramBundle.getString("FBUID_tag");
      localObject = Calendar.getInstance();
      ((Calendar)localObject).clear();
      z = paramBundle.getIntArray("birthdate");
      ((Calendar)localObject).set(z[0], z[1], z[2]);
      a((Calendar)localObject);
      A.b(paramBundle);
      F = paramBundle.getString("facebookEmail");
      G = paramBundle.getString("googleEmail");
      H = paramBundle.getString("googlePhoto");
      N = paramBundle.getBoolean("full_form");
      J = paramBundle.getBoolean("auto_birthdate");
    }
    U = ((FlagsDialog)getSupportFragmentManager().findFragmentByTag("flags_dialog"));
    if (U != null) {
      U.a(ab);
    }
    paramBundle = (SimpleListDialogFragment)getSupportFragmentManager().findFragmentByTag("photo_add_dialog");
    if (paramBundle != null) {
      paramBundle.a(A.b(this));
    }
    if (N) {
      h();
    }
    for (;;)
    {
      f();
      E = b();
      if (E != null)
      {
        E.a(this);
        E.a(this);
      }
      a();
      return;
      i();
    }
  }
  
  protected Dialog onCreateDialog(int paramInt)
  {
    switch (paramInt)
    {
    default: 
      return super.onCreateDialog(paramInt);
    case 0: 
      return new DatePickerDialog(this, Y, 1975, 0, 1);
    case 301: 
      localObject = new AlertDialog.Builder(this);
      ((AlertDialog.Builder)localObject).setTitle(2131165902).setNegativeButton(2131166207, b).setPositiveButton(2131166621, c).setOnCancelListener(d);
      return ((AlertDialog.Builder)localObject).create();
    }
    Object localObject = I;
    AlertDialog.Builder localBuilder = new AlertDialog.Builder(this);
    localBuilder.setTitle(2131166536).setNegativeButton(2131166207, b).setItems((CharSequence[])localObject, c).setOnCancelListener(d);
    return localBuilder.create();
  }
  
  protected void onDestroy()
  {
    super.onDestroy();
    if (T != null) {
      T.cancel(true);
    }
  }
  
  public boolean onOptionsItemSelected(MenuItem paramMenuItem)
  {
    switch (paramMenuItem.getItemId())
    {
    default: 
      return super.onOptionsItemSelected(paramMenuItem);
    }
    AppData.a(EventIri.SignUpCancel, "first_search_experiment", ((FirstSearchExperiment.Cohort)c.b.a()).name());
    if (c.b.a() == FirstSearchExperiment.Cohort.no_search_step) {
      startActivity(ActivityNearby.a(this));
    }
    for (;;)
    {
      return true;
      startActivity(ActivityOnboardingSearch.a(this));
    }
  }
  
  protected void onPause()
  {
    super.onPause();
    a.b(Z);
    hideLoadingDialog();
    if (isFinishing())
    {
      j.setImageDrawable(null);
      A.a();
      C.getAndSet(false);
    }
  }
  
  protected void onPrepareDialog(int paramInt, Dialog paramDialog)
  {
    super.onPrepareDialog(paramInt, paramDialog);
    switch (paramInt)
    {
    default: 
      return;
    }
    AppData.a(EventIri.SignUpGooglePrompt);
  }
  
  public boolean onPrepareOptionsMenu(Menu paramMenu)
  {
    paramMenu.clear();
    if ((!N) && (M)) {
      getMenuInflater().inflate(2131755040, paramMenu);
    }
    return true;
  }
  
  protected void onResume()
  {
    super.onResume();
    g();
    if (a.j())
    {
      a.a(Z);
      super.showLoadingDialog(2131166588);
    }
  }
  
  protected void onSaveInstanceState(Bundle paramBundle)
  {
    super.onSaveInstanceState(paramBundle);
    paramBundle.putIntArray("birthdate", z);
    paramBundle.putCharSequence("FBUID_tag", D);
    paramBundle.putString("facebookEmail", F);
    paramBundle.putString("googleEmail", G);
    paramBundle.putString("googlePhoto", H);
    paramBundle.putBoolean("full_form", N);
    paramBundle.putBoolean("auto_birthdate", J);
    paramBundle.putBoolean("show_skip_button", M);
    A.a(paramBundle);
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.ui.activities.ActivityCreateAccount
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */