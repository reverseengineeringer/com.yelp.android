package com.yelp.android.ui.activities.businesspage;

import android.app.AlertDialog;
import android.app.AlertDialog.Builder;
import android.app.Dialog;
import android.content.Context;
import android.content.Intent;
import android.content.res.Resources;
import android.graphics.Shader.TileMode;
import android.graphics.drawable.BitmapDrawable;
import android.graphics.drawable.Drawable;
import android.net.Uri;
import android.os.AsyncTask.Status;
import android.os.Bundle;
import android.os.Handler;
import android.support.v4.app.FragmentManager;
import android.support.v4.app.FragmentTransaction;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewStub;
import android.view.animation.Animation;
import android.view.animation.AnimationUtils;
import com.yelp.android.analytics.iris.EventIri;
import com.yelp.android.analytics.iris.KahunaAttributeIri;
import com.yelp.android.analytics.iris.KahunaEventIri;
import com.yelp.android.analytics.iris.ViewIri;
import com.yelp.android.analytics.j;
import com.yelp.android.appdata.AppData;
import com.yelp.android.appdata.BusinessContributionType;
import com.yelp.android.appdata.webrequests.ApiRequest;
import com.yelp.android.appdata.webrequests.BusinessSearchRequest.FormatMode;
import com.yelp.android.appdata.webrequests.SearchRequest;
import com.yelp.android.appdata.webrequests.YelpException;
import com.yelp.android.appdata.webrequests.ac;
import com.yelp.android.appdata.webrequests.dc;
import com.yelp.android.appdata.webrequests.m;
import com.yelp.android.serializable.BusinessSearchResult;
import com.yelp.android.serializable.RankTitle.Rank;
import com.yelp.android.serializable.YelpBusiness;
import com.yelp.android.serializable.YelpCheckIn;
import com.yelp.android.serializable.YelpDeal;
import com.yelp.android.ui.activities.reservations.FindReservation;
import com.yelp.android.ui.activities.support.YelpActivity;
import com.yelp.android.ui.panels.BizAttributesFragment;
import com.yelp.android.ui.panels.aa;
import com.yelp.android.ui.util.InverseAccelerateInterpolator;
import com.yelp.android.ui.util.cp;
import com.yelp.android.ui.util.cw;
import com.yelp.android.ui.widgets.MessageAlertBox;
import com.yelp.android.util.ObjectDirtyEvent;
import com.yelp.android.util.StringUtils;
import com.yelp.android.util.YelpLog;
import java.util.List;
import java.util.Map;
import java.util.TreeMap;

public class ActivityBusinessPage
  extends YelpActivity
  implements m<List<YelpBusiness>>, bv, bw, aa
{
  private BusinessSearchResult a;
  private YelpBusiness b;
  private String c;
  private String d;
  private boolean e;
  private long f;
  private Animation g;
  private BusinessPageFragment h;
  private ac i;
  private boolean j = false;
  private ViewGroup k;
  private com.yelp.android.ui.activities.reservations.h l;
  private CharSequence m;
  private CharSequence n;
  private BizAttributesFragment o;
  private YelpDeal p;
  private SearchRequest q;
  private boolean r;
  private com.yelp.android.be.b s;
  
  public static Intent a(Context paramContext, BusinessSearchResult paramBusinessSearchResult)
  {
    paramContext = a(paramContext, paramBusinessSearchResult, null);
    paramContext.putExtra("extra.open_reservation", true);
    return paramContext;
  }
  
  public static Intent a(Context paramContext, BusinessSearchResult paramBusinessSearchResult, SearchRequest paramSearchRequest)
  {
    paramContext = a(paramContext, paramBusinessSearchResult.getBusiness(), paramSearchRequest);
    if (paramBusinessSearchResult != null) {
      paramContext.putExtra("extra.business_search_result", paramBusinessSearchResult);
    }
    return paramContext;
  }
  
  public static Intent a(Context paramContext, YelpBusiness paramYelpBusiness)
  {
    paramContext = b(paramContext, paramYelpBusiness);
    paramContext.putExtra("require_business_update", true);
    return paramContext;
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
    paramContext = new Intent(paramContext, ActivityBusinessPage.class);
    paramContext.putExtra("business_id", paramString);
    return paramContext;
  }
  
  private void a(YelpCheckIn paramYelpCheckIn)
  {
    o = BizAttributesFragment.a(paramYelpCheckIn);
    getSupportFragmentManager().beginTransaction().replace(2131493286, o).commit();
    o.a(new l(this));
    k = ((ViewGroup)cp.a(findViewById(2131493058), 2131493061, 2131493060));
    if (paramYelpCheckIn.getBusiness().getRegularCount() == 0) {
      k.findViewById(2131493401).setOnClickListener(null);
    }
    k.setVisibility(0);
    RankTitle.Rank localRank = paramYelpCheckIn.getLocationRankTitle();
    int i2 = paramYelpCheckIn.getTotalCount();
    boolean bool = AppData.b().m().n();
    Object localObject1 = StringUtils.a(this, 2131623940, i2, new String[0]);
    Object localObject2 = getString(2131165964);
    int i3;
    int i1;
    if (localRank == RankTitle.Rank.REGULAR)
    {
      paramYelpCheckIn = StringUtils.a(this, 2131166385, new Object[] { StringUtils.a(this, paramYelpCheckIn.getRegularRank()) });
      i3 = localRank.getRankIconBordered();
      if (i2 > 1) {
        break label349;
      }
      if (!bool) {
        break label342;
      }
      i1 = 2131166703;
      label187:
      localObject1 = getString(i1);
      paramYelpCheckIn = getString(2131165964);
    }
    label342:
    label349:
    for (;;)
    {
      ((BitmapDrawable)getResources().getDrawable(2130838126).mutate()).setTileModeX(Shader.TileMode.REPEAT);
      localObject2 = (MessageAlertBox)k.findViewById(2131493401);
      ((MessageAlertBox)localObject2).setIcon(i3);
      ((MessageAlertBox)localObject2).setTitle((CharSequence)localObject1);
      ((MessageAlertBox)localObject2).setSubtitle(paramYelpCheckIn);
      paramYelpCheckIn = AnimationUtils.loadAnimation(this, 2130968593);
      paramYelpCheckIn.setDuration(250L);
      k.findViewById(2131493238).startAnimation(paramYelpCheckIn);
      k.findViewById(2131493400).startAnimation(AnimationUtils.loadAnimation(this, 2130968604));
      return;
      paramYelpCheckIn = (YelpCheckIn)localObject2;
      if (localRank != RankTitle.Rank.TOP_USER) {
        break;
      }
      if (bool) {}
      for (i1 = 2131166817;; i1 = 2131166816)
      {
        paramYelpCheckIn = getString(i1);
        break;
      }
      i1 = 2131166702;
      break label187;
    }
  }
  
  private void a(BusinessPageFragment paramBusinessPageFragment, YelpBusiness paramYelpBusiness)
  {
    long l1 = System.currentTimeMillis() - f;
    if (l1 > 2000L) {}
    for (l1 = 0L;; l1 = 2000L - l1)
    {
      getHandler().postDelayed(new f(this, paramBusinessPageFragment, paramYelpBusiness), l1);
      return;
    }
  }
  
  public static Intent b(Context paramContext, YelpBusiness paramYelpBusiness)
  {
    if (paramYelpBusiness.getFormatMode() == BusinessSearchRequest.FormatMode.SHORT) {
      return a(paramContext, paramYelpBusiness.getId());
    }
    paramContext = new Intent(paramContext, ActivityBusinessPage.class);
    paramContext.putExtra("extra.business", paramYelpBusiness);
    return paramContext;
  }
  
  private void e()
  {
    ((ViewStub)findViewById(2131493060)).setOnInflateListener(new h(this));
  }
  
  public void a(int paramInt, CharSequence paramCharSequence)
  {
    m = getText(paramInt);
    n = paramCharSequence;
    showDialog(304);
  }
  
  public void a(Intent paramIntent)
  {
    q = ((SearchRequest)paramIntent.getParcelableExtra("extra.search_request"));
    Object localObject = BusinessContributionType.getType(paramIntent);
    YelpBusiness localYelpBusiness;
    if (localObject == BusinessContributionType.CHECK_IN)
    {
      localObject = (YelpCheckIn)((BusinessContributionType)localObject).getContribution(paramIntent);
      localYelpBusiness = ((YelpCheckIn)localObject).getBusiness();
      a((YelpCheckIn)localObject);
    }
    for (;;)
    {
      if ((localYelpBusiness == null) || (e))
      {
        if (localYelpBusiness == null) {
          break label252;
        }
        c = localYelpBusiness.getId();
        label67:
        if ((c == null) && (paramIntent.getData() != null)) {
          c = paramIntent.getData().getQueryParameter("business_id");
        }
        if ((c != null) && ((i == null) || (!i.isFetching())))
        {
          i = new ac(c, this);
          i.execute(new Void[0]);
          f = System.currentTimeMillis();
          if ((localYelpBusiness == null) || (!e)) {
            enableLoading(i);
          }
        }
      }
      if (d == null) {
        d = paramIntent.getStringExtra("top_highlighted_review_id");
      }
      if ((localYelpBusiness == null) && (c == null))
      {
        YelpLog.error(this, "Business is null on startup. Bailing.");
        finish();
      }
      for (;;)
      {
        return;
        if (!paramIntent.hasExtra("extra.business")) {
          break label428;
        }
        localYelpBusiness = (YelpBusiness)paramIntent.getParcelableExtra("extra.business");
        e = paramIntent.getExtras().getBoolean("require_business_update", false);
        localObject = null;
        break;
        label252:
        c = paramIntent.getStringExtra("business_id");
        break label67;
        a = ((BusinessSearchResult)paramIntent.getParcelableExtra("extra.business_search_result"));
        if (localYelpBusiness != null)
        {
          b = localYelpBusiness;
          h = BusinessPageFragment.a(b, d, q, a, (YelpCheckIn)localObject);
          disableLoading();
        }
        while (paramIntent.getBooleanExtra("extra.open_reservation", false))
        {
          j = true;
          paramIntent = new TreeMap();
          localObject = a.getBizDimension();
          if (!StringUtils.e((String)localObject)) {
            paramIntent.put("biz_dimension", localObject);
          }
          paramIntent.put("id", a.getBusiness().getId());
          AppData.a(EventIri.SearchReservationOpen, paramIntent);
          startActivityForResult(FindReservation.a(this, a.getBusiness(), a.getBizDimension(), "source_search_page"), 1044);
          return;
          s = null;
        }
      }
      label428:
      localObject = null;
      localYelpBusiness = null;
    }
  }
  
  public void a(ApiRequest<?, ?, ?> paramApiRequest, List<YelpBusiness> paramList)
  {
    if (paramList.size() > 0)
    {
      b = ((YelpBusiness)paramList.get(0));
      paramApiRequest = (BusinessPageFragment)getSupportFragmentManager().findFragmentById(2131493059);
      if (!e)
      {
        paramList = BusinessPageFragment.a(b, d, q, a);
        if ((paramApiRequest != null) && (((!paramApiRequest.isRemoving()) && (!paramApiRequest.isVisible())) || (!paramApiRequest.isVisible())))
        {
          h = paramList;
          com.yelp.android.av.a.a(this, AppData.b());
        }
      }
    }
    for (;;)
    {
      e = false;
      return;
      getSupportFragmentManager().beginTransaction().replace(2131493059, paramList).commit();
      disableLoading();
      break;
      a(paramApiRequest, b);
      break;
      YelpLog.error(this, "BizID request returned no results!");
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
    r = paramBoolean;
  }
  
  public boolean a()
  {
    return e;
  }
  
  public void b(boolean paramBoolean)
  {
    o.a();
    if (paramBoolean)
    {
      Animation localAnimation = AnimationUtils.loadAnimation(this, 2130968592);
      localAnimation.setInterpolator(new InverseAccelerateInterpolator());
      k.findViewById(2131493238).startAnimation(localAnimation);
      localAnimation.setDuration(cw.a);
      getHelper().a(k);
      g.setAnimationListener(new g(this));
      k.findViewById(2131493400).startAnimation(g);
      return;
    }
    getSupportFragmentManager().beginTransaction().remove(o).commit();
    k.setVisibility(8);
  }
  
  public void c()
  {
    if (s != null)
    {
      s.b();
      s.d();
      s = null;
    }
  }
  
  public boolean d()
  {
    return (k != null) && (k.getVisibility() == 0);
  }
  
  public ViewIri getIri()
  {
    if (b == null) {
      return null;
    }
    j.a(KahunaEventIri.Business);
    j.a(KahunaAttributeIri.BusinessCategory, b.getCategoryForBusinessSearchResult());
    return ViewIri.Business;
  }
  
  public Map<String, Object> getParametersForIri(com.yelp.android.analytics.iris.b paramb)
  {
    if (b == null) {
      return null;
    }
    paramb = new TreeMap();
    paramb.putAll(com.yelp.android.analytics.g.b(b.getId()));
    if ((b.getDeal() != null) && (b.getDeal().isActive())) {
      paramb.put("deal_id", b.getDeal().getId());
    }
    paramb.put("message_the_business", Boolean.valueOf(BusinessBasicInfo.MESSAGE_THE_BUSINESS.shouldShow(b)));
    return paramb;
  }
  
  public String getRequestIdForIri(com.yelp.android.analytics.iris.b paramb)
  {
    if (b == null) {
      return null;
    }
    return b.getYelpRequestId();
  }
  
  public void m_()
  {
    if ((i == null) || (!i.isFetching()))
    {
      i = new ac(c, this);
      i.execute(new Void[0]);
      enableLoading(i);
    }
  }
  
  public void onActivityResult(int paramInt1, int paramInt2, Intent paramIntent)
  {
    super.onActivityResult(paramInt1, paramInt2, paramIntent);
    paramInt1 = (short)paramInt1;
    BusinessPageFragment localBusinessPageFragment = (BusinessPageFragment)getSupportFragmentManager().findFragmentById(2131493059);
    if (paramInt2 == -1) {
      switch (paramInt1)
      {
      }
    }
    do
    {
      do
      {
        do
        {
          return;
          paramIntent = (YelpCheckIn)BusinessContributionType.CHECK_IN.getContribution(paramIntent);
        } while (paramIntent.getBusiness() == null);
        a(paramIntent);
        localBusinessPageFragment.a(paramIntent.getBusiness());
        return;
        if ((paramIntent != null) && (paramIntent.hasExtra("yelp:new_business"))) {
          localBusinessPageFragment.a((YelpBusiness)paramIntent.getParcelableExtra("yelp:new_business"));
        }
      } while ((paramIntent == null) || (!paramIntent.getBooleanExtra("is_video_extra", false)));
      localBusinessPageFragment.k();
      return;
      if (k != null) {
        b(true);
      }
      localBusinessPageFragment.h_();
      return;
      localBusinessPageFragment.a(paramIntent);
      return;
      localBusinessPageFragment.b(paramIntent);
      return;
      if ((paramInt2 == 3) && (paramInt1 == 1037))
      {
        localBusinessPageFragment.i();
        return;
      }
    } while (paramInt1 != 1044);
    finish();
  }
  
  public void onBackPressed()
  {
    if (d())
    {
      b(true);
      return;
    }
    if (r) {
      new ObjectDirtyEvent(b, "com.yelp.android.bookmarks.remove").a(this);
    }
    super.onBackPressed();
  }
  
  public void onCreate(Bundle paramBundle)
  {
    s = AppData.b().w().b();
    s.a();
    super.onCreate(paramBundle);
    setContentView(2130903068);
    l = new com.yelp.android.ui.activities.reservations.h(305);
    e();
    if (paramBundle != null)
    {
      s = null;
      b = ((YelpBusiness)paramBundle.getParcelable("extra.business"));
      e = paramBundle.getBoolean("require_business_update", false);
      d = paramBundle.getString("top_highlighted_review_id");
      m = paramBundle.getCharSequence("dialog_information_title");
      n = paramBundle.getCharSequence("dialog_information_message");
      q = ((SearchRequest)paramBundle.getParcelable("search_request"));
      a = ((BusinessSearchResult)paramBundle.getParcelable("extra.business_search_result"));
      j = paramBundle.getBoolean("extra.has_opened_reservation_flow", false);
      paramBundle = (BusinessPageFragment)getSupportFragmentManager().findFragmentById(2131493059);
      if (paramBundle == null) {
        if (b != null) {
          h = BusinessPageFragment.a(b, d, q, a);
        }
      }
    }
    for (;;)
    {
      g = AnimationUtils.loadAnimation(this, 2130968610);
      return;
      a(getIntent());
      continue;
      if ((!paramBundle.isRemoving()) && (!paramBundle.isVisible()))
      {
        h = BusinessPageFragment.a(b, d, q, a);
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
  
  protected Dialog onCreateDialog(int paramInt, Bundle paramBundle)
  {
    int i2 = 2131166036;
    BusinessPageFragment localBusinessPageFragment = (BusinessPageFragment)getSupportFragmentManager().findFragmentById(2131493059);
    switch (paramInt)
    {
    case 306: 
    default: 
      return super.onCreateDialog(paramInt);
    case 305: 
      return l.a(this);
    case 309: 
      return com.yelp.android.services.l.a(this, new com.yelp.android.services.b(b), 2131166561);
    case 307: 
      paramBundle = new AlertDialog.Builder(this).setTitle(2131165338).setIcon(0).setMessage(2131166329).setCancelable(true).setPositiveButton(2131165318, new a(this, localBusinessPageFragment)).setNegativeButton(2131165720, null).create();
      paramBundle.setOnDismissListener(new b(this));
      return paramBundle;
    case 304: 
      paramBundle = cp.b(this, m, n);
      paramBundle.setOnDismissListener(new c(this));
      return paramBundle;
    case 300: 
    case 301: 
    case 302: 
    case 303: 
      int i1;
      switch (paramInt)
      {
      default: 
        return null;
      case 300: 
        i1 = 1038;
        paramBundle = getResources().getString(2131166778);
        i2 = 2131166034;
      }
      for (;;)
      {
        paramBundle = new AlertDialog.Builder(this).setTitle(2131166780).setIcon(0).setMessage(paramBundle).setCancelable(true).setPositiveButton(2131166235, new d(this, localBusinessPageFragment, i1, i2)).create();
        paramBundle.setOnDismissListener(new e(this, paramInt));
        return paramBundle;
        i1 = 1003;
        paramBundle = getResources().getString(2131166773);
        continue;
        i1 = 1004;
        paramBundle = getResources().getString(2131166773);
        continue;
        i1 = 1056;
        i2 = 2131166033;
        paramBundle = getResources().getString(2131166772);
      }
    }
    return com.yelp.android.services.l.a(this, new com.yelp.android.services.c(p), 2131166563);
  }
  
  public void onError(ApiRequest<?, ?, ?> paramApiRequest, YelpException paramYelpException)
  {
    if (e)
    {
      a((BusinessPageFragment)getSupportFragmentManager().findFragmentById(2131493059), null);
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
    freezeRequest("business", i);
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
      l.a(this, paramDialog);
    }
  }
  
  protected void onResume()
  {
    i = ((ac)thawRequest("business", i, this));
    if (ApiRequest.is(i, AsyncTask.Status.RUNNING)) {
      enableLoading(i);
    }
    super.onResume();
  }
  
  protected void onResumeFragments()
  {
    super.onResumeFragments();
    if (h != null)
    {
      getSupportFragmentManager().beginTransaction().replace(2131493059, h).commit();
      h = null;
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
        break label119;
      }
    }
    label119:
    for (Object localObject = "";; localObject = n)
    {
      paramBundle.putCharSequence("dialog_information_message", (CharSequence)localObject);
      paramBundle.putBoolean("require_business_update", e);
      paramBundle.putBoolean("extra.has_opened_reservation_flow", j);
      if (q != null) {
        paramBundle.putParcelable("search_request", q);
      }
      if (a != null) {
        paramBundle.putParcelable("extra.business_search_result", a);
      }
      return;
      localObject = m;
      break;
    }
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.ui.activities.businesspage.ActivityBusinessPage
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */