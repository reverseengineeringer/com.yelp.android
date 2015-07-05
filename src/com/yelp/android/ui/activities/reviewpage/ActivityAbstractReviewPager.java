package com.yelp.android.ui.activities.reviewpage;

import android.content.Context;
import android.content.Intent;
import android.os.Bundle;
import android.support.v4.app.FragmentManager;
import android.support.v4.app.FragmentTransaction;
import android.util.Pair;
import android.view.Menu;
import android.view.MenuInflater;
import android.view.MenuItem;
import com.yelp.android.analytics.g;
import com.yelp.android.analytics.iris.ViewIri;
import com.yelp.android.analytics.iris.b;
import com.yelp.android.appdata.AppData;
import com.yelp.android.appdata.webrequests.YelpException;
import com.yelp.android.appdata.webrequests.dc;
import com.yelp.android.appdata.webrequests.ey;
import com.yelp.android.appdata.webrequests.ez;
import com.yelp.android.appdata.webrequests.m;
import com.yelp.android.serializable.YelpBusinessReview;
import com.yelp.android.ui.activities.ActivityLogin;
import com.yelp.android.ui.activities.businesspage.ActivityBusinessPage;
import com.yelp.android.ui.activities.reviews.ActivityFlagReview;
import com.yelp.android.ui.activities.reviews.ActivityReviewWrite;
import com.yelp.android.ui.activities.reviews.ReviewSource;
import com.yelp.android.ui.activities.support.YelpActivity;
import com.yelp.android.ui.util.cr;
import com.yelp.android.ui.widgets.ReviewPagerFragment;
import com.yelp.android.ui.widgets.ah;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;

public abstract class ActivityAbstractReviewPager
  extends YelpActivity
{
  protected String a;
  protected String b;
  protected ArrayList<YelpBusinessReview> c;
  protected ReviewPagerFragment d;
  protected ah e;
  private String f;
  private ey g;
  private boolean h;
  private int i;
  private m<ez> j = new f(this);
  
  protected static Intent a(Context paramContext, String paramString1, String paramString2, String paramString3, List<YelpBusinessReview> paramList, int paramInt, boolean paramBoolean, Class<? extends ActivityAbstractReviewPager> paramClass)
  {
    paramContext = new Intent(paramContext, paramClass);
    paramContext.putExtra("business_name", paramString2);
    paramContext.putExtra("business_id", paramString1);
    paramContext.putExtra("business_country", paramString3);
    if (paramInt + 10 > paramList.size()) {}
    for (int k = paramList.size();; k = paramInt + 10)
    {
      paramContext.putParcelableArrayListExtra("reviews_extra", new ArrayList(paramList.subList(paramInt, k)));
      paramContext.putExtra("review_index", paramInt);
      paramContext.putExtra("hide_view_biz_button", paramBoolean);
      return paramContext;
    }
  }
  
  protected abstract int a();
  
  protected Pair<Integer, Integer> a(boolean paramBoolean, int paramInt)
  {
    int k = 10;
    if (paramBoolean) {}
    for (;;)
    {
      return new Pair(Integer.valueOf(k), Integer.valueOf(paramInt));
      if (paramInt - 10 > 0)
      {
        paramInt = paramInt - 10 + 1;
      }
      else
      {
        k = paramInt + 1;
        paramInt = 0;
      }
    }
  }
  
  protected void a(YelpException paramYelpException)
  {
    cr.a(paramYelpException.getMessage(this), 0);
    d.a();
    disableLoading();
  }
  
  protected void a(List<YelpBusinessReview> paramList)
  {
    d.a(paramList);
    supportInvalidateOptionsMenu();
    disableLoading();
  }
  
  protected abstract ah b();
  
  protected YelpBusinessReview c()
  {
    return d.b();
  }
  
  protected String d()
  {
    if (c() == null) {
      return null;
    }
    return c().getId();
  }
  
  protected boolean e()
  {
    return (g != null) && (g.isFetching());
  }
  
  public ViewIri getIri()
  {
    return ViewIri.BusinessReviewsBrowse;
  }
  
  public Map<String, Object> getParametersForIri(b paramb)
  {
    if (!e()) {
      return g.b(d());
    }
    return super.getParametersForIri(paramb);
  }
  
  public String getRequestIdForIri(b paramb)
  {
    if ((g != null) && (g.isCompleted())) {
      return g.getRequestId();
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
      h = localIntent.getBooleanExtra("hide_view_biz_button", false);
      return;
      if (localIntent.hasExtra("reviews_extra"))
      {
        c = localIntent.getParcelableArrayListExtra("reviews_extra");
        i = localIntent.getIntExtra("review_index", 0);
      }
      else
      {
        c = new ArrayList();
      }
    }
  }
  
  public boolean onCreateOptionsMenu(Menu paramMenu)
  {
    super.onCreateOptionsMenu(paramMenu);
    getMenuInflater().inflate(2131755037, paramMenu);
    paramMenu.findItem(2131493833).setIntent(ActivityBusinessPage.a(this, a));
    return true;
  }
  
  public boolean onOptionsItemSelected(MenuItem paramMenuItem)
  {
    switch (paramMenuItem.getItemId())
    {
    default: 
      return super.onOptionsItemSelected(paramMenuItem);
    case 2131494161: 
      startActivity(ActivityReviewWrite.b(this, a, ReviewSource.ReviewDetailsEdit));
      return true;
    case 2131494162: 
      startActivity(ActivityReviewWrite.c(this, a, ReviewSource.ReviewDetailsUpdate));
      return true;
    }
    startActivity(ActivityLogin.a(this, 2131166783, 2131166046, ActivityFlagReview.a(this, c(), f)));
    return true;
  }
  
  protected void onPause()
  {
    super.onPause();
    freezeRequest("single_review", g);
  }
  
  protected void onPostCreate(Bundle paramBundle)
  {
    super.onPostCreate(paramBundle);
    d = ((ReviewPagerFragment)getSupportFragmentManager().findFragmentByTag("tag_review_pager"));
    if (d == null)
    {
      d = ReviewPagerFragment.a(a, c, i, a(), b);
      getSupportFragmentManager().beginTransaction().add(2131493332, d, "tag_review_pager").commit();
    }
    d.a(b());
    supportInvalidateOptionsMenu();
  }
  
  public boolean onPrepareOptionsMenu(Menu paramMenu)
  {
    boolean bool = true;
    if (e()) {
      return super.onPrepareOptionsMenu(paramMenu);
    }
    Object localObject;
    if (d != null)
    {
      localObject = d.b();
      dc localdc = AppData.b().m();
      if (localObject == null) {
        break label196;
      }
      if (!localdc.a(((YelpBusinessReview)localObject).getUserId())) {
        break label145;
      }
      paramMenu.findItem(2131494162).setVisible(((YelpBusinessReview)localObject).isUpdatableByCurrentUser());
      paramMenu.findItem(2131494161).setVisible(true);
      paramMenu.findItem(2131494163).setVisible(false);
      localObject = paramMenu.findItem(2131493833);
      if ((h) || (d.b() == null)) {
        break label247;
      }
    }
    for (;;)
    {
      ((MenuItem)localObject).setVisible(bool);
      return super.onPrepareOptionsMenu(paramMenu);
      label145:
      paramMenu.findItem(2131494162).setVisible(false);
      paramMenu.findItem(2131494161).setVisible(false);
      paramMenu.findItem(2131494163).setVisible(true);
      break;
      label196:
      paramMenu.findItem(2131494162).setVisible(false);
      paramMenu.findItem(2131494161).setVisible(false);
      paramMenu.findItem(2131494163).setVisible(false);
      break;
      label247:
      bool = false;
    }
  }
  
  protected void onResume()
  {
    super.onResume();
    d.e();
    g = ((ey)thawRequest("single_review", g, j));
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