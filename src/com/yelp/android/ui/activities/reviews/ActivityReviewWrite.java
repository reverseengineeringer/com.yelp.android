package com.yelp.android.ui.activities.reviews;

import android.annotation.SuppressLint;
import android.app.AlertDialog.Builder;
import android.content.Context;
import android.content.DialogInterface;
import android.content.DialogInterface.OnClickListener;
import android.content.Intent;
import android.os.AsyncTask.Status;
import android.os.Bundle;
import android.os.Handler;
import android.support.v4.app.l;
import android.support.v4.app.o;
import android.support.v7.app.ActionBar;
import android.support.v7.widget.Toolbar;
import android.text.TextUtils;
import android.view.LayoutInflater;
import android.view.MenuItem;
import android.view.View;
import android.view.animation.AlphaAnimation;
import android.view.animation.Animation;
import android.view.inputmethod.InputMethodManager;
import android.widget.TextView;
import com.yelp.android.analytics.i;
import com.yelp.android.analytics.iris.EventIri;
import com.yelp.android.analytics.iris.KahunaAttributeIri;
import com.yelp.android.analytics.iris.ViewIri;
import com.yelp.android.analytics.iris.a;
import com.yelp.android.appdata.AppData;
import com.yelp.android.appdata.experiment.RatingStarDraftExperiment;
import com.yelp.android.appdata.experiment.RatingStarDraftExperiment.Cohort;
import com.yelp.android.appdata.experiment.e;
import com.yelp.android.appdata.webrequests.ApiException;
import com.yelp.android.appdata.webrequests.ApiRequest;
import com.yelp.android.appdata.webrequests.ApiRequest.b;
import com.yelp.android.appdata.webrequests.YelpException;
import com.yelp.android.appdata.webrequests.af;
import com.yelp.android.appdata.webrequests.co;
import com.yelp.android.appdata.webrequests.core.c.a;
import com.yelp.android.appdata.webrequests.ds;
import com.yelp.android.appdata.webrequests.ec;
import com.yelp.android.appdata.webrequests.ec.a;
import com.yelp.android.appdata.webrequests.el;
import com.yelp.android.serializable.Review;
import com.yelp.android.serializable.ReviewBroadcast;
import com.yelp.android.serializable.ReviewDraft;
import com.yelp.android.serializable.ReviewThreshold;
import com.yelp.android.serializable.YelpBusiness;
import com.yelp.android.ui.activities.ActivityConfirmAccount;
import com.yelp.android.ui.activities.support.YelpActivity;
import com.yelp.android.ui.activities.support.b;
import com.yelp.android.ui.panels.PanelError;
import com.yelp.android.ui.panels.PanelError.a;
import com.yelp.android.ui.panels.PanelLoading;
import com.yelp.android.ui.util.av;
import com.yelp.android.ui.util.av.a;
import com.yelp.android.util.ErrorType;
import com.yelp.android.util.ObjectDirtyEvent;
import com.yelp.android.util.YelpLog;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

public class ActivityReviewWrite
  extends YelpActivity
  implements ApiRequest.b<ec.a>, c, PanelError.a
{
  private ec A;
  private ds B;
  private el C;
  private boolean D;
  private final ApiRequest.b<List<YelpBusiness>> E = new ApiRequest.b()
  {
    public void a(ApiRequest<?, ?, ?> paramAnonymousApiRequest, List<YelpBusiness> paramAnonymousList)
    {
      if (paramAnonymousList.size() > 0)
      {
        paramAnonymousApiRequest = (YelpBusiness)paramAnonymousList.get(0);
        ActivityReviewWrite.a(ActivityReviewWrite.this, paramAnonymousApiRequest);
        ActivityReviewWrite.e(ActivityReviewWrite.this);
        return;
      }
      ActivityReviewWrite.a(ActivityReviewWrite.this, null);
      ActivityReviewWrite.f(ActivityReviewWrite.this).setVisibility(8);
      ActivityReviewWrite.a(ActivityReviewWrite.this, ActivityReviewWrite.g(ActivityReviewWrite.this));
      ActivityReviewWrite.h(ActivityReviewWrite.this).a(ErrorType.GENERIC_ERROR);
      ActivityReviewWrite.h(ActivityReviewWrite.this).setVisibility(0);
      getSupportActionBar().b(2131165847);
    }
    
    public void onError(ApiRequest<?, ?, ?> paramAnonymousApiRequest, YelpException paramAnonymousYelpException)
    {
      ActivityReviewWrite.a(ActivityReviewWrite.this, null);
      ActivityReviewWrite.f(ActivityReviewWrite.this).setVisibility(8);
      ActivityReviewWrite.a(ActivityReviewWrite.this, ActivityReviewWrite.i(ActivityReviewWrite.this));
      ActivityReviewWrite.h(ActivityReviewWrite.this).a(ErrorType.getTypeFromException(paramAnonymousYelpException));
      ActivityReviewWrite.h(ActivityReviewWrite.this).setVisibility(0);
      getSupportActionBar().b(2131165847);
    }
  };
  private final ApiRequest.b<ReviewState> F = new ApiRequest.b()
  {
    public void a(ApiRequest<?, ?, ?> paramAnonymousApiRequest, ReviewState paramAnonymousReviewState)
    {
      if (paramAnonymousReviewState == ReviewState.NOT_STARTED) {
        ActivityReviewWrite.a(ActivityReviewWrite.this, 0);
      }
      for (;;)
      {
        ActivityReviewWrite.a(ActivityReviewWrite.this, paramAnonymousReviewState);
        finish();
        return;
        ActivityReviewWrite.a(ActivityReviewWrite.this, ActivityReviewWrite.j(ActivityReviewWrite.this).H());
      }
    }
    
    public void onError(ApiRequest<?, ?, ?> paramAnonymousApiRequest, YelpException paramAnonymousYelpException)
    {
      ActivityReviewWrite.f(ActivityReviewWrite.this).setVisibility(8);
      new AlertDialog.Builder(ActivityReviewWrite.this).setMessage(getString(2131165770)).setPositiveButton(17039370, new DialogInterface.OnClickListener()
      {
        public void onClick(DialogInterface paramAnonymous2DialogInterface, int paramAnonymous2Int)
        {
          finish();
        }
      }).show();
    }
  };
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
  private TextView t;
  private PanelLoading u;
  private PanelError v;
  private l w;
  private ReviewComposeFragment x;
  private ReviewOverviewFragment y;
  private af z;
  
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
    paramContext.putExtra("extra_intend_review_state", paramYelpBusiness.w());
    paramContext.putExtra("extra_review_source", paramReviewSource);
    return paramContext;
  }
  
  public static Intent a(Context paramContext, String paramString, int paramInt, ReviewSource paramReviewSource)
  {
    paramContext = new Intent(paramContext, ActivityReviewWrite.class);
    paramContext.putExtra("business_id", paramString);
    paramContext.putExtra("extra_review_source", paramReviewSource);
    paramContext.putExtra("extra_num_stars", paramInt);
    return paramContext;
  }
  
  public static Intent a(Context paramContext, String paramString, ReviewSource paramReviewSource)
  {
    paramContext = new Intent(paramContext, ActivityReviewWrite.class);
    paramContext.putExtra("business_id", paramString);
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
      localReviewBroadcast.a(b);
    }
    for (;;)
    {
      localReviewBroadcast.a(paramReviewState);
      localReviewBroadcast.a(f);
      localReviewBroadcast.b(k());
      if (d != null) {
        localReviewBroadcast.c(d.c());
      }
      new ObjectDirtyEvent(localReviewBroadcast, "com.yelp.android.review.state.update").a(this);
      return;
      if (a != null) {
        localReviewBroadcast.a(a.aD());
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
        break label121;
      }
    }
    label121:
    for (paramInt = 1;; paramInt = 0)
    {
      boolean bool3 = AppData.b().q().d();
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
            if (!o()) {
              if (TextUtils.isEmpty(paramString))
              {
                bool1 = bool2;
                if (e.g.a(RatingStarDraftExperiment.Cohort.status_quo)) {}
              }
              else
              {
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
  
  private void b(final String paramString)
  {
    final AlphaAnimation localAlphaAnimation1 = new AlphaAnimation(0.0F, 1.0F);
    localAlphaAnimation1.setDuration(av.c);
    final AlphaAnimation localAlphaAnimation2 = new AlphaAnimation(1.0F, 0.0F);
    localAlphaAnimation2.setDuration(av.c);
    localAlphaAnimation1.setAnimationListener(new av.a()
    {
      public void onAnimationEnd(Animation paramAnonymousAnimation)
      {
        if (TextUtils.isEmpty(n())) {
          ActivityReviewWrite.d(ActivityReviewWrite.this).startAnimation(localAlphaAnimation2);
        }
      }
      
      public void onAnimationStart(Animation paramAnonymousAnimation)
      {
        if (!TextUtils.isEmpty(n())) {
          ActivityReviewWrite.d(ActivityReviewWrite.this).setText(paramString);
        }
      }
    });
    localAlphaAnimation2.setAnimationListener(new av.a()
    {
      public void onAnimationEnd(Animation paramAnonymousAnimation)
      {
        if (!TextUtils.isEmpty(n()))
        {
          ActivityReviewWrite.d(ActivityReviewWrite.this).startAnimation(localAlphaAnimation1);
          return;
        }
        ActivityReviewWrite.d(ActivityReviewWrite.this).setText("");
      }
    });
    a("", false);
    if (TextUtils.isEmpty(n()))
    {
      a(paramString, false);
      t.startAnimation(localAlphaAnimation1);
      return;
    }
    a(n(), false);
    t.startAnimation(localAlphaAnimation2);
  }
  
  public static Intent c(Context paramContext, String paramString, ReviewSource paramReviewSource)
  {
    paramContext = a(paramContext, paramString, ReviewState.FINISHED_NOT_RECENTLY, paramReviewSource);
    paramContext.putExtra("extra_update_selected", true);
    return paramContext;
  }
  
  private boolean r()
  {
    AppData.a(EventIri.ReviewWriteClose);
    if (w.a("compose_fragment_key") != null)
    {
      b();
      return true;
    }
    if ((l == null) || ((g.equals(l)) && (m == f) && (j.equals(l)) && (k == f)))
    {
      finish();
      return true;
    }
    if ((!q()) && (AppData.b().q().d()))
    {
      if ((TextUtils.isEmpty(g)) && (!g.equals(j)))
      {
        v();
        return true;
      }
      if (!TextUtils.isEmpty(g))
      {
        new AlertDialog.Builder(this).setMessage(2131165981).setPositiveButton(2131166485, new DialogInterface.OnClickListener()
        {
          public void onClick(DialogInterface paramAnonymousDialogInterface, int paramAnonymousInt)
          {
            ActivityReviewWrite.a(ActivityReviewWrite.this, true);
            a(false);
            AppData.a(EventIri.ReviewDraftSave, "source", ActivityReviewWrite.b(ActivityReviewWrite.this).getIriSourceParameter());
            AppData.b().m().a(KahunaAttributeIri.ReviewDraftBusinessId, ActivityReviewWrite.c(ActivityReviewWrite.this));
          }
        }).setNegativeButton(2131165760, new DialogInterface.OnClickListener()
        {
          public void onClick(DialogInterface paramAnonymousDialogInterface, int paramAnonymousInt)
          {
            ActivityReviewWrite.a(ActivityReviewWrite.this);
            AppData.a(EventIri.ReviewDraftDelete, "source", "write_a_review");
            AppData.b().m().a(KahunaAttributeIri.ReviewDraftBusinessId, "cleared");
          }
        }).show();
        return true;
      }
      return false;
    }
    new AlertDialog.Builder(this).setMessage(2131166478).setPositiveButton(2131166034, null).setNegativeButton(2131166061, new DialogInterface.OnClickListener()
    {
      public void onClick(DialogInterface paramAnonymousDialogInterface, int paramAnonymousInt)
      {
        finish();
      }
    }).show();
    return true;
  }
  
  private void s()
  {
    getSupportActionBar().b(false);
    getSupportActionBar().c(true);
    ((Toolbar)findViewById(2131690378)).setNavigationIcon(2130838279);
  }
  
  private void t()
  {
    if (q == ReviewSource.PostReviewYNRA)
    {
      a(a.z(), false);
      return;
    }
    if (h != null)
    {
      if (h == ReviewState.NOT_STARTED)
      {
        a(getString(2131166820), false);
        return;
      }
      if (r)
      {
        a(getString(2131165822), false);
        return;
      }
      a(getString(h.getTextResourceForState()), false);
      return;
    }
    a("", false);
  }
  
  private void u()
  {
    if ((A == null) || (A.m() == AsyncTask.Status.FINISHED))
    {
      A = new ec(a.aD(), this);
      A.f(new Void[0]);
      u.setVisibility(0);
      a("", false);
    }
  }
  
  private void v()
  {
    if ((B == null) || (B.m() == AsyncTask.Status.FINISHED))
    {
      B = new ds(a.aD(), F);
      B.f(new Void[0]);
      u.a(2131165769);
      u.setVisibility(0);
    }
  }
  
  private void w()
  {
    if ((z != null) && (z.m() != AsyncTask.Status.FINISHED)) {
      return;
    }
    z = new af(b, E);
    z.f(new Void[0]);
    u.setVisibility(0);
    getSupportActionBar().a("");
  }
  
  public void a()
  {
    final String str = t.getText().toString();
    a(getString(2131165802), true);
    new Handler().postDelayed(new Runnable()
    {
      public void run()
      {
        a(str, true);
      }
    }, 1500L);
  }
  
  public void a(int paramInt)
  {
    f = paramInt;
  }
  
  @SuppressLint({"CommitTransaction"})
  public void a(ApiRequest<?, ?, ?> paramApiRequest, ec.a parama)
  {
    n = true;
    u.setVisibility(8);
    c = parama.b();
    e = parama.d();
    d = parama.c();
    h = parama.a();
    if (r)
    {
      paramApiRequest = "edit";
      AppData.a(EventIri.ReviewWriteStart, "actual_compose_type", paramApiRequest);
      if (d == null) {
        break label189;
      }
      if (f == 0) {
        f = (d.b() / 2);
      }
      g = d.d();
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
      w.a().a(2131689997, y, "overview_fragment_key").a();
      return;
      paramApiRequest = h.getComposeTypeString();
      break;
      label189:
      if ((e != null) && (q()))
      {
        f = e.a();
        g = e.b();
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
      View localView = getLayoutInflater().inflate(2130903564, null);
      localView.setTag("title");
      localActionBar.a(localView);
      t = ((TextView)localView.findViewById(2131690974));
    }
    if (paramBoolean)
    {
      b(paramString);
      return;
    }
    t.setText(paramString);
    localActionBar.a((View)t.getParent());
  }
  
  public void a(boolean paramBoolean)
  {
    String str = k();
    if (a(str, f))
    {
      if (D)
      {
        u.a(2131166494);
        u.setVisibility(0);
      }
      if ((C == null) || (C.m() == AsyncTask.Status.FINISHED)) {}
    }
    while (!D)
    {
      do
      {
        return;
        C = new el(f().aD(), str, f, new a(str, f), q);
        C.f(new Void[0]);
        c(true);
      } while ((!paramBoolean) || (f != 0));
      a();
      return;
    }
    finish();
  }
  
  @SuppressLint({"CommitTransaction"})
  public void b()
  {
    w.a().b(2131689997, y, "overview_fragment_key").a();
    a(getString(2131166376), false);
    ((Toolbar)findViewById(2131690378)).setNavigationIcon(2130838279);
    e();
  }
  
  public void b(boolean paramBoolean)
  {
    o = paramBoolean;
  }
  
  @SuppressLint({"CommitTransaction"})
  public void c()
  {
    w.a().b(2131689997, x, "compose_fragment_key").a();
    ((Toolbar)findViewById(2131690378)).setNavigationIcon(2130837527);
  }
  
  public void c(boolean paramBoolean)
  {
    p = paramBoolean;
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
    overridePendingTransition(2130968587, 2130968612);
  }
  
  public int g()
  {
    return f;
  }
  
  public ViewIri getIri()
  {
    return ViewIri.ReviewWrite;
  }
  
  public Map<String, Object> getParametersForIri(a parama)
  {
    parama = new HashMap();
    if (i != null) {
      parama.put("intended_compose_type", i.getComposeTypeString());
    }
    parama.put("sign_up_status", getHelper().u());
    return parama;
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
  
  public String n()
  {
    if (t.getText().toString() == null) {
      return "";
    }
    return t.getText().toString();
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
      b = paramBundle.getString("business_id");
      c = paramBundle.getParcelableArrayList("extra_thresholds");
      o = paramBundle.getBoolean("stars_touched");
      p = paramBundle.getBoolean("review_draft_saved");
      l = paramBundle.getString("original_draft_text", "");
      m = paramBundle.getInt("original_num_stars", 0);
      g = paramBundle.getString("extra_review_text", "");
      j = g;
      k = f;
    }
    super.onCreate(paramBundle);
    u = getLoadingPanel();
    r = getIntent().getBooleanExtra("extra_force_review_edit", false);
    s = getIntent().getBooleanExtra("extra_update_selected", false);
    i = ((ReviewState)getIntent().getSerializableExtra("extra_intend_review_state"));
    f = getIntent().getIntExtra("extra_num_stars", 0);
    q = ((ReviewSource)getIntent().getSerializableExtra("extra_review_source"));
    if ((paramBundle == null) || (!paramBundle.getBoolean("is_review_start_complete", false)))
    {
      a = ((YelpBusiness)getIntent().getParcelableExtra("extra_business"));
      b = getIntent().getStringExtra("business_id");
      n = false;
      g = "";
      j = g;
      k = f;
      u.setVisibility(0);
      if (a == null) {
        w();
      }
    }
    else
    {
      w = getSupportFragmentManager();
      s();
      t();
      y = ReviewOverviewFragment.a(q);
      x = new ReviewComposeFragment();
      if (b == null) {
        break label426;
      }
      x.a(b);
    }
    label426:
    while ((a == null) || (a.N() <= 0))
    {
      return;
      u();
      break;
    }
    x.a(a.aD());
  }
  
  public void onDestroy()
  {
    super.onDestroy();
    if (A != null)
    {
      A.a(true);
      A.a(null);
    }
    if (B != null)
    {
      B.a(true);
      B.a(null);
    }
    if (C != null)
    {
      C.a(true);
      C.a(null);
    }
    if (z != null)
    {
      z.a(true);
      z.a(null);
    }
  }
  
  public void onError(ApiRequest<?, ?, ?> paramApiRequest, YelpException paramYelpException)
  {
    if (((paramYelpException instanceof ApiException)) && (((ApiException)paramYelpException).getResultCode() == 11))
    {
      startActivity(ActivityConfirmAccount.a(this, 2131165703));
      finish();
      return;
    }
    u.setVisibility(8);
    v = getErrorPanel();
    v.a(ErrorType.getTypeFromException(paramYelpException));
    v.setVisibility(0);
    a(getString(2131165847), false);
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
  
  protected void onPause()
  {
    super.onPause();
    freezeRequest("start", A);
    freezeRequest("delete", B);
    freezeRequest("business", z);
    freezeRequest("save_draft", C);
  }
  
  protected void onResume()
  {
    super.onResume();
    A = ((ec)thawRequest("start", A, this));
    B = ((ds)thawRequest("delete", B, F));
    z = ((af)thawRequest("business", z, E));
    C = ((el)thawRequest("save_draft", C, new a(k(), f)));
  }
  
  public void onSaveInstanceState(Bundle paramBundle)
  {
    if (n)
    {
      paramBundle.putBoolean("is_review_start_complete", n);
      paramBundle.putParcelable("extra_business", a);
      paramBundle.putString("business_id", b);
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
  
  public void q_()
  {
    v.setVisibility(8);
    if (a == null)
    {
      w();
      return;
    }
    u();
  }
  
  private final class a
    implements c.a
  {
    private final String b;
    private final int c;
    
    public a(String paramString, int paramInt)
    {
      b = paramString;
      c = paramInt;
    }
    
    public void a(ApiRequest<?, ?, ?> paramApiRequest, Void paramVoid)
    {
      ActivityReviewWrite.a(ActivityReviewWrite.this, b);
      ActivityReviewWrite.b(ActivityReviewWrite.this, c);
      ActivityReviewWrite.a(ActivityReviewWrite.this, ReviewState.DRAFTED);
      if (ActivityReviewWrite.k(ActivityReviewWrite.this)) {
        ActivityReviewWrite.f(ActivityReviewWrite.this).post(new ActivityReviewWrite.a.1(this));
      }
    }
    
    public void onError(ApiRequest<?, ?, ?> paramApiRequest, YelpException paramYelpException)
    {
      if ((paramYelpException.getMessageResource() != YelpException.YPErrorServerResponse) && (paramYelpException.getMessageResource() != YelpException.YPErrorNotConnectedToInternet)) {
        YelpLog.remoteError(ActivityReviewWrite.this, paramYelpException);
      }
      if (ActivityReviewWrite.k(ActivityReviewWrite.this))
      {
        ActivityReviewWrite.a(ActivityReviewWrite.this, false);
        ActivityReviewWrite.f(ActivityReviewWrite.this).setVisibility(8);
        new AlertDialog.Builder(ActivityReviewWrite.this).setMessage(getString(paramYelpException.getMessageResource())).setPositiveButton(17039370, null).setNegativeButton(2131165883, new ActivityReviewWrite.a.2(this)).show();
      }
    }
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.ui.activities.reviews.ActivityReviewWrite
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */