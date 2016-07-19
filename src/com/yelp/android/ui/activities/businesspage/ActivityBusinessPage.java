package com.yelp.android.ui.activities.businesspage;

import android.app.AlertDialog;
import android.app.AlertDialog.Builder;
import android.app.Dialog;
import android.content.Context;
import android.content.DialogInterface;
import android.content.DialogInterface.OnClickListener;
import android.content.DialogInterface.OnDismissListener;
import android.content.Intent;
import android.content.res.Resources;
import android.graphics.Shader.TileMode;
import android.graphics.drawable.BitmapDrawable;
import android.graphics.drawable.Drawable;
import android.net.Uri;
import android.os.AsyncTask.Status;
import android.os.Bundle;
import android.os.Handler;
import android.support.v4.app.l;
import android.support.v4.app.o;
import android.text.TextUtils;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewStub;
import android.view.ViewStub.OnInflateListener;
import android.view.animation.Animation;
import android.view.animation.AnimationUtils;
import com.yelp.android.analytics.g;
import com.yelp.android.analytics.i;
import com.yelp.android.analytics.iris.KahunaAttributeIri;
import com.yelp.android.analytics.iris.KahunaEventIri;
import com.yelp.android.analytics.iris.ViewIri;
import com.yelp.android.appdata.AppData;
import com.yelp.android.appdata.BusinessContributionType;
import com.yelp.android.appdata.experiment.ShareToolbarExperiment;
import com.yelp.android.appdata.experiment.ShareToolbarExperiment.Cohort;
import com.yelp.android.appdata.experiment.e;
import com.yelp.android.appdata.webrequests.ApiRequest;
import com.yelp.android.appdata.webrequests.ApiRequest.b;
import com.yelp.android.appdata.webrequests.BusinessSearchRequest.FormatMode;
import com.yelp.android.appdata.webrequests.SearchRequest;
import com.yelp.android.appdata.webrequests.YelpException;
import com.yelp.android.appdata.webrequests.af;
import com.yelp.android.appdata.webrequests.co;
import com.yelp.android.appdata.webrequests.core.MetricsManager;
import com.yelp.android.cn.c;
import com.yelp.android.cn.d;
import com.yelp.android.serializable.BusinessSearchResult;
import com.yelp.android.serializable.PlatformAction;
import com.yelp.android.serializable.RankTitle.Rank;
import com.yelp.android.serializable.YelpBusiness;
import com.yelp.android.serializable.YelpCheckIn;
import com.yelp.android.serializable.YelpDeal;
import com.yelp.android.ui.activities.reviews.ActivityReviewWrite;
import com.yelp.android.ui.activities.reviews.ReviewSource;
import com.yelp.android.ui.activities.support.YelpActivity;
import com.yelp.android.ui.panels.BizAttributesFragment;
import com.yelp.android.ui.panels.BizAttributesFragment.a;
import com.yelp.android.ui.panels.PanelError.a;
import com.yelp.android.ui.util.InverseAccelerateInterpolator;
import com.yelp.android.ui.util.ar;
import com.yelp.android.ui.util.av;
import com.yelp.android.ui.util.av.a;
import com.yelp.android.ui.widgets.MessageAlertBox;
import com.yelp.android.util.ObjectDirtyEvent;
import com.yelp.android.util.StringUtils;
import com.yelp.android.util.YelpLog;
import java.util.List;
import java.util.Map;
import java.util.TreeMap;

public class ActivityBusinessPage
  extends YelpActivity
  implements ApiRequest.b<List<YelpBusiness>>, BusinessPageFragment.a, BusinessPageFragment.b, BusinessPageFragment.c, PanelError.a
{
  private BusinessSearchResult a;
  private YelpBusiness b;
  private String c;
  private String d;
  private boolean e;
  private long f;
  private int g;
  private Animation h;
  private BusinessPageFragment i;
  private af j;
  private ViewGroup k;
  private com.yelp.android.ui.activities.reservations.a l;
  private CharSequence m;
  private CharSequence n;
  private BizAttributesFragment o;
  private SearchRequest p;
  private boolean q;
  private c r;
  private com.yelp.android.cn.b s;
  
  public static Intent a(Context paramContext, BusinessSearchResult paramBusinessSearchResult, SearchRequest paramSearchRequest)
  {
    paramContext = a(paramContext, paramBusinessSearchResult.a(), paramSearchRequest);
    paramContext.putExtra("extra.business_search_result", paramBusinessSearchResult);
    return paramContext;
  }
  
  public static Intent a(Context paramContext, YelpBusiness paramYelpBusiness)
  {
    paramContext = b(paramContext, paramYelpBusiness);
    paramContext.putExtra("require_business_update", true);
    return paramContext;
  }
  
  public static Intent a(Context paramContext, YelpBusiness paramYelpBusiness, int paramInt)
  {
    return b(paramContext, paramYelpBusiness).putExtra("extra.posted_media", paramInt);
  }
  
  public static Intent a(Context paramContext, YelpBusiness paramYelpBusiness, Intent paramIntent)
  {
    return b(paramContext, paramYelpBusiness).putExtra("notification_after_message_the_business", paramIntent);
  }
  
  public static Intent a(Context paramContext, YelpBusiness paramYelpBusiness, BusinessContributionType paramBusinessContributionType)
  {
    paramContext = b(paramContext, paramYelpBusiness);
    paramContext.putExtra("extra.contributing", paramBusinessContributionType.ordinal());
    return paramContext;
  }
  
  public static Intent a(Context paramContext, YelpBusiness paramYelpBusiness, SearchRequest paramSearchRequest)
  {
    paramContext = b(paramContext, paramYelpBusiness);
    if (paramSearchRequest != null) {
      paramContext.putExtra("extra.search_request", paramSearchRequest);
    }
    return paramContext;
  }
  
  public static Intent a(Context paramContext, YelpBusiness paramYelpBusiness, String paramString)
  {
    paramContext = b(paramContext, paramYelpBusiness);
    paramContext.putExtra("top_highlighted_review_id", paramString);
    return paramContext;
  }
  
  public static Intent a(Context paramContext, String paramString)
  {
    paramContext = b(paramContext, paramString);
    paramContext.putExtra("extra.show_logged_out_user_reservation_notification", true);
    return paramContext;
  }
  
  public static Intent a(Context paramContext, String paramString, int paramInt, Uri paramUri, ReviewSource paramReviewSource)
  {
    paramContext = b(paramContext, paramString);
    paramContext.putExtra("extra.write_review_uri", paramUri);
    paramContext.putExtra("extra.write_review_rating", paramInt);
    paramContext.putExtra("extra.write_review_source", paramReviewSource);
    return paramContext;
  }
  
  private void a(YelpCheckIn paramYelpCheckIn)
  {
    o = BizAttributesFragment.a(paramYelpCheckIn);
    getSupportFragmentManager().a().b(2131689943, o).a();
    o.a(new BizAttributesFragment.a()
    {
      public void a()
      {
        b(false);
      }
    });
    k = ((ViewGroup)ar.a(findViewById(2131689742), 2131689745, 2131689744));
    if (paramYelpCheckIn.d().K() == 0) {
      k.findViewById(2131690096).setOnClickListener(null);
    }
    k.setVisibility(0);
    RankTitle.Rank localRank = paramYelpCheckIn.l();
    int i2 = paramYelpCheckIn.w();
    boolean bool = AppData.b().q().j();
    Object localObject1 = StringUtils.a(this, 2131230724, i2, new String[0]);
    Object localObject2 = getString(2131166035);
    int i3;
    int i1;
    if (localRank == RankTitle.Rank.REGULAR)
    {
      paramYelpCheckIn = StringUtils.a(this, 2131166411, new Object[] { StringUtils.a(this, paramYelpCheckIn.v()) });
      i3 = localRank.getRankIconBordered();
      if (i2 > 1) {
        break label351;
      }
      if (!bool) {
        break label344;
      }
      i1 = 2131166680;
      label188:
      localObject1 = getString(i1);
      paramYelpCheckIn = getString(2131166035);
    }
    label344:
    label351:
    for (;;)
    {
      ((BitmapDrawable)getResources().getDrawable(2130838332).mutate()).setTileModeX(Shader.TileMode.REPEAT);
      localObject2 = (MessageAlertBox)k.findViewById(2131690096);
      ((MessageAlertBox)localObject2).setIcon(i3);
      ((MessageAlertBox)localObject2).setTitle((CharSequence)localObject1);
      ((MessageAlertBox)localObject2).setSubtitle(paramYelpCheckIn);
      paramYelpCheckIn = AnimationUtils.loadAnimation(this, 2130968599);
      paramYelpCheckIn.setDuration(250L);
      k.findViewById(2131689897).startAnimation(paramYelpCheckIn);
      k.findViewById(2131690095).startAnimation(AnimationUtils.loadAnimation(this, 2130968610));
      return;
      paramYelpCheckIn = (YelpCheckIn)localObject2;
      if (localRank != RankTitle.Rank.TOP_USER) {
        break;
      }
      if (bool) {}
      for (i1 = 2131166781;; i1 = 2131166780)
      {
        paramYelpCheckIn = getString(i1);
        break;
      }
      i1 = 2131166679;
      break label188;
    }
  }
  
  private void a(final BusinessPageFragment paramBusinessPageFragment, final YelpBusiness paramYelpBusiness)
  {
    long l1 = System.currentTimeMillis() - f;
    if (l1 > 2000L) {}
    for (l1 = 0L;; l1 = 2000L - l1)
    {
      getHandler().postDelayed(new Runnable()
      {
        public void run()
        {
          if (!isFinishing())
          {
            paramBusinessPageFragment.k();
            if (paramYelpBusiness != null) {
              paramBusinessPageFragment.a(paramYelpBusiness);
            }
          }
        }
      }, l1);
      return;
    }
  }
  
  public static Intent b(Context paramContext, YelpBusiness paramYelpBusiness)
  {
    if (paramYelpBusiness.aZ() == BusinessSearchRequest.FormatMode.SHORT) {
      return b(paramContext, paramYelpBusiness.aD());
    }
    paramContext = new Intent(paramContext, ActivityBusinessPage.class);
    paramContext.putExtra("extra.business", paramYelpBusiness);
    return paramContext;
  }
  
  public static Intent b(Context paramContext, String paramString)
  {
    paramContext = new Intent(paramContext, ActivityBusinessPage.class);
    paramContext.putExtra("business_id", paramString);
    return paramContext;
  }
  
  private void f()
  {
    ((ViewStub)findViewById(2131689744)).setOnInflateListener(new ViewStub.OnInflateListener()
    {
      final Context a = ActivityBusinessPage.this;
      
      public void onInflate(ViewStub paramAnonymousViewStub, View paramAnonymousView)
      {
        paramAnonymousView.findViewById(2131690096).setOnClickListener(new ActivityBusinessPage.6.1(this));
        paramAnonymousView.findViewById(2131690086).setOnClickListener(new ActivityBusinessPage.6.2(this));
        paramAnonymousView.findViewById(2131689897).setOnTouchListener(new ActivityBusinessPage.6.3(this));
      }
    });
  }
  
  public void a(int paramInt, CharSequence paramCharSequence)
  {
    m = getText(paramInt);
    n = paramCharSequence;
    showDialog(304);
  }
  
  public void a(Intent paramIntent)
  {
    p = ((SearchRequest)paramIntent.getParcelableExtra("extra.search_request"));
    Object localObject = BusinessContributionType.getType(paramIntent);
    YelpCheckIn localYelpCheckIn;
    if (localObject == BusinessContributionType.CHECK_IN)
    {
      localYelpCheckIn = (YelpCheckIn)((BusinessContributionType)localObject).getContribution(paramIntent);
      localObject = localYelpCheckIn.d();
      a(localYelpCheckIn);
    }
    for (;;)
    {
      g = paramIntent.getIntExtra("extra.posted_media", 0);
      if ((localObject == null) || (e)) {
        if (localObject == null) {
          break label268;
        }
      }
      label268:
      for (c = ((YelpBusiness)localObject).aD();; c = paramIntent.getStringExtra("business_id"))
      {
        if ((c == null) && (paramIntent.getData() != null)) {
          c = paramIntent.getData().getQueryParameter("business_id");
        }
        if ((c != null) && ((j == null) || (!j.u())))
        {
          j = new af(c, this);
          j.f(new Void[0]);
          f = System.currentTimeMillis();
          if ((localObject == null) || (!e)) {
            enableLoading(j);
          }
        }
        if (d == null) {
          d = paramIntent.getStringExtra("top_highlighted_review_id");
        }
        if ((localObject != null) || (c != null)) {
          break label282;
        }
        YelpLog.remoteError(this, "Business is null on startup. Bailing.");
        finish();
        return;
        if (!paramIntent.hasExtra("extra.business")) {
          break label427;
        }
        localObject = (YelpBusiness)paramIntent.getParcelableExtra("extra.business");
        e = paramIntent.getExtras().getBoolean("require_business_update", false);
        localYelpCheckIn = null;
        break;
      }
      label282:
      a = ((BusinessSearchResult)paramIntent.getParcelableExtra("extra.business_search_result"));
      if (localObject != null)
      {
        Intent localIntent = (Intent)getIntent().getParcelableExtra("notification_after_message_the_business");
        b = ((YelpBusiness)localObject);
        i = BusinessPageFragment.a(b, d, p, a, localYelpCheckIn, localIntent);
        disableLoading();
      }
      for (;;)
      {
        localObject = (Uri)paramIntent.getParcelableExtra("extra.write_review_uri");
        if (localObject == null) {
          break;
        }
        int i1 = paramIntent.getIntExtra("extra.write_review_rating", 0);
        paramIntent = ActivityReviewWrite.a(this, c, i1, (ReviewSource)paramIntent.getSerializableExtra("extra.write_review_source"));
        paramIntent.putExtra("yelp:external_request", true);
        paramIntent.addFlags(67108864);
        paramIntent.setData((Uri)localObject);
        startActivity(paramIntent);
        return;
        r = null;
      }
      label427:
      localYelpCheckIn = null;
      localObject = null;
    }
  }
  
  public void a(ApiRequest paramApiRequest)
  {
    if (s != null) {
      s.a(paramApiRequest);
    }
  }
  
  public void a(ApiRequest<?, ?, ?> paramApiRequest, List<YelpBusiness> paramList)
  {
    if (paramList.size() > 0)
    {
      b = ((YelpBusiness)paramList.get(0));
      paramApiRequest = (BusinessPageFragment)getSupportFragmentManager().a(2131689743);
      if (!e)
      {
        paramList = BusinessPageFragment.a(b, d, p, a);
        if ((paramApiRequest != null) && (((!paramApiRequest.isRemoving()) && (!paramApiRequest.isVisible())) || (!paramApiRequest.isVisible())))
        {
          i = paramList;
          MetricsManager.a(this, AppData.b());
        }
      }
    }
    for (;;)
    {
      e = false;
      return;
      getSupportFragmentManager().a().b(2131689743, paramList).a();
      disableLoading();
      break;
      a(paramApiRequest, b);
      break;
      YelpLog.remoteError(this, "BizID request returned no results!");
      finish();
    }
  }
  
  public void a(YelpBusiness paramYelpBusiness)
  {
    b = paramYelpBusiness;
    getIntent().putExtra("extra.business", b);
  }
  
  public void a(boolean paramBoolean)
  {
    q = paramBoolean;
  }
  
  public boolean a()
  {
    return e;
  }
  
  public void b()
  {
    if (r != null)
    {
      r.b();
      r.f();
      r = null;
    }
    if (g > 0) {
      ((BusinessPageFragment)getSupportFragmentManager().a(2131689743)).a(g);
    }
  }
  
  public void b(boolean paramBoolean)
  {
    o.a();
    if (paramBoolean)
    {
      Animation localAnimation = AnimationUtils.loadAnimation(this, 2130968598);
      localAnimation.setInterpolator(new InverseAccelerateInterpolator());
      k.findViewById(2131689897).startAnimation(localAnimation);
      localAnimation.setDuration(av.a);
      getHelper().a(k);
      h.setAnimationListener(new av.a()
      {
        public void onAnimationEnd(Animation paramAnonymousAnimation)
        {
          getSupportFragmentManager().a().a(ActivityBusinessPage.a(ActivityBusinessPage.this)).b();
          getHelper().h();
          ActivityBusinessPage.b(ActivityBusinessPage.this).setVisibility(4);
        }
      });
      k.findViewById(2131690095).startAnimation(h);
      return;
    }
    getSupportFragmentManager().a().a(o).a();
    k.setVisibility(8);
  }
  
  public boolean c()
  {
    return (k != null) && (k.getVisibility() == 0);
  }
  
  public void e()
  {
    if ((s != null) && (s.e()))
    {
      s.b();
      s.f();
      s = null;
    }
  }
  
  public ViewIri getIri()
  {
    if (b == null) {
      return null;
    }
    AppData.b().m().a(KahunaEventIri.Business);
    AppData.b().m().a(KahunaAttributeIri.BusinessCategory, b.e());
    return ViewIri.Business;
  }
  
  public Map<String, Object> getParametersForIri(com.yelp.android.analytics.iris.a parama)
  {
    if (b == null) {
      return null;
    }
    parama = new TreeMap();
    parama.putAll(g.b(b.aD()));
    if ((b.X() != null) && (b.X().k())) {
      parama.put("deal_id", b.X().x());
    }
    parama.put("message_the_business", Boolean.valueOf(BusinessBasicInfo.MESSAGE_THE_BUSINESS.shouldShow(b)));
    parama.put("share_toolbar_experiment", ((ShareToolbarExperiment.Cohort)e.f.b()).name());
    PlatformAction localPlatformAction = b.aH();
    if ((localPlatformAction != null) && (!TextUtils.isEmpty(localPlatformAction.b()))) {
      parama.put("supported_vertical_types", localPlatformAction.b());
    }
    return parama;
  }
  
  public String getRequestIdForIri(com.yelp.android.analytics.iris.a parama)
  {
    if (b == null) {
      return null;
    }
    return b.n();
  }
  
  public void onActivityResult(int paramInt1, int paramInt2, Intent paramIntent)
  {
    super.onActivityResult(paramInt1, paramInt2, paramIntent);
    paramInt1 = (short)paramInt1;
    BusinessPageFragment localBusinessPageFragment = (BusinessPageFragment)getSupportFragmentManager().a(2131689743);
    if (paramInt2 == -1) {
      switch (paramInt1)
      {
      }
    }
    do
    {
      do
      {
        return;
        paramIntent = (YelpCheckIn)BusinessContributionType.CHECK_IN.getContribution(paramIntent);
      } while (paramIntent.d() == null);
      a(paramIntent);
      localBusinessPageFragment.a(paramIntent.d());
      return;
      if (k != null) {
        b(true);
      }
      localBusinessPageFragment.i();
      return;
      localBusinessPageFragment.a(paramIntent);
      return;
      if ((paramInt2 == 3) && (paramInt1 == 1041))
      {
        localBusinessPageFragment.h();
        return;
      }
    } while (paramInt1 != 1050);
    finish();
  }
  
  public void onBackPressed()
  {
    if (c())
    {
      b(true);
      return;
    }
    if (q) {
      new ObjectDirtyEvent(b, "com.yelp.android.bookmarks.remove").a(this);
    }
    super.onBackPressed();
  }
  
  public void onCreate(Bundle paramBundle)
  {
    d locald = AppData.b().D();
    r = locald.b();
    r.a();
    s = locald.c();
    s.a();
    super.onCreate(paramBundle);
    setContentView(2130903075);
    l = new com.yelp.android.ui.activities.reservations.a(305);
    f();
    if (paramBundle != null)
    {
      r = null;
      s = null;
      b = ((YelpBusiness)paramBundle.getParcelable("extra.business"));
      e = paramBundle.getBoolean("require_business_update", false);
      d = paramBundle.getString("top_highlighted_review_id");
      m = paramBundle.getCharSequence("dialog_information_title");
      n = paramBundle.getCharSequence("dialog_information_message");
      p = ((SearchRequest)paramBundle.getParcelable("search_request"));
      a = ((BusinessSearchResult)paramBundle.getParcelable("extra.business_search_result"));
      paramBundle = (BusinessPageFragment)getSupportFragmentManager().a(2131689743);
      if (paramBundle == null) {
        if (b != null) {
          i = BusinessPageFragment.a(b, d, p, a);
        }
      }
    }
    for (;;)
    {
      h = AnimationUtils.loadAnimation(this, 2130968616);
      return;
      a(getIntent());
      continue;
      if ((!paramBundle.isRemoving()) && (!paramBundle.isVisible()))
      {
        i = BusinessPageFragment.a(b, d, p, a);
      }
      else
      {
        paramBundle.a(b);
        disableLoading();
        continue;
        a(getIntent());
      }
    }
  }
  
  protected Dialog onCreateDialog(int paramInt, final Bundle paramBundle)
  {
    paramBundle = (BusinessPageFragment)getSupportFragmentManager().a(2131689743);
    switch (paramInt)
    {
    case 306: 
    default: 
      return super.onCreateDialog(paramInt);
    case 305: 
      return l.a(this);
    case 307: 
      paramBundle = new AlertDialog.Builder(this).setTitle(2131165464).setIcon(0).setMessage(2131166348).setCancelable(true).setPositiveButton(2131165441, new DialogInterface.OnClickListener()
      {
        public void onClick(DialogInterface paramAnonymousDialogInterface, int paramAnonymousInt)
        {
          paramBundle.h();
        }
      }).setNegativeButton(2131165798, null).create();
      paramBundle.setOnDismissListener(new DialogInterface.OnDismissListener()
      {
        public void onDismiss(DialogInterface paramAnonymousDialogInterface)
        {
          removeDialog(307);
        }
      });
      return paramBundle;
    }
    paramBundle = ar.b(this, m, n);
    paramBundle.setOnDismissListener(new DialogInterface.OnDismissListener()
    {
      public void onDismiss(DialogInterface paramAnonymousDialogInterface)
      {
        removeDialog(304);
      }
    });
    return paramBundle;
  }
  
  public void onError(ApiRequest<?, ?, ?> paramApiRequest, YelpException paramYelpException)
  {
    if (e)
    {
      a((BusinessPageFragment)getSupportFragmentManager().a(2131689743), null);
      return;
    }
    super.onError(paramApiRequest, paramYelpException);
  }
  
  protected void onNewIntent(Intent paramIntent)
  {
    setIntent(paramIntent);
    a(paramIntent);
  }
  
  protected void onPause()
  {
    super.onPause();
    freezeRequest("business", j);
    r = null;
    s = null;
  }
  
  protected void onPrepareDialog(int paramInt, Dialog paramDialog)
  {
    switch (paramInt)
    {
    }
    for (;;)
    {
      super.onPrepareDialog(paramInt, paramDialog);
      return;
      l.a(this, paramDialog, null);
    }
  }
  
  protected void onResume()
  {
    j = ((af)thawRequest("business", j, this));
    if (ApiRequest.a(j, AsyncTask.Status.RUNNING)) {
      enableLoading(j);
    }
    super.onResume();
  }
  
  protected void onResumeFragments()
  {
    super.onResumeFragments();
    if (i != null)
    {
      getSupportFragmentManager().a().b(2131689743, i).a();
      i = null;
      disableLoading();
    }
  }
  
  public void onSaveInstanceState(Bundle paramBundle)
  {
    super.onSaveInstanceState(paramBundle);
    paramBundle.putParcelable("extra.business", b);
    if (m == null)
    {
      localObject = "";
      paramBundle.putCharSequence("dialog_information_title", (CharSequence)localObject);
      if (n != null) {
        break label108;
      }
    }
    label108:
    for (Object localObject = "";; localObject = n)
    {
      paramBundle.putCharSequence("dialog_information_message", (CharSequence)localObject);
      paramBundle.putBoolean("require_business_update", e);
      if (p != null) {
        paramBundle.putParcelable("search_request", p);
      }
      if (a != null) {
        paramBundle.putParcelable("extra.business_search_result", a);
      }
      return;
      localObject = m;
      break;
    }
  }
  
  public void q_()
  {
    if ((j == null) || (!j.u()))
    {
      j = new af(c, this);
      j.f(new Void[0]);
      enableLoading(j);
    }
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.ui.activities.businesspage.ActivityBusinessPage
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */