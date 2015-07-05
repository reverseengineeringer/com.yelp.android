package com.yelp.android.ui.activities.support;

import android.annotation.TargetApi;
import android.app.Dialog;
import android.content.BroadcastReceiver;
import android.content.ComponentName;
import android.content.Intent;
import android.content.IntentFilter;
import android.content.pm.PackageManager;
import android.content.res.Configuration;
import android.content.res.Resources;
import android.content.res.Resources.Theme;
import android.content.res.TypedArray;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.LayerDrawable;
import android.net.Uri;
import android.os.Bundle;
import android.os.Handler;
import android.support.v4.app.FragmentManager;
import android.support.v4.app.FragmentTransaction;
import android.support.v4.view.ce;
import android.support.v4.widget.DrawerLayout;
import android.support.v7.app.ActionBar;
import android.support.v7.app.ActionBarActivity;
import android.support.v7.app.p;
import android.support.v7.widget.Toolbar;
import android.view.LayoutInflater;
import android.view.Menu;
import android.view.MenuItem;
import android.view.View;
import android.view.ViewGroup;
import android.view.Window;
import android.widget.FrameLayout;
import android.widget.ImageButton;
import com.yelp.android.analytics.iris.AutoIri;
import com.yelp.android.analytics.iris.EventIri;
import com.yelp.android.analytics.iris.ViewIri;
import com.yelp.android.appdata.AppData;
import com.yelp.android.appdata.ab;
import com.yelp.android.appdata.i;
import com.yelp.android.appdata.webrequests.ApiRequest;
import com.yelp.android.appdata.webrequests.YelpApiWorkerFragment;
import com.yelp.android.appdata.webrequests.YelpException;
import com.yelp.android.appdata.webrequests.dc;
import com.yelp.android.appdata.webrequests.j;
import com.yelp.android.appdata.webrequests.m;
import com.yelp.android.database.q;
import com.yelp.android.ui.activities.ActivityLogin;
import com.yelp.android.ui.activities.ActivityRateAppPrompt;
import com.yelp.android.ui.activities.drawer.DrawerFragment;
import com.yelp.android.ui.activities.ez;
import com.yelp.android.ui.activities.nearby.ActivityNearby;
import com.yelp.android.ui.activities.search.SearchBusinessesByList;
import com.yelp.android.ui.dialogs.PrivacyPolicyDialog;
import com.yelp.android.ui.dialogs.UpdatePromptDialogFragment;
import com.yelp.android.ui.k;
import com.yelp.android.ui.panels.PanelError;
import com.yelp.android.ui.panels.PanelLoading;
import com.yelp.android.ui.panels.aa;
import com.yelp.android.ui.view.KeyboardAwareLinearLayout;
import com.yelp.android.ui.view.a;
import com.yelp.android.util.ErrorType;
import com.yelp.android.util.ObjectDirtyEvent;
import java.util.Collections;
import java.util.Date;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Random;
import java.util.Set;
import java.util.concurrent.TimeUnit;

public abstract class YelpActivity
  extends ActionBarActivity
  implements com.yelp.android.ui.activities.drawer.o, ez, n
{
  public static final String API_WORKER_FRAGMENT = "API_WORKER_FRAGMENT";
  private static final int DAYS_INSTALLED_BEFORE_RATE_APP = 10;
  private static final String EXTRA_ANDROID_REFERRER = "android.intent.extra.REFERRER";
  private static final String EXTRA_ANDROID_REFERRER_NAME = "android.intent.extra.REFERRER_NAME";
  private static final String EXTRA_LAUNCHED_FROM_PUSH = "extra.launched_from_push";
  private static final String GOOGLE_MARKET_PACKAGE_NAME = "com.android.vending";
  private static final String SAVED_CACHED_TITLE = "cached_title";
  private static final String SAVED_HOT_BUTTONS_ENABLED = "hot_buttons_disabled";
  private static final String SAVED_ID = "id";
  private static final int TOOLBAR_HOME_AS_UP = 2;
  private static final int TOOLBAR_SHOW_TITLE = 4;
  private static final int TOOLBAR_USE_CUSTOM = 8;
  private YelpApiWorkerFragment mApiWorkerFragment;
  private boolean mAreHotButtonsEnabled;
  private final Set<BroadcastReceiver> mBroadcastReceivers = new HashSet();
  private String mCachedTitle;
  private long mComponentId;
  private DrawerFragment mDrawerFragment;
  private f mDrawerLauncher;
  private p mDrawerToggle;
  private ImageButton mFeedHotButton;
  private h mHelper;
  private KeyboardAwareLinearLayout mHotButtons;
  private a mKeyboardListener = new d(this);
  private View mNearbyHotButton;
  BroadcastReceiver mNotificationUpdateReceiver = new e(this);
  private View mSearchHotButton;
  
  private ViewGroup clearContentView()
  {
    ViewGroup localViewGroup = (ViewGroup)findViewById(2131493332);
    localViewGroup.removeAllViews();
    return localViewGroup;
  }
  
  private Uri getReferrerUri()
  {
    Object localObject = getIntent();
    Uri localUri = (Uri)((Intent)localObject).getParcelableExtra("android.intent.extra.REFERRER");
    if (localUri != null) {
      return localUri;
    }
    localObject = ((Intent)localObject).getStringExtra("android.intent.extra.REFERRER_NAME");
    if (localObject != null) {
      return Uri.parse((String)localObject);
    }
    return null;
  }
  
  private boolean isLaunchFromReferral()
  {
    if (getReferrerUri() == null) {
      return false;
    }
    String str = getReferrerUri().getScheme();
    int i = -1;
    switch (str.hashCode())
    {
    }
    for (;;)
    {
      switch (i)
      {
      default: 
        return false;
      }
      return true;
      if (str.equals("http"))
      {
        i = 0;
        continue;
        if (str.equals("https"))
        {
          i = 1;
          continue;
          if (str.equals("android-app")) {
            i = 2;
          }
        }
      }
    }
  }
  
  private boolean paramIsSet(int paramInt1, int paramInt2)
  {
    return (paramInt1 & paramInt2) != 0;
  }
  
  public static void setIntentAsFromPushNotification(Intent paramIntent)
  {
    paramIntent.putExtra("extra.launched_from_push", true);
  }
  
  private boolean shouldLaunchRateAppPrompt()
  {
    if ((this instanceof ActivityRateAppPrompt)) {}
    i locali;
    Date localDate;
    int i;
    do
    {
      return false;
      locali = getAppData().f();
      localDate = locali.h();
      i = locali.i();
    } while ((!"com.android.vending".equals(getPackageManager().getInstallerPackageName(getPackageName()))) || (!getAppData().m().c()) || (locali.n() < i) || (locali.j()) || (TimeUnit.MILLISECONDS.toSeconds(System.currentTimeMillis() - localDate.getTime()) / 86400L < 10L));
    return true;
  }
  
  private void showStartupPrompt()
  {
    i locali = getAppData().f();
    if (locali.C()) {
      PrivacyPolicyDialog.a(locali.E()).show(getSupportFragmentManager(), null);
    }
    do
    {
      return;
      if (locali.A())
      {
        UpdatePromptDialogFragment.a(locali.B()).show(getSupportFragmentManager(), null);
        return;
      }
    } while (!shouldLaunchRateAppPrompt());
    AppData.a(AutoIri.AppRate);
    startActivity(ActivityRateAppPrompt.a(this));
  }
  
  private void updateIconBadges()
  {
    int i = 0;
    if (AppData.b().m().c()) {
      i = ab.a().d();
    }
    if (mFeedHotButton != null) {
      mFeedHotButton.setImageDrawable(new com.yelp.android.bd.b(this, i));
    }
    if (findViewById(2131493628) != null) {
      ((Toolbar)findViewById(2131493634)).setNavigationIcon(getResources().getDrawable(2130838194));
    }
  }
  
  protected void addStatusView(View paramView)
  {
    mHelper.b(paramView);
  }
  
  public void clearError()
  {
    mHelper.r();
  }
  
  public void closeNavDrawer()
  {
    DrawerLayout localDrawerLayout = (DrawerLayout)findViewById(2131493628);
    if (localDrawerLayout != null) {
      localDrawerLayout.i(localDrawerLayout.findViewById(2131493635));
    }
  }
  
  protected PanelError createErrorPanel()
  {
    return mHelper.k();
  }
  
  protected PanelLoading createLoadingPanel()
  {
    return mHelper.l();
  }
  
  protected void disableHotButtons()
  {
    mAreHotButtonsEnabled = false;
    setHotButtonKeyboardListener(null);
    hideHotButtons();
  }
  
  public void disableLoading()
  {
    mHelper.q();
  }
  
  public void enableLoading()
  {
    enableLoading(null);
  }
  
  public void enableLoading(ApiRequest<?, ?, ?> paramApiRequest)
  {
    enableLoading(paramApiRequest, 0);
  }
  
  public void enableLoading(ApiRequest<?, ?, ?> paramApiRequest, int paramInt)
  {
    mHelper.a(paramApiRequest, paramInt);
  }
  
  protected View findViewById(int paramInt1, int paramInt2)
  {
    return mHelper.a(paramInt1, paramInt2);
  }
  
  public <Request extends ApiRequest<?, ?, Result>, Result> void freezeRequest(String paramString, Request paramRequest)
  {
    mApiWorkerFragment.a(paramString, paramRequest);
  }
  
  public <Request extends com.yelp.android.appdata.webrequests.h<?, ?, Result>, Result> void freezeRequest(String paramString, Request paramRequest)
  {
    mApiWorkerFragment.a(paramString, paramRequest);
  }
  
  public AppData getAppData()
  {
    return mHelper.m();
  }
  
  public long getComponentId()
  {
    return mComponentId;
  }
  
  public q getDatabase()
  {
    return mHelper.n();
  }
  
  protected PanelError getErrorPanel()
  {
    return mHelper.i();
  }
  
  public Handler getHandler()
  {
    return mHelper.o();
  }
  
  public h getHelper()
  {
    return mHelper;
  }
  
  public abstract ViewIri getIri();
  
  protected PanelLoading getLoadingPanel()
  {
    return mHelper.j();
  }
  
  public Map<String, Object> getParametersForIri(com.yelp.android.analytics.iris.b paramb)
  {
    return Collections.emptyMap();
  }
  
  public String getRequestIdForIri(com.yelp.android.analytics.iris.b paramb)
  {
    return null;
  }
  
  protected int getStatusBarColor(int paramInt)
  {
    return paramInt;
  }
  
  public Resources.Theme getSuperTheme()
  {
    return super.getTheme();
  }
  
  public Resources.Theme getTheme()
  {
    initHelper();
    return mHelper.d();
  }
  
  protected List<View> getViewsToHideOnDrawerSelected()
  {
    return Collections.singletonList(findViewById(2131493332));
  }
  
  public void hideHotButtons()
  {
    mNearbyHotButton.setVisibility(8);
    mSearchHotButton.setVisibility(8);
    mFeedHotButton.setVisibility(8);
  }
  
  public void hideLoadingDialog()
  {
    mHelper.f();
  }
  
  protected void hideLogoInToolbar()
  {
    TypedArray localTypedArray = obtainStyledAttributes(com.yelp.android.b.TitlebarThemableComponents);
    Drawable localDrawable = localTypedArray.getDrawable(0);
    getSupportActionBar().a(localDrawable);
    localTypedArray.recycle();
  }
  
  public void initHelper()
  {
    if (mHelper == null) {
      mHelper = new h(this);
    }
  }
  
  protected void initializeActionBar()
  {
    Toolbar localToolbar = (Toolbar)findViewById(2131493634);
    TypedArray localTypedArray1 = obtainStyledAttributes(com.yelp.android.b.ToolbarAttributes);
    if (!localTypedArray1.getBoolean(0, true))
    {
      localToolbar.setVisibility(8);
      localTypedArray1.recycle();
      return;
    }
    TypedArray localTypedArray2 = obtainStyledAttributes(com.yelp.android.b.TitlebarThemableComponents);
    Drawable localDrawable = localTypedArray2.getDrawable(2);
    if (localDrawable != null) {
      localToolbar.setBackgroundDrawable(localDrawable);
    }
    localTypedArray2.recycle();
    int i = localTypedArray1.getInt(1, 0);
    setSupportActionBar(localToolbar);
    if (paramIsSet(i, 2)) {
      getSupportActionBar().a(true);
    }
    for (;;)
    {
      if (!paramIsSet(i, 4)) {
        getSupportActionBar().a("");
      }
      if (paramIsSet(i, 8)) {
        getSupportActionBar().c(true);
      }
      localTypedArray1.recycle();
      return;
      getSupportActionBar().a(false);
    }
  }
  
  protected void initializeHotButtons()
  {
    mHotButtons = ((KeyboardAwareLinearLayout)findViewById(2131493630));
    mNearbyHotButton = findViewById(2131493631);
    mSearchHotButton = findViewById(2131493632);
    mFeedHotButton = ((ImageButton)findViewById(2131493633));
    updateHotButtonVisibility();
  }
  
  public void onBackPressed()
  {
    DrawerLayout localDrawerLayout = (DrawerLayout)findViewById(2131493628);
    if (localDrawerLayout != null)
    {
      View localView = findViewById(2131493635);
      if (localDrawerLayout.j(localView))
      {
        localDrawerLayout.i(localView);
        return;
      }
    }
    super.onBackPressed();
  }
  
  public void onConfigurationChanged(Configuration paramConfiguration)
  {
    super.onConfigurationChanged(paramConfiguration);
    updateHotButtonVisibility();
  }
  
  @TargetApi(21)
  protected void onCreate(Bundle paramBundle)
  {
    boolean bool1 = false;
    initHelper();
    mHelper.a(paramBundle);
    super.onCreate(paramBundle);
    TypedArray localTypedArray = obtainStyledAttributes(com.yelp.android.b.YelpThemeInfo);
    boolean bool2 = localTypedArray.getBoolean(13, true);
    if (!bool2) {
      super.setContentView(2130903127);
    }
    for (;;)
    {
      if (com.yelp.android.appdata.n.a(21))
      {
        int i = getStatusBarColor(localTypedArray.getColor(35, 0));
        if (i != 0) {
          getWindow().setStatusBarColor(i);
        }
      }
      localTypedArray.recycle();
      long l1 = System.currentTimeMillis();
      long l2 = AppData.b().f().K();
      AppData.b().f().a(l1);
      if (l2 + TimeUnit.DAYS.toMillis(1L) < l1) {
        onLongTimeSinceLastLaunch();
      }
      if (bool2)
      {
        initializeHotButtons();
        if ((paramBundle == null) || (paramBundle.getBoolean("hot_buttons_disabled", true))) {
          bool1 = true;
        }
        mAreHotButtonsEnabled = bool1;
      }
      initializeActionBar();
      mApiWorkerFragment = ((YelpApiWorkerFragment)getSupportFragmentManager().findFragmentByTag("API_WORKER_FRAGMENT"));
      if (mApiWorkerFragment == null)
      {
        mApiWorkerFragment = new YelpApiWorkerFragment();
        getSupportFragmentManager().beginTransaction().add(mApiWorkerFragment, "API_WORKER_FRAGMENT").commit();
      }
      if (paramBundle != null) {
        break;
      }
      mComponentId = new Random(System.currentTimeMillis()).nextLong();
      return;
      super.setContentView(2130903246);
      DrawerLayout localDrawerLayout = (DrawerLayout)findViewById(2131493628);
      mDrawerToggle = new p(this, localDrawerLayout, (Toolbar)findViewById(2131493634), 0, 0);
      mDrawerLauncher = new f(this, null);
      localDrawerLayout.setDrawerListener(mDrawerLauncher);
      mDrawerFragment = ((DrawerFragment)getSupportFragmentManager().findFragmentById(2131493635));
    }
    mComponentId = paramBundle.getLong("id");
    mCachedTitle = paramBundle.getString("cached_title");
  }
  
  protected Dialog onCreateDialog(int paramInt)
  {
    Dialog localDialog = mHelper.b(paramInt);
    if (localDialog != null) {
      return localDialog;
    }
    return super.onCreateDialog(paramInt);
  }
  
  protected Dialog onCreateDialog(int paramInt, Bundle paramBundle)
  {
    Dialog localDialog = mHelper.b(paramInt);
    if (localDialog != null) {
      return localDialog;
    }
    return super.onCreateDialog(paramInt, paramBundle);
  }
  
  public boolean onCreateOptionsMenu(Menu paramMenu)
  {
    super.onCreateOptionsMenu(paramMenu);
    k.a(this, paramMenu);
    return true;
  }
  
  protected void onDestroy()
  {
    BroadcastReceiver[] arrayOfBroadcastReceiver = (BroadcastReceiver[])mBroadcastReceivers.toArray(new BroadcastReceiver[mBroadcastReceivers.size()]);
    int j = arrayOfBroadcastReceiver.length;
    int i = 0;
    while (i < j)
    {
      unregisterReceiver(arrayOfBroadcastReceiver[i]);
      i += 1;
    }
    super.onDestroy();
  }
  
  public void onDrawerItemSelected(Intent paramIntent, String paramString)
  {
    ((DrawerLayout)findViewById(2131493628)).i(findViewById(2131493635));
    f.a(mDrawerLauncher, paramIntent);
    if ((paramIntent.getComponent() != null) && (paramIntent.getComponent().getClassName().equals(ActivityLogin.class.getName())) && (!getAppData().m().c())) {
      hideHotButtons();
    }
    if ((paramIntent.getComponent() != null) && (paramIntent.getComponent().getClassName().equals(ActivityNearby.class.getName()))) {
      showLogoInToolbar();
    }
    paramIntent = getViewsToHideOnDrawerSelected().iterator();
    while (paramIntent.hasNext()) {
      ((View)paramIntent.next()).setVisibility(8);
    }
    findViewById(2131493332).setVisibility(8);
    if (getTitle() == null) {}
    for (paramIntent = null;; paramIntent = getTitle().toString())
    {
      mCachedTitle = paramIntent;
      setTitle(paramString);
      return;
    }
  }
  
  public void onError(ApiRequest<?, ?, ?> paramApiRequest, YelpException paramYelpException)
  {
    disableLoading();
    populateError(ErrorType.getTypeFromException(paramYelpException));
  }
  
  protected void onLongTimeSinceLastLaunch()
  {
    if ((getIntent() != null) && (!wasLaunchedFromPushNotification()))
    {
      startActivity(ActivityNearby.a(this));
      overridePendingTransition(0, 0);
    }
  }
  
  public final boolean onMenuOpened(int paramInt, Menu paramMenu)
  {
    return super.onMenuOpened(paramInt, paramMenu);
  }
  
  public boolean onOptionsItemSelected(MenuItem paramMenuItem)
  {
    if ((mDrawerToggle != null) && (mDrawerToggle.a(paramMenuItem)))
    {
      AppData.a(EventIri.DrawerIcon);
      return true;
    }
    return mHelper.a(paramMenuItem);
  }
  
  protected void onPause()
  {
    super.onPause();
    mHelper.b();
    if (mHotButtons != null) {
      mHotButtons.setKeyboardListener(null);
    }
  }
  
  protected void onPrepareDialog(int paramInt, Dialog paramDialog)
  {
    super.onPrepareDialog(paramInt, paramDialog);
    mHelper.a(paramInt, paramDialog);
  }
  
  public boolean onPrepareOptionsMenu(Menu paramMenu)
  {
    return mHelper.a(paramMenu);
  }
  
  public void onProvidersRequired(o paramo, boolean paramBoolean, int paramInt)
  {
    mHelper.a(paramo, paramBoolean, paramInt);
  }
  
  protected void onRestoreInstanceState(Bundle paramBundle)
  {
    super.onRestoreInstanceState(paramBundle);
    mHelper.c(paramBundle);
  }
  
  protected void onResume()
  {
    super.onResume();
    getAppData().u();
    if (!isLaunchFromReferral()) {
      showStartupPrompt();
    }
    updateIconBadges();
    registerDirtyEventReceiver("com.yelp.android.messages.count.update", mNotificationUpdateReceiver);
    registerDirtyEventReceiver("com.yelp.android.notifications.count.update", mNotificationUpdateReceiver);
    mHelper.a();
    if (findViewById(2131493332) != null)
    {
      Iterator localIterator = getViewsToHideOnDrawerSelected().iterator();
      while (localIterator.hasNext()) {
        ((View)localIterator.next()).setVisibility(0);
      }
      updateHotButtonVisibility();
    }
    if (mCachedTitle != null)
    {
      setTitle(mCachedTitle);
      mCachedTitle = null;
    }
    supportInvalidateOptionsMenu();
  }
  
  protected void onSaveInstanceState(Bundle paramBundle)
  {
    super.onSaveInstanceState(paramBundle);
    paramBundle.putLong("id", mComponentId);
    paramBundle.putString("cached_title", mCachedTitle);
    paramBundle.putBoolean("hot_buttons_disabled", mAreHotButtonsEnabled);
    mHelper.b(paramBundle);
  }
  
  protected void onStart()
  {
    super.onStart();
    com.kahuna.sdk.h.c();
  }
  
  protected void onStop()
  {
    super.onStop();
    com.kahuna.sdk.h.d();
  }
  
  protected void onTitleChanged(CharSequence paramCharSequence, int paramInt)
  {
    super.onTitleChanged(paramCharSequence, paramInt);
  }
  
  public void onYesNoDialogSelection(boolean paramBoolean, int paramInt) {}
  
  public void populateError(YelpException paramYelpException)
  {
    populateError(ErrorType.getTypeFromException(paramYelpException));
  }
  
  public void populateError(ErrorType paramErrorType)
  {
    disableLoading();
    clearError();
    mHelper.a(paramErrorType);
  }
  
  public void populateError(ErrorType paramErrorType, aa paramaa)
  {
    disableLoading();
    clearError();
    mHelper.a(paramErrorType, paramaa);
  }
  
  public void registerDirtyEventReceiver(String paramString, BroadcastReceiver paramBroadcastReceiver)
  {
    registerReceiver(paramBroadcastReceiver, ObjectDirtyEvent.a(paramString));
  }
  
  public Intent registerReceiver(BroadcastReceiver paramBroadcastReceiver, IntentFilter paramIntentFilter)
  {
    if (paramBroadcastReceiver != null) {
      mBroadcastReceivers.add(paramBroadcastReceiver);
    }
    return super.registerReceiver(paramBroadcastReceiver, paramIntentFilter);
  }
  
  protected void removeStatusView(View paramView)
  {
    mHelper.c(paramView);
  }
  
  public void removeToolbarElevation()
  {
    ((FrameLayout)findViewById(2131493332)).setForeground(null);
    ce.f(findViewById(2131493634), 0.0F);
  }
  
  public void setContentView(int paramInt)
  {
    ViewGroup localViewGroup = clearContentView();
    getLayoutInflater().inflate(paramInt, localViewGroup);
    onSupportContentChanged();
  }
  
  public void setContentView(View paramView)
  {
    clearContentView().addView(paramView);
    onSupportContentChanged();
  }
  
  protected void setFeedHotButtonSelected(boolean paramBoolean)
  {
    if (mFeedHotButton != null) {
      mFeedHotButton.setSelected(paramBoolean);
    }
  }
  
  protected void setHotButtonKeyboardListener(a parama)
  {
    if (mHotButtons != null) {
      mHotButtons.setKeyboardListener(parama);
    }
  }
  
  protected void setHotButtonListeners()
  {
    mNearbyHotButton.setOnClickListener(new g(this, ActivityNearby.b(this), EventIri.HotButtonNearby));
    mSearchHotButton.setOnClickListener(new g(this, SearchBusinessesByList.a(this), EventIri.HotButtonSearch));
    mFeedHotButton.setOnClickListener(new c(this, null, EventIri.HotButtonFeed));
  }
  
  protected void setNearbyHotButtonSelected(boolean paramBoolean)
  {
    if (mNearbyHotButton != null) {
      mNearbyHotButton.setSelected(paramBoolean);
    }
  }
  
  protected void setSearchHotButtonSelected(boolean paramBoolean)
  {
    if (mSearchHotButton != null) {
      mSearchHotButton.setSelected(paramBoolean);
    }
  }
  
  public void setSuperTheme(int paramInt)
  {
    super.setTheme(paramInt);
  }
  
  public void setTheme(int paramInt)
  {
    initHelper();
    mHelper.a(paramInt);
  }
  
  public void showHotButtons()
  {
    if (!mAreHotButtonsEnabled) {
      mHotButtons.setKeyboardListener(mKeyboardListener);
    }
    mAreHotButtonsEnabled = true;
    mNearbyHotButton.setVisibility(0);
    mSearchHotButton.setVisibility(0);
    mFeedHotButton.setVisibility(0);
  }
  
  public void showInfoDialog(int paramInt)
  {
    mHelper.a(null, getText(paramInt));
  }
  
  public void showInfoDialog(int paramInt1, int paramInt2)
  {
    mHelper.a(getText(paramInt1), getText(paramInt2));
  }
  
  public void showInfoDialog(CharSequence paramCharSequence)
  {
    mHelper.a(null, paramCharSequence);
  }
  
  public void showInfoDialog(CharSequence paramCharSequence1, CharSequence paramCharSequence2)
  {
    mHelper.a(paramCharSequence1, paramCharSequence2);
  }
  
  protected void showLoadingDialog()
  {
    showLoadingDialog(0);
  }
  
  public void showLoadingDialog(int paramInt)
  {
    showLoadingDialog(null, paramInt);
  }
  
  public void showLoadingDialog(ApiRequest<?, ?, ?> paramApiRequest)
  {
    showLoadingDialog(paramApiRequest, null, 0);
  }
  
  public void showLoadingDialog(ApiRequest<?, ?, ?> paramApiRequest, int paramInt)
  {
    showLoadingDialog(paramApiRequest, null, paramInt);
  }
  
  public void showLoadingDialog(ApiRequest<?, ?, ?> paramApiRequest, l paraml)
  {
    showLoadingDialog(paramApiRequest, paraml, 0);
  }
  
  public void showLoadingDialog(ApiRequest<?, ?, ?> paramApiRequest, l paraml, int paramInt)
  {
    mHelper.a(paramApiRequest, paraml, paramInt);
  }
  
  protected void showLogoInToolbar()
  {
    Object localObject = obtainStyledAttributes(com.yelp.android.b.TitlebarThemableComponents);
    Drawable localDrawable1 = ((TypedArray)localObject).getDrawable(1);
    Drawable localDrawable2 = ((TypedArray)localObject).getDrawable(0);
    ((TypedArray)localObject).recycle();
    localObject = new LayerDrawable(new Drawable[] { localDrawable2, localDrawable1 });
    getSupportActionBar().a((Drawable)localObject);
  }
  
  public void showYesNoDialog(int paramInt1, int paramInt2, int paramInt3, int paramInt4)
  {
    showYesNoDialog(getText(paramInt1), paramInt2, paramInt3, paramInt4);
  }
  
  public void showYesNoDialog(CharSequence paramCharSequence, int paramInt1, int paramInt2, int paramInt3)
  {
    mHelper.a(paramCharSequence, paramInt1, paramInt2, paramInt3);
  }
  
  public <Request extends ApiRequest<?, ?, Result>, Result> Request thawRequest(String paramString, Request paramRequest, m<Result> paramm)
  {
    paramString = mApiWorkerFragment.a(paramString, paramm);
    if (paramString != null) {
      paramRequest = paramString;
    }
    return paramRequest;
  }
  
  public <Request extends com.yelp.android.appdata.webrequests.h<?, ?, Result>, Result> Request thawRequest(String paramString, Request paramRequest, j<Result> paramj)
  {
    paramString = mApiWorkerFragment.a(paramString, paramj);
    if (paramString != null) {
      paramRequest = paramString;
    }
    return paramRequest;
  }
  
  public void unregisterReceiver(BroadcastReceiver paramBroadcastReceiver)
  {
    if (mBroadcastReceivers.remove(paramBroadcastReceiver)) {
      super.unregisterReceiver(paramBroadcastReceiver);
    }
  }
  
  protected void updateHotButtonVisibility()
  {
    if (mHotButtons == null) {
      return;
    }
    if (!obtainStyledAttributes(com.yelp.android.b.YelpThemeInfo).getBoolean(14, true))
    {
      disableHotButtons();
      return;
    }
    if ((getResourcesgetConfigurationorientation == 2) || (!mAreHotButtonsEnabled))
    {
      hideHotButtons();
      mHotButtons.setKeyboardListener(null);
      return;
    }
    setHotButtonListeners();
    showHotButtons();
    mHotButtons.setKeyboardListener(mKeyboardListener);
  }
  
  public void updateOptionsMenu()
  {
    supportInvalidateOptionsMenu();
  }
  
  protected boolean wasLaunchedFromPushNotification()
  {
    return getIntent().getBooleanExtra("extra.launched_from_push", false);
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.ui.activities.support.YelpActivity
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */