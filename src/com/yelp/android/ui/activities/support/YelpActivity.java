package com.yelp.android.ui.activities.support;

import android.annotation.SuppressLint;
import android.annotation.TargetApi;
import android.app.Dialog;
import android.app.Fragment;
import android.content.BroadcastReceiver;
import android.content.ComponentName;
import android.content.Context;
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
import android.support.v4.app.l;
import android.support.v4.app.o;
import android.support.v4.view.ai;
import android.support.v4.widget.DrawerLayout;
import android.support.v4.widget.DrawerLayout.f;
import android.support.v7.app.ActionBar;
import android.support.v7.app.ActionBarActivity;
import android.support.v7.widget.Toolbar;
import android.view.LayoutInflater;
import android.view.Menu;
import android.view.MenuItem;
import android.view.View;
import android.view.View.OnClickListener;
import android.view.ViewGroup;
import android.view.Window;
import android.widget.FrameLayout;
import android.widget.ImageButton;
import com.bugsnag.android.Bugsnag;
import com.flipboard.bottomsheet.BottomSheetLayout.State;
import com.kahuna.sdk.p;
import com.yelp.android.analytics.iris.EventIri;
import com.yelp.android.analytics.iris.ViewIri;
import com.yelp.android.appdata.AppData;
import com.yelp.android.appdata.webrequests.ApiRequest;
import com.yelp.android.appdata.webrequests.ApiRequest.b;
import com.yelp.android.appdata.webrequests.YelpApiWorkerFragment;
import com.yelp.android.appdata.webrequests.YelpException;
import com.yelp.android.appdata.webrequests.co;
import com.yelp.android.appdata.webrequests.k;
import com.yelp.android.appdata.webrequests.k.b;
import com.yelp.android.b.a;
import com.yelp.android.database.g;
import com.yelp.android.serializable.InAppNotification;
import com.yelp.android.services.ShareFormatter;
import com.yelp.android.services.push.c.a;
import com.yelp.android.ui.activities.ActivityLogin;
import com.yelp.android.ui.activities.ActivityRateAppPrompt;
import com.yelp.android.ui.activities.backgroundlocation.ActivityBackgroundLocationOptIn;
import com.yelp.android.ui.activities.drawer.DrawerFragment;
import com.yelp.android.ui.activities.drawer.DrawerFragment.a;
import com.yelp.android.ui.activities.feed.ActivityFeed;
import com.yelp.android.ui.activities.nearby.ActivityNearby;
import com.yelp.android.ui.activities.search.SearchBusinessesByList;
import com.yelp.android.ui.dialogs.PrivacyPolicyDialog;
import com.yelp.android.ui.dialogs.UpdatePromptDialogFragment;
import com.yelp.android.ui.dialogs.WhatsNewDialogFragment;
import com.yelp.android.ui.panels.PanelError;
import com.yelp.android.ui.panels.PanelError.a;
import com.yelp.android.ui.panels.PanelLoading;
import com.yelp.android.ui.view.KeyboardAwareLinearLayout;
import com.yelp.android.ui.view.KeyboardAwareLinearLayout.a;
import com.yelp.android.ui.widgets.InAppNotificationView;
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
  implements com.yelp.android.ui.activities.b, DrawerFragment.a, b.d
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
  private a mDrawerLauncher;
  private android.support.v7.app.a mDrawerToggle;
  private ImageButton mFeedHotButton;
  private b mHelper;
  private KeyboardAwareLinearLayout mHotButtons;
  private com.yelp.android.services.push.c mInAppNotificationHelper;
  private p mKahunaInAppMessageListener = new p()
  {
    public void a(String paramAnonymousString, Bundle paramAnonymousBundle)
    {
      paramAnonymousBundle.putString("cohort", paramAnonymousString);
      paramAnonymousString = new InAppNotification(paramAnonymousBundle);
      if (paramAnonymousString.b() <= 1.1D)
      {
        com.yelp.android.services.push.c.a().b(paramAnonymousString, null);
        AppData.a(EventIri.InAppNotificationDelivered, paramAnonymousString.a());
      }
    }
  };
  private KeyboardAwareLinearLayout.a mKeyboardListener = new KeyboardAwareLinearLayout.a()
  {
    public void a()
    {
      hideHotButtons();
    }
    
    public void b()
    {
      showHotButtons();
    }
  };
  private View mNearbyHotButton;
  BroadcastReceiver mNotificationUpdateReceiver = new BroadcastReceiver()
  {
    public void onReceive(Context paramAnonymousContext, Intent paramAnonymousIntent)
    {
      YelpActivity.this.updateIconBadges();
    }
  };
  private com.yelp.android.bx.a mPresenter;
  private View mSearchHotButton;
  private a mShareSheetHelper;
  
  private ViewGroup clearContentView()
  {
    ViewGroup localViewGroup = (ViewGroup)findViewById(2131689997);
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
    com.yelp.android.appdata.c localc;
    Date localDate;
    int i;
    do
    {
      return false;
      localc = getAppData().f();
      localDate = localc.j();
      i = localc.k();
    } while ((!"com.android.vending".equals(getPackageManager().getInstallerPackageName(getPackageName()))) || (!getAppData().q().b()) || (localc.t() < i) || (localc.l()) || (TimeUnit.MILLISECONDS.toSeconds(System.currentTimeMillis() - localDate.getTime()) / 86400L < 10L));
    return true;
  }
  
  private void showStartupPrompt()
  {
    com.yelp.android.appdata.c localc = getAppData().f();
    if (localc.E()) {
      PrivacyPolicyDialog.a(localc.G()).show(getSupportFragmentManager(), null);
    }
    do
    {
      return;
      if (localc.C())
      {
        UpdatePromptDialogFragment.a(localc.D()).show(getSupportFragmentManager(), null);
        return;
      }
      if (localc.h())
      {
        WhatsNewDialogFragment.a().show(getSupportFragmentManager(), null);
        localc.a(WhatsNewDialogFragment.a, false);
        return;
      }
    } while (!shouldLaunchRateAppPrompt());
    AppData.a(EventIri.AppRate);
    startActivity(ActivityRateAppPrompt.a(this));
  }
  
  private void updateIconBadges()
  {
    int i;
    if (AppData.b().q().b()) {
      i = com.yelp.android.appdata.j.a().e();
    }
    for (int j = com.yelp.android.appdata.j.a().f();; j = 0)
    {
      if (mFeedHotButton != null) {
        mFeedHotButton.setImageDrawable(new com.yelp.android.cm.b(this, j));
      }
      if (findViewById(2131690372) != null) {
        ((Toolbar)findViewById(2131690378)).setNavigationIcon(new com.yelp.android.cm.c(this, i + j));
      }
      return;
      i = 0;
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
    DrawerLayout localDrawerLayout = (DrawerLayout)findViewById(2131690372);
    if (localDrawerLayout != null) {
      localDrawerLayout.i(localDrawerLayout.findViewById(2131690379));
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
  
  public <Request extends k<?, ?, Result>, Result> void freezeRequest(String paramString, Request paramRequest)
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
  
  public g getDatabase()
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
  
  public b getHelper()
  {
    return mHelper;
  }
  
  public com.yelp.android.services.push.c getInAppNotificationHelper()
  {
    return mInAppNotificationHelper;
  }
  
  public abstract ViewIri getIri();
  
  protected PanelLoading getLoadingPanel()
  {
    return mHelper.j();
  }
  
  public Map<String, Object> getParametersForIri(com.yelp.android.analytics.iris.a parama)
  {
    return Collections.emptyMap();
  }
  
  public String getRequestIdForIri(com.yelp.android.analytics.iris.a parama)
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
    return Collections.singletonList(findViewById(2131689997));
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
    TypedArray localTypedArray = obtainStyledAttributes(b.a.TitlebarThemableComponents);
    Drawable localDrawable = localTypedArray.getDrawable(0);
    getSupportActionBar().a(localDrawable);
    localTypedArray.recycle();
  }
  
  public void initHelper()
  {
    if (mHelper == null) {
      mHelper = new b(this);
    }
  }
  
  protected void initializeActionBar()
  {
    Toolbar localToolbar = (Toolbar)findViewById(2131690378);
    TypedArray localTypedArray1 = obtainStyledAttributes(b.a.ToolbarAttributes);
    if (!localTypedArray1.getBoolean(0, true))
    {
      localToolbar.setVisibility(8);
      localTypedArray1.recycle();
      return;
    }
    TypedArray localTypedArray2 = obtainStyledAttributes(b.a.TitlebarThemableComponents);
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
    mHotButtons = ((KeyboardAwareLinearLayout)findViewById(2131690374));
    mNearbyHotButton = findViewById(2131690375);
    mSearchHotButton = findViewById(2131690376);
    mFeedHotButton = ((ImageButton)findViewById(2131690377));
    updateHotButtonVisibility();
  }
  
  public void onBackPressed()
  {
    DrawerLayout localDrawerLayout = (DrawerLayout)findViewById(2131690372);
    if (localDrawerLayout != null)
    {
      View localView = findViewById(2131690379);
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
  
  @SuppressLint({"CommitTransaction"})
  @TargetApi(21)
  protected void onCreate(Bundle paramBundle)
  {
    boolean bool1 = false;
    Bugsnag.setContext(getLocalClassName());
    initHelper();
    mHelper.a(paramBundle);
    super.onCreate(paramBundle);
    TypedArray localTypedArray = obtainStyledAttributes(b.a.YelpThemeInfo);
    boolean bool2 = localTypedArray.getBoolean(14, true);
    if (!bool2)
    {
      super.setContentView(2130903139);
      if (com.yelp.android.appdata.f.a(21))
      {
        int i = getStatusBarColor(localTypedArray.getColor(38, 0));
        if (i != 0) {
          getWindow().setStatusBarColor(i);
        }
      }
      localTypedArray.recycle();
      long l1 = System.currentTimeMillis();
      long l2 = AppData.b().f().M();
      AppData.b().f().a(l1);
      if ((l2 + TimeUnit.DAYS.toMillis(1L) < l1) && (!(this instanceof ActivityBackgroundLocationOptIn))) {
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
      mApiWorkerFragment = ((YelpApiWorkerFragment)getSupportFragmentManager().a("API_WORKER_FRAGMENT"));
      if (mApiWorkerFragment == null)
      {
        mApiWorkerFragment = new YelpApiWorkerFragment();
        getSupportFragmentManager().a().a(mApiWorkerFragment, "API_WORKER_FRAGMENT").a();
      }
      if (paramBundle != null) {
        break label358;
      }
      mComponentId = new Random(System.currentTimeMillis()).nextLong();
    }
    for (;;)
    {
      com.kahuna.sdk.j.i().a(mKahunaInAppMessageListener);
      return;
      super.setContentView(2130903296);
      DrawerLayout localDrawerLayout = (DrawerLayout)findViewById(2131690372);
      mDrawerToggle = new android.support.v7.app.a(this, localDrawerLayout, (Toolbar)findViewById(2131690378), 0, 0);
      mDrawerLauncher = new a(null);
      localDrawerLayout.setDrawerListener(mDrawerLauncher);
      mDrawerFragment = ((DrawerFragment)getSupportFragmentManager().a(2131690379));
      break;
      label358:
      mComponentId = paramBundle.getLong("id");
      mCachedTitle = paramBundle.getString("cached_title");
    }
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
    com.yelp.android.ui.f.a(this, paramMenu);
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
    com.kahuna.sdk.j.i().g();
    super.onDestroy();
  }
  
  public void onDrawerItemSelected(Intent paramIntent, String paramString)
  {
    ((DrawerLayout)findViewById(2131690372)).i(findViewById(2131690379));
    a.a(mDrawerLauncher, paramIntent);
    if ((paramIntent.getComponent() != null) && (paramIntent.getComponent().getClassName().equals(ActivityLogin.class.getName())) && (!getAppData().q().b())) {
      hideHotButtons();
    }
    paramIntent = getViewsToHideOnDrawerSelected().iterator();
    while (paramIntent.hasNext()) {
      ((View)paramIntent.next()).setVisibility(8);
    }
    findViewById(2131689997).setVisibility(8);
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
    if ((getIntent() != null) && (!wasLaunchedFromPushNotification()) && (!wasLaunchedFromExternalRequest()))
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
    if (mPresenter != null) {
      mPresenter.c();
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
  
  public void onProvidersRequired(b.e parame, boolean paramBoolean, int paramInt)
  {
    mHelper.a(parame, paramBoolean, paramInt);
  }
  
  protected void onRestart()
  {
    super.onRestart();
    setNearbyHotButtonSelected(false);
    setSearchHotButtonSelected(false);
    setFeedHotButtonSelected(false);
  }
  
  protected void onRestoreInstanceState(Bundle paramBundle)
  {
    super.onRestoreInstanceState(paramBundle);
    mHelper.c(paramBundle);
    mShareSheetHelper = a.a(this, paramBundle);
  }
  
  protected void onResume()
  {
    super.onResume();
    getAppData().z();
    if (!isLaunchFromReferral()) {
      showStartupPrompt();
    }
    updateIconBadges();
    registerDirtyEventReceiver("com.yelp.android.messages.count.update", mNotificationUpdateReceiver);
    registerDirtyEventReceiver("com.yelp.android.notifications.count.update", mNotificationUpdateReceiver);
    mHelper.a();
    if (findViewById(2131689997) != null)
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
    if (mInAppNotificationHelper != null) {
      mInAppNotificationHelper.b();
    }
    if (mPresenter != null) {
      mPresenter.b();
    }
  }
  
  protected void onSameActivityHotButtonClick() {}
  
  protected void onSaveInstanceState(Bundle paramBundle)
  {
    super.onSaveInstanceState(paramBundle);
    paramBundle.putLong("id", mComponentId);
    paramBundle.putString("cached_title", mCachedTitle);
    paramBundle.putBoolean("hot_buttons_disabled", mAreHotButtonsEnabled);
    mHelper.b(paramBundle);
    if (mShareSheetHelper != null) {
      mShareSheetHelper.a(paramBundle);
    }
    if (mPresenter != null) {
      mPresenter.a(paramBundle);
    }
  }
  
  protected void onStart()
  {
    super.onStart();
    com.kahuna.sdk.j.i().a();
  }
  
  protected void onStop()
  {
    super.onStop();
    com.kahuna.sdk.j.i().b();
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
  
  public void populateError(ErrorType paramErrorType, PanelError.a parama)
  {
    disableLoading();
    clearError();
    mHelper.a(paramErrorType, parama);
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
    ((FrameLayout)findViewById(2131689997)).setForeground(null);
    ai.h(findViewById(2131690378), 0.0F);
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
  
  protected void setHotButtonKeyboardListener(KeyboardAwareLinearLayout.a parama)
  {
    if (mHotButtons != null) {
      mHotButtons.setKeyboardListener(parama);
    }
  }
  
  protected void setHotButtonListeners()
  {
    mNearbyHotButton.setOnClickListener(new b(ActivityNearby.b(this), EventIri.HotButtonNearby));
    mSearchHotButton.setOnClickListener(new b(SearchBusinessesByList.c(this), EventIri.HotButtonSearch));
    mFeedHotButton.setOnClickListener(new b(ActivityFeed.a(this), EventIri.HotButtonFeed));
  }
  
  protected void setNearbyHotButtonSelected(boolean paramBoolean)
  {
    if (mNearbyHotButton != null) {
      mNearbyHotButton.setSelected(paramBoolean);
    }
  }
  
  protected void setPresenter(com.yelp.android.bx.a parama)
  {
    mPresenter = parama;
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
  
  public void setupInAppNotification(Class paramClass, Context paramContext, InAppNotificationView paramInAppNotificationView, c.a parama)
  {
    if (mInAppNotificationHelper == null) {
      mInAppNotificationHelper = new com.yelp.android.services.push.c();
    }
    mInAppNotificationHelper.a(paramClass, paramContext, paramInAppNotificationView, parama);
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
  
  public void showLoadingDialog()
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
  
  public void showLoadingDialog(ApiRequest<?, ?, ?> paramApiRequest, b.b paramb)
  {
    showLoadingDialog(paramApiRequest, paramb, 0);
  }
  
  public void showLoadingDialog(ApiRequest<?, ?, ?> paramApiRequest, b.b paramb, int paramInt)
  {
    mHelper.a(paramApiRequest, paramb, paramInt);
  }
  
  protected void showLogoInToolbar()
  {
    Object localObject = obtainStyledAttributes(b.a.TitlebarThemableComponents);
    Drawable localDrawable1 = ((TypedArray)localObject).getDrawable(1);
    Drawable localDrawable2 = ((TypedArray)localObject).getDrawable(0);
    ((TypedArray)localObject).recycle();
    localObject = new LayerDrawable(new Drawable[] { localDrawable2, localDrawable1 });
    getSupportActionBar().a((Drawable)localObject);
  }
  
  public void showShareSheet(ShareFormatter paramShareFormatter)
  {
    if (mShareSheetHelper == null) {
      mShareSheetHelper = new a(this, paramShareFormatter);
    }
    mShareSheetHelper.a(BottomSheetLayout.State.PEEKED);
  }
  
  public void showYesNoDialog(int paramInt1, int paramInt2, int paramInt3, int paramInt4)
  {
    showYesNoDialog(getText(paramInt1), paramInt2, paramInt3, paramInt4);
  }
  
  public void showYesNoDialog(CharSequence paramCharSequence, int paramInt1, int paramInt2, int paramInt3)
  {
    mHelper.a(paramCharSequence, paramInt1, paramInt2, paramInt3);
  }
  
  public void startActivityForResult(Intent paramIntent, int paramInt, Bundle paramBundle)
  {
    com.yelp.android.util.h.a(paramIntent);
    super.startActivityForResult(paramIntent, paramInt, paramBundle);
  }
  
  public void startActivityFromFragment(Fragment paramFragment, Intent paramIntent, int paramInt, Bundle paramBundle)
  {
    com.yelp.android.util.h.a(paramIntent);
    super.startActivityFromFragment(paramFragment, paramIntent, paramInt, paramBundle);
  }
  
  public <Request extends ApiRequest<?, ?, Result>, Result> Request thawRequest(String paramString, Request paramRequest, ApiRequest.b<Result> paramb)
  {
    paramString = mApiWorkerFragment.a(paramString, paramb);
    if (paramString != null) {
      paramRequest = paramString;
    }
    return paramRequest;
  }
  
  public <Request extends k<?, ?, Result>, Result> Request thawRequest(String paramString, Request paramRequest, k.b<Result> paramb)
  {
    paramString = mApiWorkerFragment.a(paramString, paramb);
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
    if (!obtainStyledAttributes(b.a.YelpThemeInfo).getBoolean(15, true))
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
  
  protected boolean wasLaunchedFromExternalRequest()
  {
    return getIntent().getBooleanExtra("yelp:external_request", false);
  }
  
  protected boolean wasLaunchedFromPushNotification()
  {
    return getIntent().getBooleanExtra("extra.launched_from_push", false);
  }
  
  public static enum IntentData
  {
    INSTANCE;
    
    private Object mData;
    
    private IntentData() {}
    
    public static Object popData()
    {
      Object localObject = INSTANCEmData;
      INSTANCEmData = null;
      return localObject;
    }
    
    public static void setData(Object paramObject)
    {
      INSTANCEmData = paramObject;
    }
  }
  
  private class a
    implements DrawerLayout.f
  {
    private boolean b;
    private Intent c;
    
    private a() {}
    
    public void a(int paramInt)
    {
      if ((!b) && ((paramInt == 2) || (paramInt == 1))) {
        mDrawerFragment.a();
      }
    }
    
    public void a(View paramView)
    {
      b = true;
      mDrawerFragment.b();
    }
    
    public void a(View paramView, float paramFloat) {}
    
    public void b(View paramView)
    {
      b = false;
      if (c != null)
      {
        c.setFlags(c.getFlags() | 0x10000);
        startActivity(c);
        c = null;
      }
      mDrawerFragment.c();
    }
  }
  
  private class b
    implements View.OnClickListener
  {
    private Intent b;
    private com.yelp.android.analytics.iris.a c;
    
    public b(Intent paramIntent, com.yelp.android.analytics.iris.a parama)
    {
      b = paramIntent;
      c = parama;
    }
    
    public void onClick(View paramView)
    {
      if (paramView == mFeedHotButton) {
        setFeedHotButtonSelected(true);
      }
      for (;;)
      {
        if (c != null) {
          AppData.a(c);
        }
        if (b.getComponent().equals(new ComponentName(YelpActivity.this, getClass()))) {
          break;
        }
        b.addFlags(65536);
        startActivity(b);
        return;
        if (paramView == mNearbyHotButton) {
          setNearbyHotButtonSelected(true);
        } else if (paramView == mSearchHotButton) {
          setSearchHotButtonSelected(true);
        }
      }
      onSameActivityHotButtonClick();
    }
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.ui.activities.support.YelpActivity
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */