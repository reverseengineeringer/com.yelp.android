package com.yelp.android.ui.activities.reviews;

import android.app.AlertDialog.Builder;
import android.content.Context;
import android.content.Intent;
import android.os.AsyncTask.Status;
import android.os.Bundle;
import android.os.Handler;
import android.support.v4.app.FragmentManager;
import android.support.v4.app.FragmentTransaction;
import android.support.v7.app.ActionBar;
import android.support.v7.widget.Toolbar;
import android.text.TextUtils;
import android.view.LayoutInflater;
import android.view.MenuItem;
import android.view.View;
import android.view.animation.AlphaAnimation;
import android.view.inputmethod.InputMethodManager;
import android.widget.TextView;
import com.yelp.android.analytics.iris.ReviewEventIri;
import com.yelp.android.analytics.iris.ViewIri;
import com.yelp.android.analytics.iris.b;
import com.yelp.android.appdata.AppData;
import com.yelp.android.appdata.webrequests.ApiException;
import com.yelp.android.appdata.webrequests.ApiRequest;
import com.yelp.android.appdata.webrequests.YelpException;
import com.yelp.android.appdata.webrequests.ac;
import com.yelp.android.appdata.webrequests.dc;
import com.yelp.android.appdata.webrequests.es;
import com.yelp.android.appdata.webrequests.ff;
import com.yelp.android.appdata.webrequests.fg;
import com.yelp.android.appdata.webrequests.fp;
import com.yelp.android.serializable.Review;
import com.yelp.android.serializable.ReviewBroadcast;
import com.yelp.android.serializable.ReviewDraft;
import com.yelp.android.serializable.ReviewThreshold;
import com.yelp.android.serializable.YelpBusiness;
import com.yelp.android.ui.activities.ActivityLogin;
import com.yelp.android.ui.activities.support.YelpActivity;
import com.yelp.android.ui.activities.support.h;
import com.yelp.android.ui.panels.PanelError;
import com.yelp.android.ui.panels.PanelLoading;
import com.yelp.android.ui.panels.aa;
import com.yelp.android.ui.util.cw;
import com.yelp.android.util.ErrorType;
import com.yelp.android.util.ObjectDirtyEvent;
import com.yelp.android.util.StringUtils;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

public class ActivityReviewWrite
  extends YelpActivity
  implements com.yelp.android.appdata.webrequests.m<fg>, ao, aa
{
  private ac A;
  private ff B;
  private es C;
  private fp D;
  private boolean E;
  private YelpBusiness a;
  private String b;
  private ArrayList<ReviewThreshold> c;
  private ReviewDraft d;
  private Review e;
  private int f;
  private String g;
  private ReviewState h;
  private ReviewState i;
  private String j = "";
  private int k;
  private String l = null;
  private int m;
  private boolean n = false;
  private boolean o = false;
  private boolean p = false;
  private ReviewSource q = ReviewSource.Empty;
  private boolean r = false;
  private boolean s = false;
  private boolean t = false;
  private TextView u;
  private PanelLoading v;
  private PanelError w;
  private FragmentManager x;
  private ReviewComposeFragment y;
  private ReviewOverviewFragment z;
  
  public static Intent a(Context paramContext, YelpBusiness paramYelpBusiness, int paramInt, ReviewSource paramReviewSource)
  {
    paramContext = a(paramContext, paramYelpBusiness, paramReviewSource);
    paramContext.putExtra("extra_num_stars", paramInt);
    return paramContext;
  }
  
  public static Intent a(Context paramContext, YelpBusiness paramYelpBusiness, ReviewSource paramReviewSource)
  {
    paramContext = new Intent(paramContext, ActivityReviewWrite.class);
    paramContext.putExtra("extra_business", paramYelpBusiness);
    paramContext.putExtra("extra_intend_review_state", paramYelpBusiness.getReviewState());
    paramContext.putExtra("extra_review_source", paramReviewSource);
    return paramContext;
  }
  
  public static Intent a(Context paramContext, String paramString, ReviewSource paramReviewSource)
  {
    paramContext = new Intent(paramContext, ActivityReviewWrite.class);
    paramContext.putExtra("extra_business_id", paramString);
    paramContext.putExtra("extra_review_source", paramReviewSource);
    return paramContext;
  }
  
  public static Intent a(Context paramContext, String paramString, ReviewState paramReviewState, ReviewSource paramReviewSource)
  {
    paramContext = a(paramContext, paramString, paramReviewSource);
    paramContext.putExtra("extra_intend_review_state", paramReviewState);
    return paramContext;
  }
  
  private void a(ReviewState paramReviewState)
  {
    ReviewBroadcast localReviewBroadcast = new ReviewBroadcast();
    if (b != null) {
      localReviewBroadcast.setBusinessId(b);
    }
    for (;;)
    {
      localReviewBroadcast.setReviewState(paramReviewState);
      localReviewBroadcast.setRating(f);
      localReviewBroadcast.setText(k());
      if (d != null) {
        localReviewBroadcast.setId(d.getId());
      }
      new ObjectDirtyEvent(localReviewBroadcast, "com.yelp.android.review.state.update").a(this);
      return;
      if (a != null) {
        localReviewBroadcast.setBusinessId(a.getId());
      }
    }
  }
  
  private boolean a(String paramString, int paramInt)
  {
    boolean bool2 = false;
    int i1;
    if ((paramString != null) && (!paramString.equals(j)))
    {
      i1 = 1;
      if (paramInt == k) {
        break label109;
      }
    }
    label109:
    for (paramInt = 1;; paramInt = 0)
    {
      boolean bool3 = AppData.b().m().e();
      boolean bool1;
      if (i1 == 0)
      {
        bool1 = bool2;
        if (paramInt == 0) {}
      }
      else
      {
        bool1 = bool2;
        if (bool3)
        {
          bool1 = bool2;
          if (l() != ReviewState.FINISHED_RECENTLY)
          {
            bool1 = bool2;
            if (!o())
            {
              bool1 = bool2;
              if (!TextUtils.isEmpty(paramString)) {
                bool1 = true;
              }
            }
          }
        }
      }
      return bool1;
      i1 = 0;
      break;
    }
  }
  
  public static Intent b(Context paramContext, YelpBusiness paramYelpBusiness, int paramInt, ReviewSource paramReviewSource)
  {
    paramContext = a(paramContext, paramYelpBusiness, paramInt, paramReviewSource);
    paramContext.putExtra("extra_ynra_review", true);
    return paramContext;
  }
  
  public static Intent b(Context paramContext, YelpBusiness paramYelpBusiness, ReviewSource paramReviewSource)
  {
    paramContext = a(paramContext, paramYelpBusiness, paramReviewSource);
    paramContext.putExtra("extra_force_review_edit", true);
    return paramContext;
  }
  
  public static Intent b(Context paramContext, String paramString, ReviewSource paramReviewSource)
  {
    paramContext = a(paramContext, paramString, ReviewState.FINISHED_RECENTLY, paramReviewSource);
    paramContext.putExtra("extra_force_review_edit", true);
    return paramContext;
  }
  
  private void b(String paramString)
  {
    AlphaAnimation localAlphaAnimation1 = new AlphaAnimation(0.0F, 1.0F);
    localAlphaAnimation1.setDuration(cw.c);
    AlphaAnimation localAlphaAnimation2 = new AlphaAnimation(1.0F, 0.0F);
    localAlphaAnimation2.setDuration(cw.c);
    localAlphaAnimation1.setAnimationListener(new o(this, paramString, localAlphaAnimation2));
    localAlphaAnimation2.setAnimationListener(new p(this, localAlphaAnimation1));
    a("", false);
    if (TextUtils.isEmpty(n()))
    {
      a(paramString, false);
      u.startAnimation(localAlphaAnimation1);
      return;
    }
    a(n(), false);
    u.startAnimation(localAlphaAnimation2);
  }
  
  public static Intent c(Context paramContext, String paramString, ReviewSource paramReviewSource)
  {
    paramContext = a(paramContext, paramString, ReviewState.FINISHED_NOT_RECENTLY, paramReviewSource);
    paramContext.putExtra("extra_update_selected", true);
    return paramContext;
  }
  
  private boolean r()
  {
    AppData.a(ReviewEventIri.ReviewWriteClose);
    if (x.findFragmentByTag("compose_fragment_key") != null)
    {
      c();
      return true;
    }
    if ((l == null) || ((g.equals(l)) && (m == f) && (j.equals(l)) && (k == f)))
    {
      finish();
      return true;
    }
    if ((!q()) && (AppData.b().m().e()))
    {
      if ((TextUtils.isEmpty(g)) && (!g.equals(j)))
      {
        v();
        return true;
      }
      if (!TextUtils.isEmpty(g))
      {
        new AlertDialog.Builder(this).setMessage(2131165908).setPositiveButton(2131166489, new m(this)).setNegativeButton(2131165686, new l(this)).show();
        return true;
      }
      return false;
    }
    new AlertDialog.Builder(this).setMessage(2131166475).setPositiveButton(2131165963, null).setNegativeButton(2131166006, new n(this)).show();
    return true;
  }
  
  private void s()
  {
    getSupportActionBar().b(false);
    getSupportActionBar().c(true);
    ((Toolbar)findViewById(2131493634)).setNavigationIcon(2130838077);
  }
  
  private void t()
  {
    if (t)
    {
      a(a.getDisplayName(), false);
      return;
    }
    if (h != null)
    {
      if (h == ReviewState.NOT_STARTED)
      {
        a(getString(2131166851), false);
        return;
      }
      if (r)
      {
        a(getString(2131165741), false);
        return;
      }
      a(getString(h.getTextResourceForState()), false);
      return;
    }
    a("", false);
  }
  
  private void u()
  {
    if ((B == null) || (B.getStatus() == AsyncTask.Status.FINISHED))
    {
      B = new ff(a.getId(), this);
      B.execute(new Void[0]);
      v.setVisibility(0);
      a("", false);
    }
  }
  
  private void v()
  {
    if ((C == null) || (C.getStatus() == AsyncTask.Status.FINISHED))
    {
      C = new es(a.getId(), new r(this));
      C.execute(new Void[0]);
      v.b(2131165691);
      v.setVisibility(0);
    }
  }
  
  private void w()
  {
    if ((A != null) && (A.getStatus() != AsyncTask.Status.FINISHED)) {
      return;
    }
    A = new ac(b, new t(this));
    A.execute(new Void[0]);
    v.setVisibility(0);
    getSupportActionBar().a("");
  }
  
  public void a()
  {
    String str = u.getText().toString();
    a(getString(2131165724), true);
    new Handler().postDelayed(new q(this, str), 1500L);
  }
  
  public void a(int paramInt)
  {
    f = paramInt;
  }
  
  public void a(ApiRequest<?, ?, ?> paramApiRequest, fg paramfg)
  {
    n = true;
    v.setVisibility(8);
    c = paramfg.b();
    e = paramfg.d();
    d = paramfg.c();
    h = paramfg.a();
    if (r)
    {
      paramApiRequest = "edit";
      AppData.a(ReviewEventIri.ReviewWriteStart, "actual_compose_type", paramApiRequest);
      if (d == null) {
        break label189;
      }
      if (f == 0) {
        f = (d.getNumHalfstars() / 2);
      }
      g = d.getText();
      if (f > 0) {
        o = true;
      }
    }
    for (;;)
    {
      j = g;
      k = f;
      l = g;
      m = f;
      t();
      x.beginTransaction().add(2131493332, z, "overview_fragment_key").commit();
      return;
      paramApiRequest = h.getComposeTypeString();
      break;
      label189:
      if ((e != null) && (q()))
      {
        f = e.getRating();
        g = e.getText();
      }
    }
  }
  
  public void a(YelpBusiness paramYelpBusiness)
  {
    a = paramYelpBusiness;
  }
  
  public void a(String paramString)
  {
    g = paramString.trim();
  }
  
  public void a(String paramString, boolean paramBoolean)
  {
    ActionBar localActionBar = getSupportActionBar();
    if (getSupportActionBar().a() == null)
    {
      View localView = getLayoutInflater().inflate(2130903439, null);
      localView.setTag("title");
      localActionBar.a(localView);
      u = ((TextView)localView.findViewById(2131494104));
    }
    if (paramBoolean)
    {
      b(paramString);
      return;
    }
    u.setText(paramString);
    localActionBar.a((View)u.getParent());
  }
  
  public void a(boolean paramBoolean)
  {
    String str = k();
    if (a(str, f))
    {
      if (E)
      {
        v.b(2131166498);
        v.setVisibility(0);
      }
      if ((D == null) || (D.getStatus() == AsyncTask.Status.FINISHED)) {}
    }
    while (!E)
    {
      do
      {
        return;
        D = new fp(f().getId(), str, f, new u(this, str, f), q);
        D.execute(new Void[0]);
        c(true);
      } while ((!paramBoolean) || (f != 0));
      a();
      return;
    }
    finish();
  }
  
  public void b(boolean paramBoolean)
  {
    o = paramBoolean;
  }
  
  public void c()
  {
    x.beginTransaction().replace(2131493332, z, "overview_fragment_key").commit();
    a(getString(2131166353), false);
    ((Toolbar)findViewById(2131493634)).setNavigationIcon(2130838077);
    e();
  }
  
  public void c(boolean paramBoolean)
  {
    p = paramBoolean;
  }
  
  public void d()
  {
    x.beginTransaction().replace(2131493332, y, "compose_fragment_key").commit();
    ((Toolbar)findViewById(2131493634)).setNavigationIcon(2130837521);
  }
  
  public void e()
  {
    InputMethodManager localInputMethodManager = (InputMethodManager)getSystemService("input_method");
    View localView = getCurrentFocus();
    if (localView != null) {
      localInputMethodManager.hideSoftInputFromWindow(localView.getWindowToken(), 0);
    }
  }
  
  public YelpBusiness f()
  {
    return a;
  }
  
  public void finish()
  {
    super.finish();
    overridePendingTransition(2130968585, 2130968606);
  }
  
  public int g()
  {
    return f;
  }
  
  public ViewIri getIri()
  {
    return ViewIri.ReviewWrite;
  }
  
  public Map<String, Object> getParametersForIri(b paramb)
  {
    paramb = new HashMap();
    if (i != null) {
      paramb.put("intended_compose_type", i.getComposeTypeString());
    }
    paramb.put("sign_up_status", getHelper().u());
    return paramb;
  }
  
  public Review h()
  {
    return e;
  }
  
  public ReviewSource i()
  {
    return q;
  }
  
  public List<ReviewThreshold> j()
  {
    return c;
  }
  
  public String k()
  {
    if (g == null) {
      return "";
    }
    return g.trim();
  }
  
  public ReviewState l()
  {
    return h;
  }
  
  public boolean m()
  {
    return p;
  }
  
  public void m_()
  {
    w.setVisibility(8);
    if (a == null)
    {
      w();
      return;
    }
    u();
  }
  
  public String n()
  {
    if (u.getText().toString() == null) {
      return "";
    }
    return u.getText().toString();
  }
  
  public boolean o()
  {
    return r;
  }
  
  public void onBackPressed()
  {
    if (!r()) {
      super.onBackPressed();
    }
  }
  
  public void onCreate(Bundle paramBundle)
  {
    if ((paramBundle != null) && (paramBundle.getBoolean("is_review_start_complete", false)))
    {
      n = true;
      h = ((ReviewState)paramBundle.getSerializable("extra_review_state"));
      d = ((ReviewDraft)paramBundle.getParcelable("extra_draft"));
      e = ((Review)paramBundle.getParcelable("extra_review"));
      f = paramBundle.getInt("extra_num_stars", 0);
      a = ((YelpBusiness)paramBundle.getParcelable("extra_business"));
      b = paramBundle.getString("extra_business_id");
      c = paramBundle.getParcelableArrayList("extra_thresholds");
      o = paramBundle.getBoolean("stars_touched");
      p = paramBundle.getBoolean("review_draft_saved");
      t = paramBundle.getBoolean("extra_ynra_review");
      l = StringUtils.a(paramBundle, "original_draft_text", "");
      m = paramBundle.getInt("original_num_stars", 0);
      g = StringUtils.a(paramBundle, "extra_review_text", "");
      j = g;
      k = f;
    }
    super.onCreate(paramBundle);
    v = getLoadingPanel();
    r = getIntent().getBooleanExtra("extra_force_review_edit", false);
    s = getIntent().getBooleanExtra("extra_update_selected", false);
    i = ((ReviewState)getIntent().getSerializableExtra("extra_intend_review_state"));
    f = getIntent().getIntExtra("extra_num_stars", 0);
    t = getIntent().getBooleanExtra("extra_ynra_review", false);
    q = ((ReviewSource)getIntent().getSerializableExtra("extra_review_source"));
    if ((paramBundle == null) || (!paramBundle.getBoolean("is_review_start_complete", false)))
    {
      a = ((YelpBusiness)getIntent().getParcelableExtra("extra_business"));
      b = getIntent().getStringExtra("extra_business_id");
      n = false;
      g = "";
      j = g;
      k = f;
      v.setVisibility(0);
      if (a == null) {
        w();
      }
    }
    else
    {
      x = getSupportFragmentManager();
      s();
      t();
      z = new ReviewOverviewFragment();
      z.a(t);
      y = new ReviewComposeFragment();
      if (b == null) {
        break label460;
      }
      y.a(b);
    }
    label460:
    while ((a == null) || (a.getReviewCount() <= 0))
    {
      return;
      u();
      break;
    }
    y.a(a.getId());
  }
  
  public void onDestroy()
  {
    super.onDestroy();
    if (B != null)
    {
      B.cancel(true);
      B.setCallback(null);
    }
    if (C != null)
    {
      C.cancel(true);
      C.setCallback(null);
    }
    if (D != null)
    {
      D.cancel(true);
      D.setCallback(null);
    }
    if (A != null)
    {
      A.cancel(true);
      A.setCallback(null);
    }
  }
  
  public void onError(ApiRequest<?, ?, ?> paramApiRequest, YelpException paramYelpException)
  {
    if (((paramYelpException instanceof ApiException)) && (((ApiException)paramYelpException).getResultCode() == 11))
    {
      startActivity(ActivityLogin.a(this, 2131166786));
      finish();
      return;
    }
    v.setVisibility(8);
    w = getErrorPanel();
    w.a(ErrorType.getTypeFromException(paramYelpException));
    w.setVisibility(0);
    a(getString(2131165763), false);
  }
  
  public boolean onOptionsItemSelected(MenuItem paramMenuItem)
  {
    switch (paramMenuItem.getItemId())
    {
    }
    do
    {
      return super.onOptionsItemSelected(paramMenuItem);
    } while (!r());
    return true;
  }
  
  public void onSaveInstanceState(Bundle paramBundle)
  {
    if (n)
    {
      paramBundle.putBoolean("is_review_start_complete", n);
      paramBundle.putParcelable("extra_business", a);
      paramBundle.putString("extra_business_id", b);
      paramBundle.putParcelable("extra_draft", d);
      paramBundle.putParcelable("extra_review", e);
      paramBundle.putInt("extra_num_stars", f);
      paramBundle.putString("original_draft_text", l);
      paramBundle.putInt("original_num_stars", m);
      paramBundle.putString("extra_review_text", g);
      paramBundle.putParcelableArrayList("extra_thresholds", c);
      paramBundle.putSerializable("extra_review_state", h);
      paramBundle.putBoolean("stars_touched", o);
      paramBundle.putBoolean("review_draft_saved", p);
      paramBundle.putBoolean("extra_ynra_review", t);
    }
    super.onSaveInstanceState(paramBundle);
  }
  
  public boolean p()
  {
    return (s) && (h == ReviewState.FINISHED_RECENTLY);
  }
  
  public boolean q()
  {
    return (h == ReviewState.FINISHED_RECENTLY) || (o());
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.ui.activities.reviews.ActivityReviewWrite
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */