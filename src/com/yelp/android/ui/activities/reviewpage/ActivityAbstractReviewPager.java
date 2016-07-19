package com.yelp.android.ui.activities.reviewpage;

import android.annotation.SuppressLint;
import android.app.AlertDialog;
import android.app.AlertDialog.Builder;
import android.app.Dialog;
import android.content.Context;
import android.content.Intent;
import android.os.Bundle;
import android.support.v4.app.l;
import android.support.v4.app.o;
import android.util.Pair;
import android.view.Menu;
import android.view.MenuInflater;
import android.view.MenuItem;
import com.yelp.android.analytics.g;
import com.yelp.android.analytics.iris.EventIri;
import com.yelp.android.analytics.iris.ViewIri;
import com.yelp.android.analytics.iris.a;
import com.yelp.android.appdata.AppData;
import com.yelp.android.appdata.LocaleSettings;
import com.yelp.android.appdata.webrequests.ApiRequest;
import com.yelp.android.appdata.webrequests.ApiRequest.b;
import com.yelp.android.appdata.webrequests.YelpException;
import com.yelp.android.appdata.webrequests.co;
import com.yelp.android.appdata.webrequests.dt;
import com.yelp.android.appdata.webrequests.dy;
import com.yelp.android.appdata.webrequests.dy.a;
import com.yelp.android.serializable.ReviewDeleteResponse;
import com.yelp.android.serializable.User;
import com.yelp.android.serializable.YelpBusinessReview;
import com.yelp.android.services.ReviewShareFormatter;
import com.yelp.android.ui.activities.ActivityLogin;
import com.yelp.android.ui.activities.businesspage.ActivityBusinessPage;
import com.yelp.android.ui.activities.reviews.ActivityFlagReview;
import com.yelp.android.ui.activities.reviews.ActivityReviewWrite;
import com.yelp.android.ui.activities.reviews.ReviewSource;
import com.yelp.android.ui.activities.support.YelpActivity;
import com.yelp.android.ui.dialogs.DeleteReviewDialog;
import com.yelp.android.ui.dialogs.b;
import com.yelp.android.ui.util.as;
import com.yelp.android.ui.widgets.ReviewPagerFragment;
import com.yelp.android.ui.widgets.ReviewPagerFragment.b;
import java.util.ArrayList;
import java.util.List;
import java.util.Locale;
import java.util.Map;

public abstract class ActivityAbstractReviewPager
  extends YelpActivity
{
  protected String a;
  protected String b;
  protected ArrayList<YelpBusinessReview> c;
  protected ReviewPagerFragment d;
  protected ReviewPagerFragment.b e;
  private String f;
  private dy g;
  private dt h;
  private YelpBusinessReview i;
  private boolean j;
  private int k;
  private ApiRequest.b<dy.a> l = new ApiRequest.b()
  {
    public void a(ApiRequest<?, ?, ?> paramAnonymousApiRequest, dy.a paramAnonymousa)
    {
      a(a);
    }
    
    public void onError(ApiRequest<?, ?, ?> paramAnonymousApiRequest, YelpException paramAnonymousYelpException)
    {
      a(paramAnonymousYelpException);
    }
  };
  private ApiRequest.b<ReviewDeleteResponse> m = new ApiRequest.b()
  {
    public void a(ApiRequest<?, ?, ?> paramAnonymousApiRequest, ReviewDeleteResponse paramAnonymousReviewDeleteResponse)
    {
      hideLoadingDialog();
      paramAnonymousApiRequest = paramAnonymousReviewDeleteResponse.b();
      if (!paramAnonymousReviewDeleteResponse.a()) {
        AppData.b().q().p().l();
      }
      for (;;)
      {
        AppData.a(EventIri.ReviewDeleted);
        paramAnonymousReviewDeleteResponse = new Intent();
        paramAnonymousReviewDeleteResponse.putExtra("deleted_review", ActivityAbstractReviewPager.a(ActivityAbstractReviewPager.this));
        paramAnonymousReviewDeleteResponse.putExtra("previous_review", paramAnonymousApiRequest);
        setResult(1052, paramAnonymousReviewDeleteResponse);
        finish();
        return;
        paramAnonymousReviewDeleteResponse = AppData.b().g().h();
        paramAnonymousApiRequest.a(new Locale(paramAnonymousApiRequest.I(), paramAnonymousReviewDeleteResponse.getCountry()));
      }
    }
    
    public void onError(ApiRequest<?, ?, ?> paramAnonymousApiRequest, YelpException paramAnonymousYelpException)
    {
      hideLoadingDialog();
      new AlertDialog.Builder(ActivityAbstractReviewPager.this).setTitle(2131165851).setMessage(paramAnonymousYelpException.getLocalizedMessage()).setNeutralButton(2131165976, null).create().show();
    }
  };
  private final b n = new b()
  {
    public void a(String paramAnonymousString)
    {
      a(c());
    }
  };
  
  protected static Intent a(Context paramContext, String paramString1, String paramString2, String paramString3, List<YelpBusinessReview> paramList, int paramInt, boolean paramBoolean, Class<? extends ActivityAbstractReviewPager> paramClass)
  {
    paramContext = new Intent(paramContext, paramClass);
    paramContext.putExtra("business_name", paramString2);
    paramContext.putExtra("business_id", paramString1);
    paramContext.putExtra("business_country", paramString3);
    if (paramInt + 10 > paramList.size()) {}
    for (int i1 = paramList.size();; i1 = paramInt + 10)
    {
      paramContext.putParcelableArrayListExtra("reviews_extra", new ArrayList(paramList.subList(paramInt, i1)));
      paramContext.putExtra("review_index", paramInt);
      paramContext.putExtra("hide_view_biz_button", paramBoolean);
      return paramContext;
    }
  }
  
  public static YelpBusinessReview a(Intent paramIntent)
  {
    return (YelpBusinessReview)paramIntent.getParcelableExtra("deleted_review");
  }
  
  public static YelpBusinessReview b(Intent paramIntent)
  {
    return (YelpBusinessReview)paramIntent.getParcelableExtra("previous_review");
  }
  
  protected abstract int a();
  
  protected Pair<Integer, Integer> a(boolean paramBoolean, int paramInt)
  {
    int i1 = 10;
    if (paramBoolean) {}
    for (;;)
    {
      return new Pair(Integer.valueOf(i1), Integer.valueOf(paramInt));
      if (paramInt - 10 > 0)
      {
        paramInt = paramInt - 10 + 1;
      }
      else
      {
        i1 = paramInt + 1;
        paramInt = 0;
      }
    }
  }
  
  protected void a(YelpException paramYelpException)
  {
    as.a(paramYelpException.getMessage(this), 0);
    d.a();
    disableLoading();
  }
  
  public void a(YelpBusinessReview paramYelpBusinessReview)
  {
    i = paramYelpBusinessReview;
    h = new dt(paramYelpBusinessReview.a(), m);
    showLoadingDialog();
    h.f(new Void[0]);
  }
  
  protected void a(List<YelpBusinessReview> paramList)
  {
    d.a(paramList);
    supportInvalidateOptionsMenu();
    disableLoading();
  }
  
  protected abstract ReviewPagerFragment.b b();
  
  protected YelpBusinessReview c()
  {
    return d.b();
  }
  
  protected String d()
  {
    if (c() == null) {
      return null;
    }
    return c().a();
  }
  
  protected boolean e()
  {
    return (g != null) && (g.u());
  }
  
  public ViewIri getIri()
  {
    return ViewIri.BusinessReviewsBrowse;
  }
  
  public Map<String, Object> getParametersForIri(a parama)
  {
    if (!e()) {
      return g.b(d());
    }
    return super.getParametersForIri(parama);
  }
  
  public String getRequestIdForIri(a parama)
  {
    if ((g != null) && (g.v())) {
      return g.i_();
    }
    return null;
  }
  
  protected void onCreate(Bundle paramBundle)
  {
    super.onCreate(paramBundle);
    Intent localIntent = getIntent();
    a = localIntent.getStringExtra("business_id");
    b = localIntent.getStringExtra("business_name");
    f = localIntent.getStringExtra("business_country");
    if (paramBundle != null) {
      c = paramBundle.getParcelableArrayList("business_reviews");
    }
    for (;;)
    {
      e = b();
      setTitle(b);
      j = localIntent.getBooleanExtra("hide_view_biz_button", false);
      return;
      if (localIntent.hasExtra("reviews_extra"))
      {
        c = localIntent.getParcelableArrayListExtra("reviews_extra");
        k = localIntent.getIntExtra("review_index", 0);
      }
      else
      {
        c = new ArrayList();
      }
    }
  }
  
  protected Dialog onCreateDialog(int paramInt, Bundle paramBundle)
  {
    return super.onCreateDialog(paramInt);
  }
  
  public boolean onCreateOptionsMenu(Menu paramMenu)
  {
    super.onCreateOptionsMenu(paramMenu);
    getMenuInflater().inflate(2131755041, paramMenu);
    paramMenu.findItem(2131690669).setIntent(ActivityBusinessPage.b(this, a));
    return true;
  }
  
  public boolean onOptionsItemSelected(MenuItem paramMenuItem)
  {
    switch (paramMenuItem.getItemId())
    {
    default: 
      return super.onOptionsItemSelected(paramMenuItem);
    case 2131691034: 
      showShareSheet(new ReviewShareFormatter(c()));
      return true;
    case 2131691035: 
      startActivity(ActivityReviewWrite.b(this, a, ReviewSource.ReviewDetailsEdit));
      return true;
    case 2131691036: 
      DeleteReviewDialog.a(c(), n).show(getSupportFragmentManager(), "delete_review_dialog");
      return true;
    case 2131691037: 
      startActivity(ActivityReviewWrite.c(this, a, ReviewSource.ReviewDetailsUpdate));
      return true;
    }
    startActivity(ActivityLogin.a(this, 2131165705, 2131166106, ActivityFlagReview.a(this, c(), f)));
    return true;
  }
  
  protected void onPause()
  {
    super.onPause();
    freezeRequest("single_review", g);
    freezeRequest("delete_review", h);
  }
  
  @SuppressLint({"CommitTransaction"})
  protected void onPostCreate(Bundle paramBundle)
  {
    super.onPostCreate(paramBundle);
    d = ((ReviewPagerFragment)getSupportFragmentManager().a("tag_review_pager"));
    if (d == null)
    {
      d = ReviewPagerFragment.a(a, c, k, a(), b, f);
      getSupportFragmentManager().a().a(2131689997, d, "tag_review_pager").a();
    }
    d.a(b());
    supportInvalidateOptionsMenu();
  }
  
  public boolean onPrepareOptionsMenu(Menu paramMenu)
  {
    int i1 = 0;
    if (e()) {
      return super.onPrepareOptionsMenu(paramMenu);
    }
    Object localObject;
    boolean bool1;
    label139:
    label169:
    boolean bool2;
    if (d != null)
    {
      YelpBusinessReview localYelpBusinessReview = d.b();
      localObject = AppData.b().q();
      if (localYelpBusinessReview == null) {
        break label305;
      }
      if (!((co)localObject).a(localYelpBusinessReview.b())) {
        break label238;
      }
      paramMenu.findItem(2131691037).setVisible(localYelpBusinessReview.q());
      paramMenu.findItem(2131691035).setVisible(true);
      localObject = paramMenu.findItem(2131691036);
      if (localYelpBusinessReview.f()) {
        break label233;
      }
      bool1 = true;
      ((MenuItem)localObject).setVisible(bool1);
      paramMenu.findItem(2131691038).setVisible(false);
      localObject = paramMenu.findItem(2131690669);
      if ((j) || (d.b() == null)) {
        break label388;
      }
      bool1 = true;
      ((MenuItem)localObject).setVisible(bool1);
      localObject = paramMenu.findItem(2131691034);
      if ((localYelpBusinessReview == null) || (localYelpBusinessReview.H() == null)) {
        break label393;
      }
      bool2 = true;
      label205:
      ((MenuItem)localObject).setVisible(bool2);
      if (!bool1) {
        break label399;
      }
    }
    for (;;)
    {
      ((MenuItem)localObject).setShowAsAction(i1);
      return super.onPrepareOptionsMenu(paramMenu);
      label233:
      bool1 = false;
      break;
      label238:
      paramMenu.findItem(2131691037).setVisible(false);
      paramMenu.findItem(2131691035).setVisible(false);
      paramMenu.findItem(2131691036).setVisible(false);
      paramMenu.findItem(2131691038).setVisible(true);
      break label139;
      label305:
      paramMenu.findItem(2131691037).setVisible(false);
      paramMenu.findItem(2131691035).setVisible(false);
      paramMenu.findItem(2131691036).setVisible(false);
      paramMenu.findItem(2131691038).setVisible(false);
      paramMenu.findItem(2131691034).setVisible(false);
      break label139;
      label388:
      bool1 = false;
      break label169;
      label393:
      bool2 = false;
      break label205;
      label399:
      i1 = 1;
    }
  }
  
  protected void onResume()
  {
    super.onResume();
    d.f();
    g = ((dy)thawRequest("single_review", g, l));
    h = ((dt)thawRequest("delete_review", h, m));
  }
  
  protected void onSaveInstanceState(Bundle paramBundle)
  {
    super.onSaveInstanceState(paramBundle);
    paramBundle.putParcelableArrayList("business_reviews", c);
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.ui.activities.reviewpage.ActivityAbstractReviewPager
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */